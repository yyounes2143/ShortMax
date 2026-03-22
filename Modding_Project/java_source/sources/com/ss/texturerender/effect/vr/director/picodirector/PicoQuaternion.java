package com.ss.texturerender.effect.vr.director.picodirector;

import com.ss.texturerender.math.Quaternion;
import com.ss.texturerender.math.Vector3d;
import java.util.ArrayList;
/* loaded from: classes6.dex */
public class PicoQuaternion {
    private static Vector3d mCameraForward;
    private static float mFieldView;
    private static ArrayList<Integer> mSubIndexArray = new ArrayList<>();
    private static Quaternion mVRQuaternion;

    public static Vector3d getCameraForward() {
        return mCameraForward;
    }

    public static float getFieldView() {
        return mFieldView;
    }

    public static ArrayList<Integer> getSubIndexArray() {
        return mSubIndexArray;
    }

    public static Quaternion getVRQuaternion() {
        return mVRQuaternion;
    }

    public static void updateVRCameraForaward(float f10, float f11, float f12, float f13) {
        mCameraForward = new Vector3d(f10, f11, f12);
        mFieldView = f13;
    }

    public static void updateVRQuaternion(float f10, float f11, float f12, float f13, int i10) {
        double d10;
        double d11 = f10;
        double d12 = f11;
        if (i10 == 1) {
            d10 = f12;
        } else {
            d10 = -f12;
        }
        mVRQuaternion = new Quaternion(d11, d12, d10, f13);
    }

    public static void updateVRSubIndex(int[] iArr, int i10) {
        mSubIndexArray.clear();
        for (int i11 = 0; i11 < i10; i11++) {
            mSubIndexArray.add(Integer.valueOf(iArr[i11]));
        }
    }
}
