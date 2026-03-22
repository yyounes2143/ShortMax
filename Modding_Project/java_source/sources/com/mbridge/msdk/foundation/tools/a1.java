package com.mbridge.msdk.foundation.tools;

import android.os.Build;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TouchEventReporter.java */
/* loaded from: classes5.dex */
public class a1 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TouchEventReporter.java */
    /* loaded from: classes5.dex */
    public class a implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        JSONArray f27375a = new JSONArray();

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f27376b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f27377c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ View.OnTouchListener f27378d;

        a(View view, String str, View.OnTouchListener onTouchListener) {
            this.f27376b = view;
            this.f27377c = str;
            this.f27378d = onTouchListener;
        }

        private void a() {
            this.f27375a = new JSONArray();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                a1.b(this.f27375a, motionEvent);
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1) {
                    a1.b(this.f27376b, motionEvent, this.f27375a, this.f27377c);
                    a();
                } else if (actionMasked == 3) {
                    a();
                }
            } else {
                a();
                a1.b(this.f27375a, motionEvent);
                a1.b(this.f27376b, motionEvent, this.f27375a, this.f27377c);
            }
            View.OnTouchListener onTouchListener = this.f27378d;
            if (onTouchListener != null) {
                onTouchListener.onTouch(view, motionEvent);
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view, MotionEvent motionEvent, JSONArray jSONArray, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("targetView", a(view, motionEvent));
            jSONObject.put("eventList", jSONArray);
        } catch (JSONException e10) {
            Log.e("TouchEventReporter", "JSON build error", e10);
        }
        com.mbridge.msdk.foundation.same.report.metrics.c b10 = com.mbridge.msdk.foundation.same.report.metrics.d.b().b(str);
        if (b10 != null) {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("eventList", jSONObject);
            b10.b("m_check_local_c", eVar);
        }
    }

    public static void a(View view, String str, int i10) {
        a(view, str, i10, (View.OnTouchListener) null);
    }

    public static void a(View view, String str, int i10, View.OnTouchListener onTouchListener) {
        if (i10 != 0) {
            if (view == null) {
                return;
            }
            view.setOnTouchListener(new a(view, str, onTouchListener));
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c b10 = com.mbridge.msdk.foundation.same.report.metrics.d.b().b(str);
            if (b10 != null) {
                b10.a(b10.o() + "m_check_local_c");
            }
        } catch (Exception e10) {
            p0.b("TouchEventReporter", e10.getMessage());
        }
        if (onTouchListener == null || view == null) {
            return;
        }
        view.setOnTouchListener(onTouchListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(JSONArray jSONArray, MotionEvent motionEvent) {
        float rawX;
        float rawY;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(CallAppDataKey.KEY_TRACKING_EVENT_NAME, a(motionEvent));
            jSONObject.put("eventTime", String.valueOf(motionEvent.getEventTime()));
            jSONObject.put("downTime", String.valueOf(motionEvent.getDownTime()));
            JSONArray jSONArray2 = new JSONArray();
            for (int i10 = 0; i10 < motionEvent.getPointerCount(); i10++) {
                JSONObject jSONObject2 = new JSONObject();
                if (Build.VERSION.SDK_INT >= 29) {
                    rawX = motionEvent.getRawX(i10);
                    jSONObject2.put(TextureRenderKeys.KEY_IS_X, String.valueOf(rawX));
                    rawY = motionEvent.getRawY(i10);
                    jSONObject2.put(TextureRenderKeys.KEY_IS_Y, String.valueOf(rawY));
                } else {
                    jSONObject2.put(TextureRenderKeys.KEY_IS_X, String.valueOf(motionEvent.getRawX()));
                    jSONObject2.put(TextureRenderKeys.KEY_IS_Y, String.valueOf(motionEvent.getRawY()));
                }
                jSONObject2.put("pressure", String.valueOf(motionEvent.getPressure(i10)));
                jSONObject2.put("size", String.valueOf(motionEvent.getSize(i10)));
                jSONObject2.put("id", motionEvent.getPointerId(i10));
                jSONArray2.put(jSONObject2);
            }
            jSONObject.put("point", jSONArray2);
            jSONArray.put(jSONObject);
        } catch (Exception e10) {
            Log.e("TouchEventReporter", "collectEvent JSON error", e10);
        }
    }

    private static String a(View view, MotionEvent motionEvent) {
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        if (view instanceof ViewGroup) {
            view = a((ViewGroup) view, (int) rawX, (int) rawY);
        }
        return a(view);
    }

    private static String a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 5) {
                            return "pointer_down_" + motionEvent.getPointerId(motionEvent.getActionIndex());
                        } else if (actionMasked != 6) {
                            return "other_" + motionEvent.getActionMasked();
                        } else {
                            return "pointer_up_" + motionEvent.getPointerId(motionEvent.getActionIndex());
                        }
                    }
                    return "cancel";
                }
                return "move";
            }
            return "up";
        }
        return "down";
    }

    private static View a(ViewGroup viewGroup, int i10, int i11) {
        View a10;
        int[] iArr = new int[2];
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getLocationOnScreen(iArr);
                int i12 = iArr[0];
                int i13 = iArr[1];
                int width = childAt.getWidth() + i12;
                int height = childAt.getHeight() + i13;
                if (i10 >= i12 && i10 <= width && i11 >= i13 && i11 <= height) {
                    return (!(childAt instanceof ViewGroup) || (a10 = a((ViewGroup) childAt, i10, i11)) == null) ? childAt : a10;
                }
            }
        }
        return viewGroup;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(android.view.View r3) {
        /*
            java.lang.String r0 = ""
            if (r3 != 0) goto L7
            java.lang.String r3 = "UnknownView"
            return r3
        L7:
            int r1 = r3.getId()     // Catch: java.lang.Exception -> L1b
            r2 = -1
            if (r1 == r2) goto L1b
            android.content.res.Resources r1 = r3.getResources()     // Catch: java.lang.Exception -> L1b
            int r2 = r3.getId()     // Catch: java.lang.Exception -> L1b
            java.lang.String r1 = r1.getResourceEntryName(r2)     // Catch: java.lang.Exception -> L1b
            goto L1c
        L1b:
            r1 = r0
        L1c:
            java.lang.CharSequence r2 = r3.getContentDescription()
            if (r2 == 0) goto L2a
            java.lang.CharSequence r0 = r3.getContentDescription()
            java.lang.String r0 = r0.toString()
        L2a:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r2.append(r3)
            java.lang.String r3 = "#"
            r2.append(r3)
            r2.append(r1)
            r2.append(r3)
            r2.append(r0)
            java.lang.String r3 = r2.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.a1.a(android.view.View):java.lang.String");
    }
}
