/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class com_marvell_powersetting_PowerFreq */

#ifndef _Included_com_marvell_powersetting_PowerFreq
#define _Included_com_marvell_powersetting_PowerFreq
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    getCurrentCpuFreq
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_marvell_powersetting_PowerFreq_getCurrentCpuFreq
  (JNIEnv *, jclass);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    getCurrentOtherFreqs
 * Signature: (I)Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_marvell_powersetting_PowerFreq_getCurrentOtherFreqs
  (JNIEnv *, jclass, jint);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    getAllEnabledFreqs
 * Signature: ()[I
 */
JNIEXPORT jintArray JNICALL Java_com_marvell_powersetting_PowerFreq_getAllEnabledFreqs
  (JNIEnv *, jclass);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    getIdleWakelocks
 * Signature: ()[Ljava/lang/String;
 */
JNIEXPORT jobjectArray JNICALL Java_com_marvell_powersetting_PowerFreq_getIdleWakelocks
  (JNIEnv *, jclass);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    getMinFreq
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_marvell_powersetting_PowerFreq_getMinFreq
  (JNIEnv *, jclass);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    getCpufreqStatus
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_marvell_powersetting_PowerFreq_getCpufreqStatus
  (JNIEnv *, jclass);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    getIdleStatus
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_marvell_powersetting_PowerFreq_getIdleStatus
  (JNIEnv *, jclass);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    disableIdle
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_marvell_powersetting_PowerFreq_disableIdle
  (JNIEnv *, jclass);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    enableIdle
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_marvell_powersetting_PowerFreq_enableIdle
  (JNIEnv *, jclass);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    getActiveWakelocks
 * Signature: ()[Ljava/lang/String;
 */
JNIEXPORT jobjectArray JNICALL Java_com_marvell_powersetting_PowerFreq_getActiveWakelocks
  (JNIEnv *, jclass);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    setCpufreqdManual
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_marvell_powersetting_PowerFreq_setCpufreqdManual
  (JNIEnv *, jclass);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    setCpufreqdAuto
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_marvell_powersetting_PowerFreq_setCpufreqdAuto
  (JNIEnv *, jclass);

/*
 * Class:     com_marvell_powersetting_PowerFreq
 * Method:    setProfile
 * Signature: (Ljava/lang/String;)I
 */
JNIEXPORT jint JNICALL Java_com_marvell_powersetting_PowerFreq_setProfile
  (JNIEnv *, jclass, jstring);

#ifdef __cplusplus
}
#endif
#endif