package com.inmobi.media;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class gf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicBoolean f24781a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f24782b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f24783c;

    /* renamed from: d  reason: collision with root package name */
    public final WeakReference f24784d;

    public gf(lf visibilityTracker, AtomicBoolean isPaused) {
        Intrinsics.checkNotNullParameter(visibilityTracker, "visibilityTracker");
        Intrinsics.checkNotNullParameter(isPaused, "isPaused");
        this.f24781a = isPaused;
        this.f24782b = new ArrayList();
        this.f24783c = new ArrayList();
        this.f24784d = new WeakReference(visibilityTracker);
    }

    @Override // java.lang.Runnable
    public final void run() {
        hf hfVar;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        Bitmap bitmap;
        if (this.f24781a.get()) {
            return;
        }
        lf lfVar = (lf) this.f24784d.get();
        if (lfVar != null) {
            lfVar.f25012m = false;
            for (Map.Entry entry : lfVar.f25000a.entrySet()) {
                View view = (View) entry.getKey();
                Cif cif = (Cif) entry.getValue();
                int i18 = cif.f24863a;
                View view2 = cif.f24865c;
                Object obj = cif.f24866d;
                byte b10 = lfVar.f25003d;
                boolean z10 = true;
                if (b10 == 1) {
                    ff ffVar = lfVar.f25001b;
                    if (ffVar.a(view2, view, i18, obj) && ffVar.a(view, view, i18)) {
                        this.f24782b.add(view);
                    } else {
                        this.f24783c.add(view);
                    }
                } else if (b10 == 2) {
                    ff ffVar2 = lfVar.f25001b;
                    Intrinsics.checkNotNull(ffVar2, "null cannot be cast to non-null type com.inmobi.ads.viewability.inmobi.HtmlPollingVisibilityTracker.HtmlVisibilityChecker");
                    P4 p42 = (P4) ((W4) ffVar2);
                    boolean a10 = p42.a(view2, view, i18, obj);
                    boolean a11 = p42.a(view, view, i18);
                    Intrinsics.checkNotNullParameter(view, "view");
                    if (view instanceof GestureDetector$OnGestureListenerC2941ec) {
                        Rect rect = new Rect();
                        if (view.getGlobalVisibleRect(rect)) {
                            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) view;
                            int[] iArr = new int[2];
                            gestureDetector$OnGestureListenerC2941ec.getLocationInWindow(iArr);
                            int[] viewableFrameArray = gestureDetector$OnGestureListenerC2941ec.getViewableFrameArray();
                            int i19 = iArr[0];
                            if (viewableFrameArray != null) {
                                i10 = viewableFrameArray[0];
                            } else {
                                i10 = 0;
                            }
                            int i20 = i19 + i10;
                            int i21 = iArr[1];
                            if (viewableFrameArray != null) {
                                i11 = viewableFrameArray[1];
                            } else {
                                i11 = 0;
                            }
                            int i22 = i21 + i11;
                            if (viewableFrameArray != null) {
                                i12 = viewableFrameArray[2];
                            } else {
                                i12 = 0;
                            }
                            int i23 = i20 + i12;
                            if (viewableFrameArray != null) {
                                i13 = viewableFrameArray[3];
                            } else {
                                i13 = 0;
                            }
                            if (rect.intersect(new Rect(i20, i22, i23, i13 + i22))) {
                                Bitmap createBitmap = Bitmap.createBitmap(gestureDetector$OnGestureListenerC2941ec.getWidth(), gestureDetector$OnGestureListenerC2941ec.getHeight(), Bitmap.Config.ARGB_8888);
                                Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
                                Canvas canvas = new Canvas(createBitmap);
                                canvas.drawBitmap(createBitmap, 0.0f, 0.0f, new Paint());
                                gestureDetector$OnGestureListenerC2941ec.draw(canvas);
                                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(createBitmap, B2.b(gestureDetector$OnGestureListenerC2941ec.getWidth() / U3.b()), B2.b(gestureDetector$OnGestureListenerC2941ec.getHeight() / U3.b()), true);
                                Intrinsics.checkNotNullExpressionValue(createScaledBitmap, "createScaledBitmap(...)");
                                int[] viewableFrameArray2 = gestureDetector$OnGestureListenerC2941ec.getViewableFrameArray();
                                int width = createScaledBitmap.getWidth();
                                if (viewableFrameArray2 != null) {
                                    i14 = viewableFrameArray2[0];
                                } else {
                                    i14 = 0;
                                }
                                int min = Math.min(width, i14);
                                int height = createScaledBitmap.getHeight();
                                if (viewableFrameArray2 != null) {
                                    i15 = viewableFrameArray2[1];
                                } else {
                                    i15 = 0;
                                }
                                int min2 = Math.min(height, i15);
                                if (viewableFrameArray2 != null) {
                                    i16 = viewableFrameArray2[2];
                                } else {
                                    i16 = 0;
                                }
                                int min3 = Math.min(i16, createScaledBitmap.getWidth() - min);
                                if (viewableFrameArray2 != null) {
                                    i17 = viewableFrameArray2[3];
                                } else {
                                    i17 = 0;
                                }
                                int min4 = Math.min(i17, createScaledBitmap.getHeight() - min2);
                                if (min3 > 0 && min4 > 0) {
                                    bitmap = Bitmap.createBitmap(createScaledBitmap, min, min2, min3, min4);
                                } else {
                                    bitmap = null;
                                }
                                if (bitmap != null) {
                                    int height2 = bitmap.getHeight() * bitmap.getWidth();
                                    int[] iArr2 = new int[height2];
                                    bitmap.getPixels(iArr2, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
                                    int i24 = 0;
                                    for (int i25 = 0; i25 < height2; i25++) {
                                        int i26 = iArr2[i25];
                                        if (i26 > -16777216 && i26 < 0 && (i24 = i24 + 1) >= gestureDetector$OnGestureListenerC2941ec.getMinimumPixelsPainted()) {
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    z10 = false;
                    if (a10 && a11 && z10) {
                        this.f24782b.add(view);
                    } else {
                        this.f24783c.add(view);
                    }
                } else {
                    ff ffVar3 = lfVar.f25001b;
                    if (ffVar3.a(view2, view, i18, obj) && ffVar3.a(view, view, i18)) {
                        this.f24782b.add(view);
                    } else {
                        this.f24783c.add(view);
                    }
                }
            }
        }
        if (lfVar != null) {
            hfVar = lfVar.f25009j;
        } else {
            hfVar = null;
        }
        if (hfVar != null) {
            hfVar.a(this.f24782b, this.f24783c);
        }
        this.f24782b.clear();
        this.f24783c.clear();
        if (lfVar != null) {
            lfVar.d();
        }
    }
}
