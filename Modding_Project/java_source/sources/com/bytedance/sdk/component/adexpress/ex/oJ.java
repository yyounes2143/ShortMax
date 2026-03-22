package com.bytedance.sdk.component.adexpress.ex;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.HardwareRenderer;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.hardware.HardwareBuffer;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import androidx.compose.ui.platform.h1;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import i1.c;
import i1.d;
import i1.e;
import java.lang.reflect.Array;
/* loaded from: classes3.dex */
public class oJ {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.renderscript.BaseObj] */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.renderscript.BaseObj, android.renderscript.ScriptIntrinsicBlur] */
    public static Bitmap ZYk(Context context, Bitmap bitmap, int i10) {
        RenderScript renderScript;
        Allocation allocation;
        ?? r22;
        Allocation allocation2;
        com.bytedance.sdk.component.adexpress.oJ.oJ.tB tB;
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap);
            renderScript = RenderScript.create(context);
            if (renderScript == null) {
                try {
                    com.bytedance.sdk.component.adexpress.oJ.oJ.tB tB2 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB();
                    if (tB2 != null && tB2.si() && renderScript != null) {
                        RenderScript.releaseAllContexts();
                    }
                } catch (Throwable th2) {
                    th2.getMessage();
                }
                return null;
            }
            try {
                r22 = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
                try {
                    allocation = Allocation.createFromBitmap(renderScript, bitmap);
                    try {
                        allocation2 = Allocation.createFromBitmap(renderScript, createBitmap);
                        try {
                            r22.setRadius(i10);
                            r22.setInput(allocation);
                            r22.forEach(allocation2);
                            allocation2.copyTo(createBitmap);
                            try {
                                com.bytedance.sdk.component.adexpress.oJ.oJ.tB tB3 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB();
                                if (tB3 != null && tB3.si()) {
                                    RenderScript.releaseAllContexts();
                                    if (allocation != null) {
                                        allocation.destroy();
                                    }
                                    allocation2.destroy();
                                    r22.destroy();
                                }
                            } catch (Throwable th3) {
                                th3.getMessage();
                            }
                            return createBitmap;
                        } catch (Throwable th4) {
                            th = th4;
                            try {
                                th.getMessage();
                                try {
                                    tB = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB();
                                    return tB == null ? null : null;
                                } catch (Throwable th5) {
                                    th5.getMessage();
                                    return null;
                                }
                            } catch (Throwable th6) {
                                try {
                                    com.bytedance.sdk.component.adexpress.oJ.oJ.tB tB4 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB();
                                    if (tB4 != null && tB4.si()) {
                                        if (renderScript != null) {
                                            RenderScript.releaseAllContexts();
                                        }
                                        if (allocation != null) {
                                            allocation.destroy();
                                        }
                                        if (allocation2 != null) {
                                            allocation2.destroy();
                                        }
                                        if (r22 != 0) {
                                            r22.destroy();
                                        }
                                    }
                                } catch (Throwable th7) {
                                    th7.getMessage();
                                }
                                throw th6;
                            }
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        allocation2 = null;
                    }
                } catch (Throwable th9) {
                    th = th9;
                    allocation = null;
                    allocation2 = null;
                }
            } catch (Throwable th10) {
                th = th10;
                allocation = null;
                r22 = allocation;
                allocation2 = r22;
                th.getMessage();
                tB = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB();
                if (tB == null && tB.si()) {
                    if (renderScript != null) {
                        RenderScript.releaseAllContexts();
                    }
                    if (allocation != null) {
                        allocation.destroy();
                    }
                    if (allocation2 != null) {
                        allocation2.destroy();
                    }
                    if (r22 != 0) {
                        r22.destroy();
                        return null;
                    }
                    return null;
                }
            }
        } catch (Throwable th11) {
            th = th11;
            renderScript = null;
            allocation = null;
        }
    }

    public static Bitmap oJ(Context context, Bitmap bitmap, int i10) {
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.round(bitmap.getWidth() * 0.2f), Math.round(bitmap.getHeight() * 0.2f), false);
            if (com.bytedance.sdk.component.adexpress.ex.ex() == 0) {
                return ZYk(context, createScaledBitmap, i10);
            }
            if (com.bytedance.sdk.component.adexpress.ex.ex() == 1) {
                return oJ(createScaledBitmap, i10);
            }
            return ZYk(createScaledBitmap, i10);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Bitmap oJ(Bitmap bitmap, int i10) {
        int[] iArr;
        int i11 = i10;
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i12 = width * height;
            int[] iArr2 = new int[i12];
            bitmap.getPixels(iArr2, 0, width, 0, 0, width, height);
            int i13 = width - 1;
            int i14 = height - 1;
            int i15 = i11 + i11;
            int i16 = i15 + 1;
            int i17 = (i15 + 2) >> 1;
            int i18 = i17 * i17;
            int[] iArr3 = new int[Math.max(width, height)];
            int i19 = i18 * 256;
            int[] iArr4 = new int[i19];
            int[] iArr5 = new int[i12];
            int[] iArr6 = new int[i12];
            int[] iArr7 = new int[i12];
            for (int i20 = 0; i20 < i19; i20++) {
                iArr4[i20] = i20 / i18;
            }
            int[][] iArr8 = (int[][]) Array.newInstance(Integer.TYPE, i16, 3);
            int i21 = i11 + 1;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            while (i22 < height) {
                int i25 = -i11;
                int i26 = 0;
                int i27 = 0;
                int i28 = 0;
                int i29 = 0;
                int i30 = 0;
                int i31 = 0;
                int i32 = 0;
                int i33 = 0;
                int i34 = 0;
                while (i25 <= i11) {
                    int i35 = i14;
                    int i36 = height;
                    int i37 = iArr2[i23 + Math.min(i13, Math.max(i25, 0))];
                    int[] iArr9 = iArr8[i25 + i11];
                    iArr9[0] = (i37 & 16711680) >> 16;
                    iArr9[1] = (i37 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                    iArr9[2] = i37 & 255;
                    int abs = i21 - Math.abs(i25);
                    int i38 = iArr9[0];
                    i26 += i38 * abs;
                    int i39 = iArr9[1];
                    i27 += i39 * abs;
                    int i40 = iArr9[2];
                    i28 += abs * i40;
                    if (i25 <= 0) {
                        i30 += i38;
                        i32 += i39;
                        i34 += i40;
                    } else {
                        i29 += i38;
                        i31 += i39;
                        i33 += i40;
                    }
                    i25++;
                    height = i36;
                    i14 = i35;
                }
                int i41 = i14;
                int i42 = height;
                int i43 = i11;
                int i44 = 0;
                while (i44 < width) {
                    iArr5[i23] = iArr4[i26];
                    iArr6[i23] = iArr4[i27];
                    iArr7[i23] = iArr4[i28];
                    int[] iArr10 = iArr8[((i43 - i11) + i16) % i16];
                    int i45 = i26 - i30;
                    int i46 = i27 - i32;
                    int i47 = i28 - i34;
                    int i48 = i30 - iArr10[0];
                    int i49 = i32 - iArr10[1];
                    int i50 = i34 - iArr10[2];
                    if (i22 == 0) {
                        iArr = iArr4;
                        iArr3[i44] = Math.min(i44 + i11 + 1, i13);
                    } else {
                        iArr = iArr4;
                    }
                    int i51 = iArr2[i24 + iArr3[i44]];
                    int i52 = (i51 & 16711680) >> 16;
                    iArr10[0] = i52;
                    int i53 = (i51 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                    iArr10[1] = i53;
                    int i54 = i51 & 255;
                    iArr10[2] = i54;
                    int i55 = i29 + i52;
                    int i56 = i31 + i53;
                    int i57 = i33 + i54;
                    i43 = (i43 + 1) % i16;
                    int[] iArr11 = iArr8[i43 % i16];
                    i26 = i45 + i55;
                    i27 = i46 + i56;
                    i28 = i47 + i57;
                    int i58 = iArr11[0];
                    i29 = i55 - i58;
                    int i59 = iArr11[1];
                    i31 = i56 - i59;
                    int i60 = iArr11[2];
                    i33 = i57 - i60;
                    i30 = i48 + i58;
                    i32 = i49 + i59;
                    i34 = i50 + i60;
                    i23++;
                    i44++;
                    iArr4 = iArr;
                }
                i24 += width;
                i22++;
                height = i42;
                i14 = i41;
            }
            int i61 = i14;
            int i62 = height;
            int[] iArr12 = iArr4;
            int i63 = 0;
            while (i63 < width) {
                int i64 = -i11;
                int i65 = i64 * width;
                int i66 = 0;
                int i67 = 0;
                int i68 = 0;
                int i69 = 0;
                int i70 = 0;
                int i71 = 0;
                int i72 = 0;
                int i73 = 0;
                int i74 = 0;
                while (i64 <= i11) {
                    int[] iArr13 = iArr8[i64 + i11];
                    int[] iArr14 = iArr3;
                    int max = Math.max(0, i65) + i63;
                    int abs2 = i21 - Math.abs(i64);
                    int i75 = iArr5[max];
                    i66 += i75 * abs2;
                    i67 += iArr6[max] * abs2;
                    i68 += iArr7[max] * abs2;
                    iArr13[0] = i75;
                    int i76 = iArr6[max];
                    iArr13[1] = i76;
                    int i77 = iArr7[max];
                    iArr13[2] = i77;
                    if (i64 <= 0) {
                        i70 += i75;
                        i72 += i76;
                        i74 += i77;
                    } else {
                        i69 += i75;
                        i71 += i76;
                        i73 += i77;
                    }
                    int i78 = i61;
                    if (i64 < i78) {
                        i65 += width;
                    }
                    i64++;
                    i61 = i78;
                    iArr3 = iArr14;
                }
                int[] iArr15 = iArr3;
                int i79 = i61;
                int i80 = i11;
                int i81 = i63;
                int i82 = i62;
                int i83 = 0;
                while (i83 < i82) {
                    iArr2[i81] = (iArr2[i81] & ViewCompat.MEASURED_STATE_MASK) | (iArr12[i66] << 16) | (iArr12[i67] << 8) | iArr12[i68];
                    int[] iArr16 = iArr8[((i80 - i11) + i16) % i16];
                    int i84 = i66 - i70;
                    int i85 = i67 - i72;
                    int i86 = i68 - i74;
                    int i87 = i70 - iArr16[0];
                    int i88 = i72 - iArr16[1];
                    int i89 = i74 - iArr16[2];
                    if (i63 == 0) {
                        iArr15[i83] = Math.min(i83 + i21, i79) * width;
                    }
                    int i90 = iArr15[i83] + i63;
                    int i91 = iArr5[i90];
                    iArr16[0] = i91;
                    int i92 = iArr6[i90];
                    iArr16[1] = i92;
                    int i93 = iArr7[i90];
                    iArr16[2] = i93;
                    int i94 = i69 + i91;
                    int i95 = i71 + i92;
                    int i96 = i73 + i93;
                    i66 = i84 + i94;
                    i67 = i85 + i95;
                    i68 = i86 + i96;
                    i80 = (i80 + 1) % i16;
                    int[] iArr17 = iArr8[i80];
                    int i97 = iArr17[0];
                    i69 = i94 - i97;
                    int i98 = iArr17[1];
                    i71 = i95 - i98;
                    int i99 = iArr17[2];
                    i73 = i96 - i99;
                    i70 = i87 + i97;
                    i72 = i88 + i98;
                    i74 = i89 + i99;
                    i81 += width;
                    i83++;
                    i11 = i10;
                }
                i63++;
                i11 = i10;
                i62 = i82;
                i61 = i79;
                iArr3 = iArr15;
            }
            bitmap.setPixels(iArr2, 0, width, 0, 0, width, i62);
            return bitmap;
        } catch (Throwable th2) {
            th2.getMessage();
            return null;
        }
    }

    public static Bitmap ZYk(Bitmap bitmap, int i10) {
        ImageReader newInstance;
        RenderEffect createBlurEffect;
        RecordingCanvas beginRecording;
        HardwareRenderer.FrameRenderRequest createRenderRequest;
        HardwareRenderer.FrameRenderRequest waitForPresent;
        HardwareBuffer hardwareBuffer;
        Bitmap wrapHardwareBuffer;
        try {
            if (Build.VERSION.SDK_INT >= 31) {
                newInstance = ImageReader.newInstance(bitmap.getWidth(), bitmap.getHeight(), 1, 1, 768L);
                d.a();
                RenderNode a10 = h1.a("BlurEffect");
                e.a();
                HardwareRenderer a11 = c.a();
                a11.setSurface(newInstance.getSurface());
                a11.setContentRoot(a10);
                a10.setPosition(0, 0, newInstance.getWidth(), newInstance.getHeight());
                float f10 = i10;
                createBlurEffect = RenderEffect.createBlurEffect(f10, f10, Shader.TileMode.MIRROR);
                a10.setRenderEffect(createBlurEffect);
                beginRecording = a10.beginRecording();
                beginRecording.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                a10.endRecording();
                createRenderRequest = a11.createRenderRequest();
                waitForPresent = createRenderRequest.setWaitForPresent(true);
                waitForPresent.syncAndDraw();
                Image acquireNextImage = newInstance.acquireNextImage();
                hardwareBuffer = acquireNextImage.getHardwareBuffer();
                wrapHardwareBuffer = Bitmap.wrapHardwareBuffer(hardwareBuffer, null);
                hardwareBuffer.close();
                acquireNextImage.close();
                newInstance.close();
                a10.discardDisplayList();
                a11.destroy();
                return wrapHardwareBuffer;
            }
            return oJ(bitmap, i10);
        } catch (Throwable th2) {
            th2.getMessage();
            return oJ(bitmap, i10);
        }
    }
}
