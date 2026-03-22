package com.ss.texturerender.effect.vr.director;

import android.opengl.Matrix;
import android.os.Bundle;
import android.view.Display;
import android.view.GestureDetector;
import android.view.MotionEvent;
/* loaded from: classes6.dex */
public class TouchDirector extends GestureDetector.SimpleOnGestureListener implements IDirector {
    private DeviceOrientation mDeviceOriToScreenOri;
    private DeviceOrientation mDeviceOrientation;
    private Display mDisplay;
    private float mRadius;
    private float[] mRotationMatrix;
    private float mDiffX = 0.0f;
    private float mDiffY = 0.0f;
    private boolean mSensorEnabled = true;

    /* renamed from: com.ss.texturerender.effect.vr.director.TouchDirector$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$ss$texturerender$effect$vr$director$TouchDirector$DeviceOrientation;

        static {
            int[] iArr = new int[DeviceOrientation.values().length];
            $SwitchMap$com$ss$texturerender$effect$vr$director$TouchDirector$DeviceOrientation = iArr;
            try {
                iArr[DeviceOrientation.PORTRAIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ss$texturerender$effect$vr$director$TouchDirector$DeviceOrientation[DeviceOrientation.LANDSCAPE_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ss$texturerender$effect$vr$director$TouchDirector$DeviceOrientation[DeviceOrientation.UPSIDE_DOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ss$texturerender$effect$vr$director$TouchDirector$DeviceOrientation[DeviceOrientation.LANDSCAPE_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public enum DeviceOrientation {
        PORTRAIT,
        LANDSCAPE_LEFT,
        UPSIDE_DOWN,
        LANDSCAPE_RIGHT
    }

    public TouchDirector(Display display) {
        DeviceOrientation deviceOrientation = DeviceOrientation.PORTRAIT;
        this.mDeviceOrientation = deviceOrientation;
        this.mDeviceOriToScreenOri = deviceOrientation;
        this.mDisplay = display;
    }

    public float getDiffX() {
        return this.mDiffX;
    }

    public float getDiffY() {
        return this.mDiffY;
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void getView(float[] fArr, int i10) {
        System.arraycopy(this.mRotationMatrix, 0, fArr, i10, fArr.length - i10);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        float f12 = this.mRadius;
        float f13 = (float) (((f10 / f12) / 3.141592653589793d) * 180.0d);
        float f14 = (float) (((f11 / f12) / 3.141592653589793d) * 180.0d);
        if (!this.mSensorEnabled) {
            this.mDiffX += f14;
            this.mDiffY += f13;
            return true;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$ss$texturerender$effect$vr$director$TouchDirector$DeviceOrientation[this.mDeviceOriToScreenOri.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        this.mDiffX -= f13;
                        this.mDiffY += f14;
                    }
                } else {
                    this.mDiffX -= f14;
                    this.mDiffY -= f13;
                }
            } else {
                this.mDiffX += f13;
                this.mDiffY -= f14;
            }
        } else {
            this.mDiffX += f14;
            this.mDiffY += f13;
        }
        return true;
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void reset() {
        this.mDiffX = 0.0f;
        this.mDiffY = 0.0f;
    }

    public void setRadius(float f10) {
        this.mRadius = f10;
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void start() {
        float[] fArr = new float[16];
        this.mRotationMatrix = fArr;
        Matrix.setIdentityM(fArr, 0);
    }

    public void updateDeviceOrientation(int i10, boolean z10) {
        this.mSensorEnabled = z10;
        if ((i10 >= 315 && i10 < 360) || (i10 >= 0 && i10 < 45)) {
            this.mDeviceOrientation = DeviceOrientation.PORTRAIT;
        } else if (i10 >= 45 && i10 < 135) {
            this.mDeviceOrientation = DeviceOrientation.LANDSCAPE_RIGHT;
        } else if (i10 >= 135 && i10 < 225) {
            this.mDeviceOrientation = DeviceOrientation.UPSIDE_DOWN;
        } else if (i10 >= 225 && i10 < 315) {
            this.mDeviceOrientation = DeviceOrientation.LANDSCAPE_LEFT;
        }
        if (this.mDisplay != null) {
            int ordinal = this.mDeviceOrientation.ordinal() - this.mDisplay.getRotation();
            if (ordinal < 0) {
                ordinal += DeviceOrientation.values().length;
            }
            this.mDeviceOriToScreenOri = DeviceOrientation.values()[ordinal];
        }
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void stop() {
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirector
    public void setParam(Bundle bundle) {
    }
}
