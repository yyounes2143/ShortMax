package com.inmobi.media;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.inmobi.ads.R;
import com.inmobi.media.C3251y3;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.y3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3251y3 extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    public final byte f25447a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3269z5 f25448b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0040, code lost:
        if (r11 == 8) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x004d A[Catch: Exception -> 0x0071, TryCatch #0 {Exception -> 0x0071, blocks: (B:37:0x0047, B:39:0x004d, B:41:0x005a, B:45:0x0075), top: B:53:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3251y3(android.content.Context r10, byte r11, com.inmobi.media.InterfaceC3269z5 r12) {
        /*
            r9 = this;
            java.lang.String r0 = "CustomView"
            java.lang.String r1 = "null drawable id while creating button - "
            java.lang.String r2 = "new customView - "
            java.lang.String r3 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r3)
            r9.<init>(r10)
            r9.f25447a = r11
            r9.f25448b = r12
            if (r11 != 0) goto L15
            goto L42
        L15:
            r10 = 1
            if (r11 != r10) goto L19
            goto L45
        L19:
            r10 = 2
            if (r11 != r10) goto L1d
            goto L2c
        L1d:
            r10 = 3
            if (r11 != r10) goto L21
            goto L2c
        L21:
            r10 = 4
            if (r11 != r10) goto L25
            goto L2c
        L25:
            r10 = 5
            if (r11 != r10) goto L29
            goto L2c
        L29:
            r10 = 6
            if (r11 != r10) goto L30
        L2c:
            r10 = 30
        L2e:
            r8 = r10
            goto L47
        L30:
            r10 = 9
            if (r11 != r10) goto L35
            goto L42
        L35:
            r10 = 10
            if (r11 != r10) goto L3a
            goto L42
        L3a:
            r10 = 7
            if (r11 != r10) goto L3e
            goto L42
        L3e:
            r10 = 8
            if (r11 != r10) goto L45
        L42:
            r10 = 15
            goto L2e
        L45:
            r10 = 0
            goto L2e
        L47:
            java.lang.Integer r10 = a(r11)     // Catch: java.lang.Exception -> L71
            if (r10 == 0) goto L73
            int r4 = r10.intValue()     // Catch: java.lang.Exception -> L71
            r3 = r9
            r5 = r8
            r6 = r8
            r7 = r8
            r3.a(r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L71
            if (r12 == 0) goto L9f
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L71
            r10.<init>(r2)     // Catch: java.lang.Exception -> L71
            r10.append(r11)     // Catch: java.lang.Exception -> L71
            java.lang.String r11 = " created"
            r10.append(r11)     // Catch: java.lang.Exception -> L71
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Exception -> L71
            com.inmobi.media.A5 r12 = (com.inmobi.media.A5) r12     // Catch: java.lang.Exception -> L71
            r12.c(r0, r10)     // Catch: java.lang.Exception -> L71
            goto L9f
        L71:
            r10 = move-exception
            goto L87
        L73:
            if (r12 == 0) goto L9f
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L71
            r10.<init>(r1)     // Catch: java.lang.Exception -> L71
            r10.append(r11)     // Catch: java.lang.Exception -> L71
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Exception -> L71
            com.inmobi.media.A5 r12 = (com.inmobi.media.A5) r12     // Catch: java.lang.Exception -> L71
            r12.b(r0, r10)     // Catch: java.lang.Exception -> L71
            goto L9f
        L87:
            com.inmobi.media.z5 r11 = r9.f25448b
            if (r11 == 0) goto L92
            com.inmobi.media.A5 r11 = (com.inmobi.media.A5) r11
            java.lang.String r12 = "exception while building customView"
            r11.a(r0, r12, r10)
        L92:
            com.inmobi.media.S5 r11 = com.inmobi.media.S5.f24132a
            java.lang.String r11 = "event"
            com.inmobi.media.f2 r10 = com.inmobi.media.AbstractC3221w5.a(r10, r11)
            com.inmobi.media.E6 r11 = com.inmobi.media.S5.f24135d
            r11.a(r10)
        L9f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3251y3.<init>(android.content.Context, byte, com.inmobi.media.z5):void");
    }

    public static Integer a(byte b10) {
        if (b10 == 0) {
            return Integer.valueOf(R.drawable.im_close_button);
        }
        if (b10 == 1) {
            return Integer.valueOf(R.drawable.im_close_transparent);
        }
        if (b10 == 2) {
            return Integer.valueOf(R.drawable.im_close_icon);
        }
        if (b10 == 3) {
            return Integer.valueOf(R.drawable.im_refresh);
        }
        if (b10 == 4) {
            return Integer.valueOf(R.drawable.im_back);
        }
        if (b10 == 5) {
            return Integer.valueOf(R.drawable.im_forward_active);
        }
        if (b10 == 6) {
            return Integer.valueOf(R.drawable.im_forward_inactive);
        }
        if (b10 == 9) {
            return Integer.valueOf(R.drawable.im_mute);
        }
        if (b10 == 10) {
            return Integer.valueOf(R.drawable.im_unmute);
        }
        if (b10 == 7) {
            return Integer.valueOf(R.drawable.im_play);
        }
        if (b10 == 8) {
            return Integer.valueOf(R.drawable.im_pause);
        }
        return null;
    }

    public final void a(final int i10, final int i11, final int i12, final int i13, final int i14) {
        if (L3.f23796a.H()) {
            Icon.createWithResource(getContext(), i10).loadDrawableAsync(getContext(), new Icon.OnDrawableLoadedListener() { // from class: ub.n8
                @Override // android.graphics.drawable.Icon.OnDrawableLoadedListener
                public final void onDrawableLoaded(Drawable drawable) {
                    C3251y3.a(C3251y3.this, i11, i12, i13, i14, drawable);
                }
            }, ((ExecutorC3096o7) AbstractC3268z4.f25482d.getValue()).f25116a);
        } else {
            ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue()).execute(new Runnable() { // from class: ub.o8
                @Override // java.lang.Runnable
                public final void run() {
                    C3251y3.a(C3251y3.this, i10, i11, i12, i13, i14);
                }
            });
        }
    }

    public static final void a(C3251y3 this$0, int i10, int i11, int i12, int i13, Drawable drawable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (drawable == null) {
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25448b;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("CustomView", "drawable for " + ((int) this$0.f25447a) + " is null");
                return;
            }
            return;
        }
        this$0.setImageDrawable(drawable);
        this$0.setPadding(i10, i11, i12, i13);
    }

    public static final void a(C3251y3 this$0, int i10, int i11, int i12, int i13, int i14) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Drawable drawable = ContextCompat.getDrawable(this$0.getContext(), i10);
        if (drawable == null) {
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25448b;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("CustomView", "CustomView drawable for " + ((int) this$0.f25447a) + " cannot be created");
                return;
            }
            return;
        }
        this$0.a(drawable, i11, i12, i13, i14);
    }

    public final void a(final Drawable drawable, final int i10, final int i11, final int i12, final int i13) {
        post(new Runnable() { // from class: ub.m8
            @Override // java.lang.Runnable
            public final void run() {
                C3251y3.a(C3251y3.this, drawable, i10, i11, i12, i13);
            }
        });
    }

    public static final void a(C3251y3 this$0, Drawable drawable, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(drawable, "$drawable");
        this$0.setImageDrawable(drawable);
        this$0.setPadding(i10, i11, i12, i13);
    }
}
