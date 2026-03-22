package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.media.A0;
import com.inmobi.media.B0;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class A0 implements InterfaceC3185u1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ B0 f23447a;

    public A0(B0 b02) {
        this.f23447a = b02;
    }

    public static final void a(B0 this$0, byte b10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f23494a.a(this$0.f23496c, false, b10 == 1 ? (short) 78 : b10 == 2 ? (short) 79 : b10 == 3 ? (short) 80 : b10 == 4 ? (short) 81 : b10 == 5 ? (short) 5 : b10 == 6 ? (short) 77 : b10 == 7 ? (short) 31 : b10 == 8 ? (short) 27 : (short) 82);
    }

    public static final void a(B0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f23494a.a(this$0.f23496c, true, (short) 0);
    }

    @Override // com.inmobi.media.InterfaceC3185u1
    public final void a(C3024k assetBatch, final byte b10) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        this.f23447a.f23501h.a(assetBatch, b10);
        B0 b02 = this.f23447a;
        InterfaceC3269z5 interfaceC3269z5 = b02.f23499f;
        if (interfaceC3269z5 != null) {
            String str = b02.f23497d;
            StringBuilder a10 = H6.a(str, "access$getTAG$p(...)", "Notifying failure  to ad unit with placement ID (");
            a10.append(this.f23447a.f23496c);
            a10.append(')');
            ((A5) interfaceC3269z5).b(str, a10.toString());
        }
        Handler handler = new Handler(Looper.getMainLooper());
        final B0 b03 = this.f23447a;
        handler.post(new Runnable() { // from class: ub.b
            @Override // java.lang.Runnable
            public final void run() {
                A0.a(B0.this, b10);
            }
        });
    }

    @Override // com.inmobi.media.InterfaceC3185u1
    public final void a(C3024k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        this.f23447a.f23501h.a(assetBatch);
        B0 b02 = this.f23447a;
        InterfaceC3269z5 interfaceC3269z5 = b02.f23499f;
        if (interfaceC3269z5 != null) {
            String str = b02.f23497d;
            StringBuilder a10 = H6.a(str, "access$getTAG$p(...)", "Notifying ad unit with placement ID (");
            a10.append(this.f23447a.f23496c);
            a10.append(')');
            ((A5) interfaceC3269z5).a(str, a10.toString());
        }
        Handler handler = new Handler(Looper.getMainLooper());
        final B0 b03 = this.f23447a;
        handler.post(new Runnable() { // from class: ub.c
            @Override // java.lang.Runnable
            public final void run() {
                A0.a(B0.this);
            }
        });
    }
}
