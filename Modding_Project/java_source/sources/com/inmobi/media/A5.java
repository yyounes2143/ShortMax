package com.inmobi.media;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class A5 implements InterfaceC3269z5 {

    /* renamed from: a  reason: collision with root package name */
    public Ab f23459a;

    /* renamed from: b  reason: collision with root package name */
    public final Kd f23460b;

    public A5(Context context, double d10, EnumC2868a7 logLevel, boolean z10, boolean z11, int i10, long j10, boolean z12) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        if (!z11) {
            this.f23460b = new Kd();
        }
        if (!z10) {
            Ab logger = new Ab(context, d10, logLevel, j10, i10, z12);
            this.f23459a = logger;
            CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3016j7.f24898a;
            Intrinsics.checkNotNull(logger);
            Intrinsics.checkNotNullParameter(logger, "logger");
            Objects.toString(logger);
            AbstractC3016j7.f24898a.add(new WeakReference(logger));
        }
    }

    public final void a(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Ab ab2 = this.f23459a;
        if (ab2 != null) {
            ab2.a(EnumC2868a7.f24481b, tag, message);
        }
        if (this.f23460b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
        }
    }

    public final void b(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Ab ab2 = this.f23459a;
        if (ab2 != null) {
            ab2.a(EnumC2868a7.f24482c, tag, message);
        }
        if (this.f23460b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
        }
    }

    public final void c(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Ab ab2 = this.f23459a;
        if (ab2 != null) {
            ab2.a(EnumC2868a7.f24480a, tag, message);
        }
        if (this.f23460b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
        }
    }

    public final void d(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Ab ab2 = this.f23459a;
        if (ab2 != null) {
            ab2.a(EnumC2868a7.f24483d, tag, message);
        }
        if (this.f23460b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter("STATE_CHANGE: " + message, "message");
        }
    }

    public final void e(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Ab ab2 = this.f23459a;
        if (ab2 != null) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            Objects.toString(ab2.f23482i);
            if (!ab2.f23482i.get()) {
                ab2.f23481h.put(key, value);
            }
        }
    }

    public final void a(String tag, String message, Exception error) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(error, "error");
        Ab ab2 = this.f23459a;
        if (ab2 != null) {
            EnumC2868a7 enumC2868a7 = EnumC2868a7.f24482c;
            ab2.a(enumC2868a7, tag, message + "\nError: " + ms.d.c(error));
        }
        if (this.f23460b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(error, "error");
        }
    }

    public final void b() {
        Ab ab2 = this.f23459a;
        if (ab2 != null) {
            ab2.a();
        }
    }

    public final void a(boolean z10) {
        Ab ab2 = this.f23459a;
        if (ab2 != null) {
            Objects.toString(ab2.f23482i);
            if (!ab2.f23482i.get()) {
                ab2.f23477d = z10;
            }
        }
        if (z10) {
            return;
        }
        Ab ab3 = this.f23459a;
        if (ab3 == null || !ab3.f23479f.a()) {
            CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3016j7.f24898a;
            AbstractC3000i7.a(this.f23459a);
            this.f23459a = null;
        }
    }

    public final void a() {
        Ab ab2 = this.f23459a;
        if (ab2 != null) {
            ab2.b();
        }
        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3016j7.f24898a;
        AbstractC3000i7.a(this.f23459a);
    }
}
