package com.inmobi.media;

import android.view.MotionEvent;
import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.inmobi.media.z7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3271z7 {

    /* renamed from: a  reason: collision with root package name */
    public final GestureDetector$OnGestureListenerC2941ec f25489a;

    /* renamed from: b  reason: collision with root package name */
    public final String f25490b;

    /* renamed from: c  reason: collision with root package name */
    public float f25491c;

    /* renamed from: d  reason: collision with root package name */
    public float f25492d;

    /* renamed from: e  reason: collision with root package name */
    public float f25493e;

    /* renamed from: f  reason: collision with root package name */
    public float f25494f;

    /* renamed from: g  reason: collision with root package name */
    public int f25495g;

    /* renamed from: h  reason: collision with root package name */
    public int f25496h;

    /* renamed from: i  reason: collision with root package name */
    public float f25497i;

    /* renamed from: j  reason: collision with root package name */
    public JSONArray f25498j;

    /* renamed from: k  reason: collision with root package name */
    public MotionEvent f25499k;

    /* renamed from: l  reason: collision with root package name */
    public int f25500l;

    public C3271z7(GestureDetector$OnGestureListenerC2941ec mListener) {
        Intrinsics.checkNotNullParameter(mListener, "mListener");
        this.f25489a = mListener;
        this.f25490b = C3271z7.class.getSimpleName();
        this.f25500l = Integer.MAX_VALUE;
        this.f25495g = -1;
        this.f25496h = -1;
    }

    public final void a(MotionEvent endEvent) {
        Integer num;
        float f10;
        float f11;
        float f12;
        Intrinsics.checkNotNullParameter(endEvent, "event");
        int actionMasked = endEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                float f13 = 0.0f;
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked != 5) {
                            if (actionMasked == 6) {
                                String TAG = this.f25490b;
                                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                                endEvent.toString();
                                this.f25496h = -1;
                                if (this.f25497i > 30.0f) {
                                    MotionEvent initialEvent = this.f25499k;
                                    if (initialEvent != null) {
                                        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25489a;
                                        Intrinsics.checkNotNullParameter(this, "movementGestureDetector");
                                        Intrinsics.checkNotNullParameter(initialEvent, "initialEvent");
                                        Intrinsics.checkNotNullParameter(endEvent, "endEvent");
                                        if (!gestureDetector$OnGestureListenerC2941ec.f24672e && gestureDetector$OnGestureListenerC2941ec.getRenderingConfig().getSupportedGestures().contains(3)) {
                                            InterfaceC3269z5 interfaceC3269z5 = gestureDetector$OnGestureListenerC2941ec.f24680i;
                                            if (interfaceC3269z5 != null) {
                                                String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                                                StringBuilder a10 = H6.a(str, "TAG", " Rotation detected ");
                                                a10.append(this.f25497i);
                                                a10.append(" \n ");
                                                a10.append(initialEvent);
                                                a10.append(" \n ");
                                                a10.append(endEvent);
                                                ((A5) interfaceC3269z5).a(str, StringsKt.n(a10.toString()));
                                            }
                                            JSONArray jSONArray = new JSONArray();
                                            jSONArray.put(new JSONArray((Collection) CollectionsKt.q(Integer.valueOf(B2.c(initialEvent.getX())), Integer.valueOf(B2.c(initialEvent.getY())))));
                                            jSONArray.put(new JSONArray((Collection) CollectionsKt.q(Integer.valueOf(B2.c(initialEvent.getX(1))), Integer.valueOf(B2.c(initialEvent.getY(1))))));
                                            jSONArray.put(new JSONArray((Collection) CollectionsKt.q(Integer.valueOf(B2.c(endEvent.getX())), Integer.valueOf(B2.c(endEvent.getY())))));
                                            jSONArray.put(new JSONArray((Collection) CollectionsKt.q(Integer.valueOf(B2.c(endEvent.getX(1))), Integer.valueOf(B2.c(endEvent.getY(1))))));
                                            gestureDetector$OnGestureListenerC2941ec.c("window.imraidview.onGestureDetected('3', '" + jSONArray + "');");
                                        } else {
                                            InterfaceC3269z5 interfaceC3269z52 = gestureDetector$OnGestureListenerC2941ec.f24680i;
                                            if (interfaceC3269z52 != null) {
                                                String TAG2 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                                                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                                                ((A5) interfaceC3269z52).c(TAG2, "Rotation gesture is disabled from config");
                                            }
                                        }
                                    }
                                    this.f25497i = 0.0f;
                                }
                                float x10 = endEvent.getX() - endEvent.getX(1);
                                float y10 = endEvent.getY() - endEvent.getY(1);
                                if (Math.abs(((int) Math.sqrt((y10 * y10) + (x10 * x10))) - this.f25500l) > 500) {
                                    MotionEvent initialEvent2 = this.f25499k;
                                    if (initialEvent2 != null) {
                                        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this.f25489a;
                                        Intrinsics.checkNotNullParameter(this, "movementGestureDetector");
                                        Intrinsics.checkNotNullParameter(initialEvent2, "initialEvent");
                                        Intrinsics.checkNotNullParameter(endEvent, "endEvent");
                                        if (!gestureDetector$OnGestureListenerC2941ec2.f24672e && gestureDetector$OnGestureListenerC2941ec2.getRenderingConfig().getSupportedGestures().contains(4)) {
                                            InterfaceC3269z5 interfaceC3269z53 = gestureDetector$OnGestureListenerC2941ec2.f24680i;
                                            if (interfaceC3269z53 != null) {
                                                String TAG3 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                                                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                                                ((A5) interfaceC3269z53).a(TAG3, StringsKt.n(" onScaleDetected\n " + initialEvent2 + " \n " + endEvent));
                                            }
                                            JSONArray jSONArray2 = new JSONArray();
                                            float f14 = 2;
                                            jSONArray2.put(new JSONArray((Collection) CollectionsKt.q(Integer.valueOf(B2.c((endEvent.getX(1) + endEvent.getX()) / f14)), Integer.valueOf(B2.c((endEvent.getY(1) + endEvent.getY()) / f14)))));
                                            gestureDetector$OnGestureListenerC2941ec2.c("window.imraidview.onGestureDetected('4', '" + jSONArray2 + "');");
                                        } else {
                                            InterfaceC3269z5 interfaceC3269z54 = gestureDetector$OnGestureListenerC2941ec2.f24680i;
                                            if (interfaceC3269z54 != null) {
                                                String TAG4 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                                                Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                                                ((A5) interfaceC3269z54).c(TAG4, "Pinch gesture is disabled from config");
                                            }
                                        }
                                    }
                                    this.f25500l = Integer.MAX_VALUE;
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        String TAG5 = this.f25490b;
                        Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                        endEvent.toString();
                        this.f25496h = endEvent.getPointerId(endEvent.getActionIndex());
                        this.f25499k = MotionEvent.obtain(endEvent);
                        int findPointerIndex = endEvent.findPointerIndex(this.f25495g);
                        int findPointerIndex2 = endEvent.findPointerIndex(this.f25496h);
                        if (findPointerIndex >= 0) {
                            this.f25493e = endEvent.getX(findPointerIndex);
                            this.f25494f = endEvent.getY(findPointerIndex);
                        } else {
                            S5 s52 = S5.f24132a;
                            C2947f2 event = new C2947f2(new IllegalArgumentException("Index for mPtrID1=" + this.f25495g + " is " + findPointerIndex + " | Pointer count=" + endEvent.getPointerCount()));
                            Intrinsics.checkNotNullParameter(event, "event");
                            S5.f24135d.a(event);
                        }
                        if (findPointerIndex2 >= 0) {
                            this.f25491c = endEvent.getX(findPointerIndex2);
                            this.f25492d = endEvent.getY(findPointerIndex2);
                        } else {
                            S5 s53 = S5.f24132a;
                            C2947f2 event2 = new C2947f2(new IllegalArgumentException("Index for mPtrID2=" + this.f25496h + " is " + findPointerIndex2 + " | Pointer count=" + endEvent.getPointerCount()));
                            Intrinsics.checkNotNullParameter(event2, "event");
                            S5.f24135d.a(event2);
                        }
                        float f15 = this.f25493e - this.f25491c;
                        float f16 = this.f25494f - this.f25492d;
                        this.f25500l = (int) Math.sqrt((f16 * f16) + (f15 * f15));
                        return;
                    }
                    String TAG6 = this.f25490b;
                    Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
                    endEvent.toString();
                    this.f25495g = -1;
                    this.f25496h = -1;
                    return;
                }
                JSONArray jSONArray3 = this.f25498j;
                int i10 = this.f25495g;
                if (i10 != -1 && this.f25496h != -1) {
                    int findPointerIndex3 = endEvent.findPointerIndex(i10);
                    int findPointerIndex4 = endEvent.findPointerIndex(this.f25496h);
                    if (findPointerIndex3 >= 0) {
                        f11 = endEvent.getX(findPointerIndex3);
                        f10 = endEvent.getY(findPointerIndex3);
                    } else {
                        S5 s54 = S5.f24132a;
                        C2947f2 event3 = new C2947f2(new IllegalArgumentException("Index for mPtrID1=" + this.f25495g + " is " + findPointerIndex3 + " | Pointer count=" + endEvent.getPointerCount()));
                        Intrinsics.checkNotNullParameter(event3, "event");
                        S5.f24135d.a(event3);
                        f10 = 0.0f;
                        f11 = 0.0f;
                    }
                    if (findPointerIndex4 >= 0) {
                        float x11 = endEvent.getX(findPointerIndex4);
                        f13 = endEvent.getY(findPointerIndex4);
                        f12 = x11;
                    } else {
                        S5 s55 = S5.f24132a;
                        C2947f2 event4 = new C2947f2(new IllegalArgumentException("Index for mPtrID1=" + this.f25496h + " is " + findPointerIndex4 + " | Pointer count=" + endEvent.getPointerCount()));
                        Intrinsics.checkNotNullParameter(event4, "event");
                        S5.f24135d.a(event4);
                        f12 = 0.0f;
                    }
                    float f17 = this.f25491c;
                    float degrees = ((float) Math.toDegrees(((float) Math.atan2(this.f25492d - this.f25494f, f17 - this.f25493e)) - ((float) Math.atan2(f13 - f10, f12 - f11)))) % 360;
                    if (degrees < -180.0f) {
                        degrees += 360.0f;
                    }
                    if (degrees > 180.0f) {
                        degrees -= 360.0f;
                    }
                    this.f25497i = Math.abs(degrees);
                    return;
                } else if (i10 != -1 && jSONArray3 != null && jSONArray3.length() > 0 && jSONArray3.length() < 50) {
                    try {
                        int c10 = B2.c(endEvent.getX());
                        int c11 = B2.c(endEvent.getY());
                        JSONArray jSONArray4 = jSONArray3.getJSONArray(jSONArray3.length() - 1);
                        JSONArray jSONArray5 = new JSONArray((Collection) CollectionsKt.q(Integer.valueOf(c10), Integer.valueOf(c11)));
                        float f18 = jSONArray4.getInt(0) - jSONArray5.getInt(0);
                        float f19 = jSONArray4.getInt(1) - jSONArray5.getInt(1);
                        if (((int) Math.sqrt((f19 * f19) + (f18 * f18))) > 100) {
                            jSONArray3.put(jSONArray5);
                            return;
                        }
                        return;
                    } catch (JSONException unused) {
                        return;
                    }
                } else {
                    return;
                }
            }
            String TAG7 = this.f25490b;
            Intrinsics.checkNotNullExpressionValue(TAG7, "TAG");
            endEvent.toString();
            this.f25495g = -1;
            JSONArray jSONArray6 = this.f25498j;
            if (jSONArray6 != null && jSONArray6.length() > 5) {
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec3 = this.f25489a;
                Intrinsics.checkNotNullParameter(this, "movementGestureDetector");
                if (!gestureDetector$OnGestureListenerC2941ec3.f24672e && gestureDetector$OnGestureListenerC2941ec3.getRenderingConfig().getSupportedGestures().contains(2)) {
                    InterfaceC3269z5 interfaceC3269z55 = gestureDetector$OnGestureListenerC2941ec3.f24680i;
                    if (interfaceC3269z55 != null) {
                        String str2 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                        StringBuilder a11 = H6.a(str2, "TAG", "onPanDetected\n ");
                        JSONArray jSONArray7 = this.f25498j;
                        if (jSONArray7 != null) {
                            num = Integer.valueOf(jSONArray7.length());
                        } else {
                            num = null;
                        }
                        a11.append(num);
                        a11.append(" \n ");
                        a11.append(this.f25498j);
                        ((A5) interfaceC3269z55).a(str2, StringsKt.n(a11.toString()));
                    }
                    gestureDetector$OnGestureListenerC2941ec3.c("window.imraidview.onGestureDetected('2', '" + this.f25498j + "');");
                } else {
                    InterfaceC3269z5 interfaceC3269z56 = gestureDetector$OnGestureListenerC2941ec3.f24680i;
                    if (interfaceC3269z56 != null) {
                        String TAG8 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                        Intrinsics.checkNotNullExpressionValue(TAG8, "TAG");
                        ((A5) interfaceC3269z56).c(TAG8, "Pan gesture is disabled from config");
                    }
                }
                this.f25498j = new JSONArray();
                return;
            }
            return;
        }
        String TAG9 = this.f25490b;
        Intrinsics.checkNotNullExpressionValue(TAG9, "TAG");
        endEvent.toString();
        this.f25495g = endEvent.getPointerId(endEvent.getActionIndex());
        this.f25498j = new JSONArray();
        JSONArray jSONArray8 = new JSONArray((Collection) CollectionsKt.q(Integer.valueOf(B2.c(endEvent.getX())), Integer.valueOf(B2.c(endEvent.getY()))));
        JSONArray jSONArray9 = this.f25498j;
        if (jSONArray9 != null) {
            jSONArray9.put(jSONArray8);
        }
    }
}
