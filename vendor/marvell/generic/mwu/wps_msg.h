/** @file wps_msg.h
 *  @brief This file contains definition for WPS Messages.
 *
 * Copyright (C) 2011 Marvell International Ltd., All Rights Reserved
 *
 * MARVELL CONFIDENTIAL
 * The source code contained or described herein and all documents related to
 * the source code ("Material") are owned by Marvell International Ltd or its
 * suppliers or licensors. Title to the Material remains with Marvell International Ltd
 * or its suppliers and licensors. The Material contains trade secrets and
 * proprietary and confidential information of Marvell or its suppliers and
 * licensors. The Material is protected by worldwide copyright and trade secret
 * laws and treaty provisions. No part of the Material may be used, copied,
 * reproduced, modified, published, uploaded, posted, transmitted, distributed,
 * or disclosed in any way without Marvell's prior express written permission.
 *
 * No license under any patent, copyright, trade secret or other intellectual
 * property right is granted to or conferred upon you by disclosure or delivery
 * of the Materials, either expressly, by implication, inducement, estoppel or
 * otherwise. Any license under such intellectual property rights must be
 * express and approved by Marvell in writing.
 *
 */

#ifndef WPS_MSG_H
#define WPS_MSG_H

#include <stdio.h>
#include <net/if.h>  /* IFNAMSIZ */

#include "wps_def.h"
#include "wifidir/wifidir.h" /* for struct wifidir_cfg */

#ifndef __ATTRIB_PACK__
#define __ATTRIB_PACK__  __attribute__((packed))
#endif

/** enum : WPS attribute type */
typedef enum
{
    SC_AP_Channel = 0x1001,
    SC_Association_State = 0x1002,
    SC_Authentication_Type = 0x1003,
    SC_Authentication_Type_Flags = 0x1004,
    SC_Authenticator = 0x1005,
    SC_Config_Methods = 0x1008,
    SC_Configuration_Error = 0x1009,
    SC_Confirmation_URL4 = 0x100A,
    SC_Confirmation_URL6 = 0x100B,
    SC_Connection_Type = 0x100C,
    SC_Connection_Type_Flags = 0x100D,
    SC_Credential = 0x100E,
    SC_Device_Name = 0x1011,
    SC_Device_Password_ID = 0x1012,
    SC_E_Hash1 = 0x1014,
    SC_E_Hash2 = 0x1015,
    SC_E_SNonce1 = 0x1016,
    SC_E_SNonce2 = 0x1017,
    SC_Encrypted_Settings = 0x1018,
    SC_Encryption_Type = 0X100F,
    SC_Encryption_Type_Flags = 0x1010,
    SC_Enrollee_Nonce = 0x101A,
    SC_Feature_ID = 0x101B,
    SC_Identity = 0X101C,
    SC_Identity_Proof = 0X101D,
    SC_Key_Wrap_Authenticator = 0X101E,
    SC_Key_Identifier = 0X101F,
    SC_MAC_Address = 0x1020,
    SC_Manufacturer = 0x1021,
    SC_Message_Type = 0x1022,
    SC_Model_Name = 0x1023,
    SC_Model_Number = 0x1024,
    SC_Network_Index = 0x1026,
    SC_Network_Key = 0x1027,
    SC_Network_Key_Index = 0x1028,
    SC_New_Device_Name = 0x1029,
    SC_New_Password = 0x102A,
    SC_OOB_Device_Password = 0X102C,
    SC_OS_Version = 0X102D,
    SC_Power_Level = 0X102F,
    SC_PSK_Current = 0x1030,
    SC_PSK_Max = 0x1031,
    SC_Public_Key = 0x1032,
    SC_Radio_Enabled = 0x1033,
    SC_Reboot = 0x1034,
    SC_Registrar_Current = 0x1035,
    SC_Registrar_Established = 0x1036,
    SC_Registrar_List = 0x1037,
    SC_Registrar_Max = 0x1038,
    SC_Registrar_Nonce = 0x1039,
    SC_Request_Type = 0x103A,
    SC_Response_Type = 0x103B,
    SC_RF_Band = 0X103C,
    SC_R_Hash1 = 0X103D,
    SC_R_Hash2 = 0X103E,
    SC_R_SNonce1 = 0X103F,
    SC_R_SNonce2 = 0x1040,
    SC_Selected_Registrar = 0x1041,
    SC_Serial_Number = 0x1042,
    SC_Simple_Config_State = 0x1044,
    SC_SSID = 0x1045,
    SC_Total_Networks = 0x1046,
    SC_UUID_E = 0x1047,
    SC_UUID_R = 0x1048,
    SC_Vendor_Extension = 0x1049,
    SC_Version = 0x104A,
    SC_X_509_Certificate_Request = 0x104B,
    SC_X_509_Certificate = 0x104C,
    SC_EAP_Identity = 0x104D,
    SC_Message_Counter = 0x104E,
    SC_Public_Key_Hash = 0x104F,
    SC_Rekey_Key = 0x1050,
    SC_Key_Lifetime = 0x1051,
    SC_Permitted_Config_Methods = 0x1052,
    SC_SelectedRegistrarConfigMethods = 0x1053,
    SC_Primary_Device_Type = 0x1054,
    SC_Secondary_Device_Type_List = 0x1055,
    SC_Portable_Device = 0x1056,
    SC_AP_Setup_Locked = 0x1057,
    SC_Application_List = 0x1058,
    SC_EAP_Type = 0x1059,
    SC_Initialization_Vector = 0x1060,
    SC_Key_Provided_Auto = 0x1061,
    SC_8021x_Enabled = 0x1062,
    SC_App_Session_key = 0x1063,
    SC_WEP_Transmit_Key = 0x1064,
    SC_SMPBC_Entry_Acceptable = 0x106D,
    SC_SMPBC_Registration_Ready = 0x106E,
    SC_Dummy_Attribute = 0x2345,
    SC_IPv4_Config_Methods = 0x1073,
        /** New attributes for IPv4 WSC Auto assignment */
    SC_Registrar_Ipv4_Address = 0x106F,
    SC_Ipv4_Subnet_Mask = 0x1070,
    SC_Enrollee_Ipv4_Address = 0x1071,
    SC_Available_Ipv4_Submask_List = 0x1072,
} SIMPLE_CONFIG_ATTRIBUTE;

/** enum : WPS WFA Vendor Ext Subelement type */
typedef enum
{
    SC_Version2 = 0x00,
    SC_AuthorizedMACs = 0x01,
} SIMPLE_CONFIG_WFA_VENDOR_SUBELE;

/** enum : WPS message type */
typedef enum _WPS_MESSAGE_TYPE
{
    WPS_BEACON = 0x01,
    WPS_REQUEST,
    WPS_RESPONSE,
    WPS_M1,
    WPS_M2,
    WPS_M2D,
    WPS_M3,
    WPS_M4,
    WPS_M5,
    WPS_M6,
    WPS_M7,
    WPS_M8,
    WPS_ACK,
    WPS_NACK,
    WPS_DONE
} WPS_MESSAGE_TYPE;

/** enum : WPS op code */
typedef enum
{
    WPS_Start = 0x1,
    WPS_Ack,
    WPS_Nack,
    WPS_Msg,
    WPS_Done,
    WPS_Frag_Ack
} WPS_OP_CODE;

/** enum : WPS state */
typedef enum
{
    WPS_STATE_A = 0,
    WPS_STATE_B,
    WPS_STATE_C,
    WPS_STATE_D,
    WPS_STATE_E,
    WPS_STATE_F,
    WPS_STATE_G,
    WPS_STATE_H,
    WPS_STATE_I
} WPS_STATE;

/** enum : WPS input state */
typedef enum
{
    WPS_INPUT_STATE_NO_INPUT = 0,
    WPS_INPUT_STATE_METHOD,
    WPS_INPUT_STATE_READ_PIN,
    WPS_INPUT_STATE_CONNECT_AP_INDEX,
    WPS_INPUT_STATE_QUIT_CONNECT
} WPS_INPUT_STATE;

typedef struct _EAP_FRAME_HEADER
{
    /** code */
    u8 code;                    /* 1:request 2:response */
    /** identifier */
    u8 identifier;
    /** length */
    u16 length;
    /** type */
    u8 type;                    /* 254 for WPS */
    /** vendor id */
    u8 vendor_id[3];            /* 00 37 2A */
    /** vendor type */
    u8 vendor_type[4];          /* 00 00 00 01 */
    /** op code */
    u8 op_code;
    /** flags */
    u8 flags;
} __ATTRIB_PACK__ EAP_FRAME_HEADER, *PEAP_FRAME_HEADER;

typedef struct _EAPOL_FRAME_HEADER
{
    /** Protocol version */
    u8 protocol_version;
    /** Packet type */
    u8 packet_type;
    /** Length */
    u16 length;
} __ATTRIB_PACK__ EAPOL_FRAME_HEADER, *PEAPOL_FRAME_HEADER;

typedef struct _TLV_DATA_HEADER
{
    /** TLV type */
    u16 type;
    /** TLV length */
    u16 length;
} __ATTRIB_PACK__ TLV_DATA_HEADER, *PTLV_DATA_HEADER;
typedef struct _SUBELE_DATA_HEADER
{
    /** SUBELE type */
    u8 type;
    /** SUBELE length */
    u8 length;
} __ATTRIB_PACK__ SUBELE_DATA_HEADER, *PSUBELE_DATA_HEADER;

typedef struct _MESSAGE_BUFFER
{
    /** Message length */
    u16 length;
    /** Message */
    u8 message[2048];
} __ATTRIB_PACK__ MESSAGE_BUFFER, *PMESSAGE_BUFFER;

/** Max. no of CREDENTIAL DATA */
#define MAX_NUM_CRDENTIAL   2

typedef struct _CREDENTIAL_DATA
{
    /** Network index */
    u8 network_index;
    /** SSID */
    u8 ssid[32];
    /** SSID length */
    u8 ssid_length;
    /** Authentication type */
    u16 auth_type;
    /** Encryption type */
    u16 encry_type;
    /** Network key index */
    u8 network_key_index;
    /** WEP tranmit key index */
    u8 wep_tx_key_index;
    /** Network key */
    u8 network_key[64];
    /** Network key len */
    u8 network_key_len;
    /** Mac address */
    u8 mac_address[6];
    /** RF bands */
    u8 rf_bands;
} __ATTRIB_PACK__ CREDENTIAL_DATA, *PCREDENTIAL_DATA;

#define WPS_PUB_KEY_LEN   (192)
#define WPS_PRIV_KEY_LEN  (192)
#define WPS_AGREE_KEY_LEN (192)

#define MODEL_NUMBER_LEN  (32)
#define SERIAL_NUMBER_LEN (32)

typedef struct _MESSAGE_ENROLLEE_REGISTRAR
{
    /** version */
    u8 version;
    /** version */
    u8 version2;
    /** UUID */
    u8 wps_uuid[16];
    /** Length of UUID */
    u16 wps_uuid_length;
    /** Public key */
    u8 public_key[WPS_PUB_KEY_LEN];
    /** Private key */
    u8 private_key[WPS_PRIV_KEY_LEN];
    /** Agreed key */
    u8 agreed_key[WPS_AGREE_KEY_LEN];
    /** nonce */
    u8 nonce[16];
    /** Manufacture */
    u8 manufacture[64];
    /** Manufacture length */
    u16 manufacture_length;
    /** Model name */
    u8 model_name[32];
    /** Model name length */
    u16 model_name_length;
    /** Model number */
    u8 model_number[MODEL_NUMBER_LEN];
    /** Model number length */
    u16 model_number_length;
    /** Serial number */
    u8 serial_number[SERIAL_NUMBER_LEN];
    /** Serial number length */
    u16 serial_number_length;
    /** Device name */
    u8 device_name[32];
    /** Device name length */
    u16 device_name_length;
    /** Association state */
    u8 association_state;
    /** Configuration error */
    u8 configuration_error;
    /** OS Version */
    u32 os_version;
    /** e_hash1 */
    u8 e_hash1[32];
    /** e_hash2 */
    u8 e_hash2[32];
    /** r_hash1 */
    u8 r_hash1[32];
    /** r_hash2 */
    u8 r_hash2[32];
    /** e_s1 */
    u8 e_s1[16];
    /** e_s2 */
    u8 e_s2[16];
    /** r_s1 */
    u8 r_s1[16];
    /** r_s2 */
    u8 r_s2[16];
    /** IV */
    u8 IV[16];
    /** device password id */
    u16 device_password_id;
    /** updated device password id */
    u16 updated_device_password_id;
    /** Authentication type flag */
    u16 auth_type_flag;
    /** Encryption type flag */
    u16 encry_type_flag;
    /** Connection type flag */
    u8 connection_type_flag;
    /** Config methods */
    u16 config_methods;
    /** Config state */
    u8 simple_config_state;
    /** Primary device type */
    u8 primary_device_type[8];
    /** RF bands */
    u8 rf_bands;
    /** Authenticator */
    u8 authenticator[8];
    /** Encrypted data */
    u8 encrypted_data[0x800];
    /** Encrypted data length */
    u16 encrypted_data_len;
    /** WRAP raw data */
    u8 wrap_raw_data[0x500];
    /** MAC address */
    u8 mac_address[6];
    /** GO ssid */
    u8 go_ssid[MAX_SSID_LEN + 1];
    /** Credential data */
    CREDENTIAL_DATA cred_data[MAX_NUM_CRDENTIAL];

} __ATTRIB_PACK__ MESSAGE_ENROLLEE_REGISTRAR, *PMESSAGE_ENROLLEE_REGISTRAR;

/** Max WPS_IE length */
#define MAX_WPS_IE_LEN       256
/** Max SSID WPA_IE length */
#define SSID_MAX_WPA_IE_LEN  40
/** Max WIFIDIR_IE length */
#define MAX_WIFIDIR_IE_LEN                256

/**
 * struct wpa_scan_result - Scan results
 *
 * This structure is used as a generic format for scan results from the
 * driver. Each driver interface implementation is responsible for converting
 * the driver or OS specific scan results into this format.
 */
typedef struct driver_scan_result
{
    /** BSSID */
    u8 bssid[ETH_ALEN];
    /** SSID */
    u8 ssid[32];
    /** SSID length */
    size_t ssid_len;
    /** WPA IE */
    u8 wpa_ie[SSID_MAX_WPA_IE_LEN];
    /** WPA IE length */
    size_t wpa_ie_len;
    /** RSN Ie */
    u8 rsn_ie[SSID_MAX_WPA_IE_LEN];
    /** RSN IE length */
    size_t rsn_ie_len;
    /** WPS IE */
    u8 wps_ie[MAX_WPS_IE_LEN];
    /** WPS IE length */
    size_t wps_ie_len;
    /** WIFIDIR IE */
    u8 wifidir_ie[MAX_WIFIDIR_IE_LEN];
    /** WIFIDIR IE length */
    size_t wifidir_ie_len;
    /** Frequency of the channel in MHz (e.g., 2412 = channel 1) */
    int freq;
    /** Capability information field in host byte order */
    u16 caps;
    /** Signal quality */
    int qual;
    /** Noise level */
    int noise;
    /** Signal level */
    int level;
    /** Maximum supported rate */
    int maxrate;
} SCAN_RESULTS, *PSCAN_RESULTS;

typedef struct wps_ssid
{
    /** SSID */
    u8 ssid[32];
    /** SSID Length */
    size_t ssid_len;
    /** BSSID */
    u8 bssid[ETH_ALEN];

    /*
     * mode - IEEE 802.11 operation mode (Infrastructure/IBSS)
     * 0 = infrastructure (Managed) mode, i.e., associate with an AP.
     * 1 = IBSS (ad-hoc, peer-to-peer)
     */
    /** IEEE 802.11 operation mode (Infrastructure/IBSS) */
    int mode;
} WPS_SSID, *PWPS_SSID;

typedef struct wps_l2_info
{
    /** Packet socket for EAPOL frames */
    int fd;
    /** Interface name */
    char ifname[IFNAMSIZ + 1];
    /** Interface index */
    int ifindex;
    /** MAC Address */
    u8 my_mac_addr[6];
    /** callback handler */
    void (*rx_callback) (const u8 * src_addr, const u8 * buf, size_t len);
    /** Flag to decide whether to include layer 2 (Ethernet) header data buffers */
    int l2_hdr;
} WPS_L2_INFO;


typedef struct wifidir_data
{
        /** number of find results */
    int num_find_results;
        /** current Device index */
    int dev_index;
        /** Device found or not */
    int dev_found;
        /** Self Channel List */
    channel_list self_channel_list;
        /** Current Peer Information */
    struct wifidir_peer *current_peer;
} WIFIDIR_DATA, *PWIFIDIR_DATA;


typedef struct wps_data
{
    /** Layer 2 Info */
    WPS_L2_INFO *l2;
    /** event Info */
    int evt_fd;
    /** IO vector */
    void *evt_iov;
    /** event netlink header */
    void *evt_nl_head;
    /** event messsage header */
    void *evt_msg_head;
    /** event destination address */
    void *evt_dest_addr;
    /** WIFIDIR data pointer */
    WIFIDIR_DATA wifidir_data;
    /** MAC Address */
    u8 my_mac_addr[ETH_ALEN];
    /** Interface name */
    char ifname[17];
    /** BSS type */
    int bss_type;
    /** BSSID */
    u8 bssid[ETH_ALEN];
    /** WPS SSID */
    WPS_SSID current_ssid;
    /** Scan results */
    SCAN_RESULTS *scan_results;
    /** number of scan results */
    int num_scan_results;
    /** User abort flag */
    u8 userAbort;
    /** number of EAPOL packets received after the previous association event */
    int eapol_received;
} WPS_DATA, *PWPS_DATA;

/** WPS UUID maximum length */
#define WPS_UUID_MAX_LEN                16

typedef struct _WPS_INFO
{
    /** current Tx msg buffer */
    u8 buffer[2048];
    /** EAP packet ID of peer station */
    u8 peer_id;
    /** EAP packet ID */
    u8 id;
    /** PIN */
    u8 PIN[32];
    /** PIN length */
    u16 PINLen;
    /** Key wrap authenticator */
    u8 key_wrap_authenticator[8];
    /** Authentication key */
    u8 auth_key[32];
    /** Key wrap key */
    u8 key_wrap_key[16];
    /** EMSK */
    u8 emsk[32];
    /** Enrollee private data */
    MESSAGE_ENROLLEE_REGISTRAR enrollee;
    /** Registrar private data */
    MESSAGE_ENROLLEE_REGISTRAR registrar;
    void *dh;
    /** Last message */
    MESSAGE_BUFFER last_message;
    /** Last Tx message, as opposited to the current Tx msg buffer*/
    MESSAGE_BUFFER last_tx_message;
    /** Role for Enrollee or Registrar */
    u8 role;
    /** PIN Generator - Enrollee or Registrar */
    u8 pin_generator;
    /** PIN genrator status*/
    u8 wifidir_pin_generated;
    /** Discovery Role Enrollee or Registrar */
    u8 discovery_role;
    /** WIFIDIR Intended Address */
    u8 wifidir_intended_addr[6];
    /** Mode for BSS or IBSS */
    u8 mode;
    /** WPS current state */
    u8 state;
    /** WPS input state */
    u8 input_state;
    /** State variable to indicate wheather  PIN is entered of method PBC
     * is selected */
    u8 pin_pbc_set;
    /** EAP message sent flag */
    u8 eap_msg_sent;
    /** EAP Identity count */
    u8 eap_identity_count;
    /** WPS message resent count */
    u8 wps_msg_resent_count;
    /** WPS message max retry */
    u8 wps_msg_max_retry;
    /** WPS message timeout */
    u32 wps_msg_timeout;
    /** Flag for timer set */
    u8 set_timer;
    /** Flag for registration completed */
    u8 register_completed;
    /** Power save state of WLAN driver */
    u8 ps_saved;
    /** Flag for restart loop by M2D received */
    u8 restart_by_M2D;
    /** Flag for PBC Auto */
    u8 pbc_auto;
    /** Flag for registration in progress */
    u8 registration_in_progress;
   /** Flag for registration fail */
    u8 registration_fail;
    /** Flag for restart for link lost*/
    u8 restart_link_lost;
    /** Primary Device category*/
    u16 primary_dev_category;
    /** Primary Device subcategory*/
    u16 primary_dev_subcategory;
    /** Read AP config only */
    u8 read_ap_config_only;

#define EAP_FRAG_BUF_SIZE       (1500)
#define EAP_FLAGS_MORE_FRAG     (0x01)
#define EAP_FLAGS_LEN_FIELD     (0x02)
#define EAP_FRAG_THRESHOLD_DEF  (1200)
#define EAP_FRAG_THRESHOLD_MAX  (2300)
#define EAP_FRAG_THRESHOLD_PF    (100)
    u32 frag_thres;
    u8 frag_buf[EAP_FRAG_BUF_SIZE];
    u32 frag_rx_in_prog;
    u32 frag_tx_in_prog;
    u32 frag_msg_tot_len;
    u32 frag_msg_cur_len;

    u32 proto_ext_test;
    u32 tx_frag_test;
    /** WPS state*/
    u8 wps_device_state;
    /** Last received WPS message*/
    s32 last_recv_wps_msg;
    /** Default OOB SSID */
    u8 oob_ssid[32];
    /** OOB SSID length */
    u8 oob_ssid_len;
    /** AP Configuration loading after OOB*/
    u8 config_load_by_oob;
    /** AP Setup locked*/
    u8 wps_ap_setup_locked;
    /** R-Hash failure counter*/
    u8 wps_r_hash_failure_count;
    /** MAC Addresses of Authorized Enrollees */
    u8 auth_enrollee_mac_addr[4 * 6];
    /** Enrollee in Authorized Mac address list*/
    u8 enrollee_in_authorized_mac;
    /** is Device low UI*/
    u8 is_low_ui_device;
    /** NACK error count*/
    u8 nack_error_count;
    /** Invalid Credential received value*/
    u8 invalid_credential;

    /* Our P2P Device capability */
    u8 self_p2p_dev_cap;
    /* Our P2P Group capability */
    u8 self_p2p_grp_cap;

    /* WPS_DATA Global - moved here to add support for multiple interfaces*/
    WPS_DATA wps_data;

} __ATTRIB_PACK__ WPS_INFO, *PWPS_INFO;

/** R-hash faliure count */
#define MAX_R_HASH_FAILURE_COUNT 3
/** R-hash timeout */
#define WPS_R_HASH_TIMEOUT 60
/** AP setup locked timeout */
#define WPS_AP_SETUP_LOCKED_TIMEOUT 60

/** Max authorized enrollee count */
#define MAX_AUTH_ENROLLEE_COUNT 4

/** Max NACK error count */
#define MAX_NACK_ERROR_COUNT 10

typedef struct _SIMPLE_CONFIG_TLV
{
    /** Attribute Type */
    u16 AttributeType;
    /** Data Length */
    u16 DataLength;
    /** Data */
    u8 DATA[1];
} __ATTRIB_PACK__ SIMPLE_CONFIG_TLV, *PSIMPLE_CONFIG_TLV;

typedef struct _PRIMARY_DEVICE_TYPE_MSG
{
    /** Type */
    u16 type;
    /** Length */
    u16 length;
    /** Catagory Id */
    u16 category_id;
    /** OUI Id */
    u8 oui_id[4];
    /** Subcategory Id */
    u16 sub_category_id;
} __ATTRIB_PACK__ PRIMARY_DEVICE_TYPE_MSG, *PPRIMARY_DEVICE_TYPE_MSG;

/** enum: WPS message sent */
typedef enum
{
    WPS_EAPOL_MSG_START = 0x00,
    WPS_EAP_MSG_REQUEST_IDENTITY,
    WPS_EAP_MSG_RESPONSE_IDENTITY,
    WPS_EAP_START,
    WPS_EAP_M1,
    WPS_EAP_M2,
    WPS_EAP_M2D,
    WPS_EAP_M3,
    WPS_EAP_M4,
    WPS_EAP_M5,
    WPS_EAP_M6,
    WPS_EAP_M7,
    WPS_EAP_M8,
    WPS_MSG_ACK,
    WPS_MSG_NACK,
    WPS_MSG_DONE,
    WPS_EAP_MSG_FAIL,
    WPS_MSG_FRAG_ACK,
    WPS_EAP_UNKNOWN
} WPS_MESSAGE_SENT;

/** EAP Type: Identity */
#define EAP_TYPE_IDENTITY  1
/** EAP Type: WPS */
#define EAP_TYPE_WPS       254
/** EAP Packet */
#define EAP_PACKET         0
/** EAP Request */
#define EAP_REQUEST        1
/** EAP Response */
#define EAP_RESPONSE       2
/** EAP Success */
#define EAP_SUCCESS        3
/** EAP Failure */
#define EAP_FAILURE        4
/** EAP WPS Frame header size */
#define SZ_EAP_WPS_FRAME_HEADER   sizeof(EAP_FRAME_HEADER)
/** TLV header size */
#define SZ_TLV_HEADER             sizeof(TLV_DATA_HEADER)
/** SUBELE header size */
#define SZ_SUBELE_HEADER             sizeof(SUBELE_DATA_HEADER)
/** EAP message length size */
#define SZ_EAP_MESSAGE_LENGTH  2
/** WPS version */
#define WPS_VERSION_1DOT0  (0x10)
#define WPS_VERSION_2DOT0  (0x20)
#define WPS_VERSION        WPS_VERSION_2DOT0
/** WPS Enrollee */
#define WPS_ENROLLEE          1
/** WPS Registrar */
#define WPS_REGISTRAR         2
/** WPS Extensions */
#define WPS_ADHOC_EXTENTION   3
/** WPD Extension */
#define WIFIDIR_ROLE              4

/**Pin generator value for display PIN */
#define WIFIDIR_AUTO_DISPLAY_PIN  3
/**Pin generator value for Enter PIN */
#define WIFIDIR_AUTO_ENTER_PIN    4
/** EAPOL start */
#define EAPOL_START        1

/** Authentication Type: open */
#define AUTHENTICATION_TYPE_OPEN          0x0001
/** Authentication Type: WPAPSK */
#define AUTHENTICATION_TYPE_WPAPSK        0x0002
/** Authentication Type: shared */
#define AUTHENTICATION_TYPE_SHARED        0x0004
/** Authentication Type: WPA */
#define AUTHENTICATION_TYPE_WPA           0x0008
/** Authentication Type: WPA2 */
#define AUTHENTICATION_TYPE_WPA2          0x0010
/** Authentication Type: WPA2PSK */
#define AUTHENTICATION_TYPE_WPA2PSK       0x0020

/** Authentication Type: WPA Mixed Mode */
#define AUTHENTICATION_TYPE_WPA_MIXED     (AUTHENTICATION_TYPE_WPAPSK|\
                                           AUTHENTICATION_TYPE_WPA2PSK)

/** Authentication Type: ALL */
#define AUTHENTICATION_TYPE_ALL           0x003F

/** Encryption Type: None */
#define ENCRYPTION_TYPE_NONE              0x0001
/** Encryption Type: WEP */
#define ENCRYPTION_TYPE_WEP               0x0002
/** Encryption Type: TKIP */
#define ENCRYPTION_TYPE_TKIP              0x0004
/** Encryption Type: AES */
#define ENCRYPTION_TYPE_AES               0x0008

/** Encryption Type: AES */
#define ENCRYPTION_TYPE_TKIP_AES_MIXED     (ENCRYPTION_TYPE_TKIP|\
                                            ENCRYPTION_TYPE_AES)

/** Encryption Type: ALL */
#define ENCRYPTION_TYPE_ALL               0x000F

/** Connection Type: ESS */
#define CONNECTION_TYPE_ESS               0x01
/** Connection Type: IBSS */
#define CONNECTION_TYPE_IBSS              0x02
/** Connection Type: ALL */
#define CONNECTION_TYPE_ALL               0x03

/** Config Method: USBA */
#define CONFIG_METHOD_USBA                0x0001
/** Config Method: ETHERNET */
#define CONFIG_METHOD_ETHERNET            0x0002
/** Config Method: LABEL */
#define CONFIG_METHOD_LABEL               0x0004
/** Config Method: DISPLAY */
#define CONFIG_METHOD_DISPLAY             0x0008
/** Config Method: EXTERNAL_NFC */
#define CONFIG_METHOD_EXTERNAL_NFC        0x0010
/** Config Method: INTEGRATED_NFC */
#define CONFIG_METHOD_INTEGRATED_NFC      0x0020
/** Config Method: NFC_INTERFACE */
#define CONFIG_METHOD_NFC_INTERFACE       0x0040
/** Config Method: PUSHBUTTON */
#define CONFIG_METHOD_PUSHBUTTON          0x0080
/** Config Method: KEYPAD */
#define CONFIG_METHOD_KEYPAD              0x0100
/** Config Method: SMPBC */
#define CONFIG_METHOD_SMPBC               0x0880

/** Config error : NO ERROR */
#define CONFIG_ERROR_NO_ERROR             0x0

/** Not configured state */
#define SC_NOT_CONFIGURED_STATE           0x01
/** Configured state */
#define SC_CONFIGURED_STATE               0x02
/** Primary device catagory: COMPUTER */
#define PRIMARY_DEV_CATEGORY_COMPUTER     0x01
/** Primary device subcatagory: PC */
#define PRIMARY_DEV_SUB_CATEGORY_PC       0x01

/** RF: 2.4G */
#define RF_24_G                           0x01
/** RF: 5.0G */
#define RF_50_G                           0x02

/** Response type : Registrar */
#define RESP_TYPE_REGISTRAR               0x02
/** Response type : AP */
#define RESP_TYPE_AP                      0x03
/** Response type : Notifier */
#define RESP_TYPE_NOTIFIER                0x04

/** Request type : Enrollee */
#define REQ_TYPE_ENROLLEE                0x00
/** Request type : Registrar */
#define REQ_TYPE_REGISTRAR               0x02

/** Device password: PIN ID */
#define DEVICE_PASSWORD_ID_PIN            0x0000
/** Device password: Push Button */
#define DEVICE_PASSWORD_PUSH_BUTTON       0x0004
/** Device password: User Specified */
#define DEVICE_PASSWORD_USER_SPECIFIED    0x0001
/** Device password: Registrar Specified */
#define DEVICE_PASSWORD_REG_SPECIFIED     0x0005
/** Device password: SMPBC */
#define DEVICE_PASSWORD_SMPBC             0x0006
/** Size: WPS_NONCE */
#define WPS_NONCE_SIZE                     16
/** Size: DH_PRIME_1536 */
#define SZ_DH_PRIME_1536                   192
/** Size: Public Key  */
#define SZ_PUBLIC_KEY                      192
/** Size:  Private key */
#define SZ_PRIVATE_KEY                     192
/** Size:  DHKEY_SIZE */
#define SZ_DHKEY_SIZE                      32
/** Size:  KDK */
#define SZ_KDK                             32
/** Size:  KDF_TOTAL_BYTE */
#define SZ_KDF_TOTAL_BYTE                  80
/** Size:  AUTH_KEY */
#define SZ_AUTH_KEY                        32
/** Size:  WRAP_KEY */
#define SZ_KEY_WRAP_KEY                    16
/** Size: EMSK */
#define SZ_EMSK                            32
/** Size: HASH_X  */
#define SZ_HASH_X                          16
/** Size: E_S_X */
#define SZ_E_S_X                           16
/** Size: PSK_X */
#define SZ_PSK_X                           16
/** Size: AUTHENTICATOR */
#define SZ_AUTHENTICATOR                   8
/** Size: KWA */
#define SZ_KWA                             8
/** Size: MANUFACTURE */
#define SZ_MANUFACTURE                     64
/** Size: MODEL_NAME */
#define SZ_MODEL_NAME                      32
/** Size: MODEL_NUMBER */
#define SZ_MODEL_NUMBER                    32
/** Size: SERIAL_NUMBER */
#define SZ_SERIAL_NUMBER                   32
/** Size: PRIMARY_DEVICE_TYPE */
#define SZ_PRIMARY_DEVICE_TYPE             8
/** Size: DEVICE_NAME */
#define SZ_DEVICE_NAME                     32
/** Size: OS_VERSION */
#define SZ_OS_VERSION                      4
/** Size: 128BIT_IV */
#define SZ_128BIT_IV                       16
/** Size: HASH */
#define SZ_HASH                            32
/** Size: E_SX */
#define SZ_E_SX                            16
/** Size: PSKX */
#define SZ_PSKX                            16
/** Size: E_HASHX */
#define SZ_E_HASHX                         32
/** Size: WPS_PSK1 */
#define WPS_PSK1                           1
/** Size: WPS_PSK2 */
#define WPS_PSK2                           2
/** Size: 64_BITS */
#define SZ_64_BITS                         8
/** Size: 128_BITS */
#define SZ_128_BITS                        16

/** Size: Version2 */
#define SZ_VERSION2                         1

/** Size: WPS_MSG04 */
#define WPS_MSG04                          0x4
/** Size: WPS_MSG05 */
#define WPS_MSG05                          0x5

/** WPS Message Default Timeout */
#define WPS_MSG_DEFAULT_TIMEOUT    5000 /* ms */
/** WPS Message Short Timeout */
#define WPS_MSG_SHORT_TIMEOUT      3000 /* ms */
/** WPS Message Long Timeout */
#define WPS_MSG_LONG_TIMEOUT      10000 /* ms */
/** WPS Message Maximum Resent */
#define WPS_MSG_MAX_RESENT         30
/** PBC Walk time */
#define PBC_WALK_TIME              120  /* sec */
/** WPS Registration Protocol Timeout */
#define WPS_REGISTRATION_TIME      120  /* sec */

/** EAP fail count */
#define MAX_EAP_FAIL_COUNT 2

/** WPS PBC/SMPBC Session Overlap Error */
#define WPS_SESSION_OVERLAP_ERROR 12

/** default WPS channel*/
#define WPS_DEFAULT_CHANNEL             6

extern int wps_eap_M1_frame_prepare(PWPS_INFO);
extern int wps_eap_M1_frame_process(PWPS_INFO, u8 *, u16);
extern int wps_eap_M2_frame_prepare(PWPS_INFO);
extern int wps_eap_M2_frame_process(PWPS_INFO, u8 *, u16);
extern int wps_eap_M2D_frame_prepare(PWPS_INFO);
extern int wps_eap_M2D_frame_process(PWPS_INFO, u8 *, u16);
extern int wps_eap_M3_frame_prepare(PWPS_INFO);
extern int wps_eap_M3_frame_process(PWPS_INFO, u8 *, u16);
extern int wps_eap_M4_frame_prepare(PWPS_INFO);
extern int wps_eap_M4_frame_process(PWPS_INFO, u8 *, u16);
extern int wps_eap_M5_frame_prepare(PWPS_INFO);
extern int wps_eap_M5_frame_process(PWPS_INFO, u8 *, u16);
extern int wps_eap_M6_frame_prepare(PWPS_INFO);
extern int wps_eap_M6_frame_process(PWPS_INFO, u8 *, u16);
extern int wps_eap_M7_frame_prepare(PWPS_INFO);
extern int wps_eap_M7_frame_process(PWPS_INFO, u8 *, u16);
extern int wps_eap_M8_frame_prepare(PWPS_INFO);
extern int wps_eap_M8_frame_process(PWPS_INFO, u8 *, u16);
extern int wps_eap_response_identity_prepare(PWPS_INFO);
extern int wps_eap_response_identity_process(PWPS_INFO, u8 *, u16);
extern void wps_message_handler(u8 *, u8 *);
extern void wps_eapol_start_handler(WPS_INFO * pwps_info);
extern int wps_nack_message_prepare(PWPS_INFO, u8);
extern int wps_ack_message_prepare(PWPS_INFO);
extern int wps_eap_fail_frame_prepare(PWPS_INFO);
extern int wps_eap_frag_ack_frame_prepare(PWPS_INFO pwps_info);
extern int wps_send_next_fragment(PWPS_INFO pwps_info, WPS_DATA * wps_s);
extern int wps_done_message_prepare(PWPS_INFO);
extern int wps_done_message_process(PWPS_INFO, u8 *, u16);
extern int wps_eap_request_start_prepare(PWPS_INFO);
extern int wps_eap_request_start_process(PWPS_INFO, u8 *, u16);
extern u32 get_wps_pin(PWPS_INFO pwps_info);
extern PWPS_INFO wps_get_private_info(void);
extern void wps_initialize(PWPS_INFO *);
extern int wps_eap_request_identity_prepare(PWPS_INFO);
extern void wps_txTimer_handler(void *);
extern int wps_msg_transmit(PWPS_INFO, u16, u32);
extern int wps_eapol_start_prepare(PWPS_INFO);
extern int wps_nack_message_remap(PWPS_INFO);
extern void wps_registrar_shutdown();
extern void wps_start_registration_timer(PWPS_INFO pwps_info);
extern void wps_registration_pbc_overlap_handler(void *user_data);
extern int wps_maximum_nack_handler(PWPS_INFO pwps_info, WPS_DATA * wps_s);
extern int wps_eap_fail_frame_process(PWPS_INFO, u8 *, u16);
extern int wps_nack_message_process(PWPS_INFO, u8 *, u16);
extern int wps_ack_message_process(PWPS_INFO, u8 *, u16);
extern int wps_dummy(PWPS_INFO, u8 *, u16);
extern int wps_ap_beacon_prepare(u8 selectedRegistrar, u8 * ptr);
extern int wps_ap_probe_response_prepare(u8 selectedRegistrar, u8 * ptr);
extern int wps_ap_assoc_response_prepare(u8 selectedRegistrar, u8 * ptr);
extern int wps_sta_probe_request_prepare(u8 * ptr);
extern int wps_sta_assoc_request_prepare(u8 * ptr);
extern u16 wps_probe_response_device_password_id_parser(u8 *, size_t);
extern int wps_probe_response_uuid_parser(u8 * message, size_t size,
                                          u8 * uuid_e);
extern int wps_probe_response_conf_state_parser(u8 * message, size_t size,
                                                u8 * conf_state);
extern int wps_probe_response_selected_registrar_config_method_parser(u8 *
                                                                      message,
                                                                      size_t
                                                                      size,
                                                                      u16 *
                                                                      config_method);
extern int wps_probe_response_selected_registrar_parser(u8 *message, size_t size,
                                                        u32 *is_true);
extern int wps_probe_response_resp_type_parser(u8 * message, size_t size,
                                               u8 * resp_type);
extern void wps_input_PIN(PWPS_INFO pwps_info);
extern int wps_wlan_check_for_PBC_overlap(PWPS_INFO pwps_info,
                                          WPS_DATA * wps_s);
extern void wps_print_registration_method_menu(WPS_INFO * pwps_info);
extern void wps_generate_PIN(PWPS_INFO pwps_info);
extern char hexc2bin(char chr);
extern u32 a2hex(char *s);
extern int hex2num(s8 c);
extern int wifidircmd_config_download(char *filename, struct wifidir_cfg *cfg);
/**
 *  @brief Generate the PSK from passphrase and ssid generated.
 *  @param pwps_info A pointer to the PWPS_INFO structure
 *
 *  @return   None
 */
void wlan_wifidir_generate_psk(PWPS_INFO pwps_info);

extern int wps_sta_probe_request_prepare(u8 * ptr);
extern void wps_ap_setup_locked_timer_handler(void *user_data);
extern void wps_r_hash_failure_count_timer_handler(void *user_data);
extern int wps_sta_assoc_request_prepare(u8 * ptr);
extern int wps_probe_response_authorized_enrollee_mac_parser(PWPS_INFO
                                                             pwps_info,
                                                             u8 * message,
                                                             u8 size);
extern int wps_state_machine_start(PWPS_INFO pwps_info);
extern void wps_user_abort_handler(int fd, void *context);
extern void wps_registration_time_handler(void *user_data);
extern int wps_write_to_config_file(PWPS_INFO pwps_info);

int wps_wlan_probe_request_ie_config(int flag, short *index);
/**
 *  @brief Process WPS Enrollee PIN mode and PBC user selection operations
 *
 *  @param pwps_info    A pointer to WPS_INFO structure
 *  @param wps_s        A pointer to global WPS structure
 *  @return             WPS_STATUS_SUCCESS--success, otherwise--fail
 */
int wps_enrollee_start(PWPS_INFO pwps_info, WPS_DATA * wps_s);

/**
 *  @brief Process WPS Enrollee Push Button auto detection and connection operations
 *
 *  @param pwps_info    A pointer to WPS_INFO structure
 *  @param wps_s        A pointer to global WPS structure
 *  @return             WPS_STATUS_SUCCESS--success, otherwise--fail
 */
int wps_enrollee_start_PBCAuto(PWPS_INFO pwps_info, WPS_DATA * wps_s);

/**
 *  @brief Process WPS Registrar operations
 *
 *  @param pwps_info    A pointer to WPS_INFO structure
 *  @param wps_s        A pointer to global WPS structure
 *  @return             WPS_STATUS_SUCCESS--success, otherwise--fail
 */
int wps_registrar_start(PWPS_INFO pwps_info, WPS_DATA * wps_s);

#endif