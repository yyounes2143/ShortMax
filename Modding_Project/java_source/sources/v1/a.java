package v1;

import android.content.Context;
import android.os.Bundle;
import com.facebook.appevents.h0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GpsDebugLogger.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final C0946a f68647b = new C0946a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f68648c;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final h0 f68649a;

    /* compiled from: GpsDebugLogger.kt */
    @Metadata
    /* renamed from: v1.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0946a {
        public /* synthetic */ C0946a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0946a() {
        }
    }

    static {
        boolean z10;
        if (Random.f61065a.e() <= 1.0E-4d) {
            z10 = true;
        } else {
            z10 = false;
        }
        f68648c = z10;
    }

    public a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f68649a = new h0(context);
    }

    private final boolean a(String str) {
        if (str == null) {
            return false;
        }
        return StringsKt.b0(str, "gps", false, 2, null);
    }

    public final void b(@Nullable String str, @Nullable Bundle bundle) {
        if (f68648c && a(str)) {
            this.f68649a.g(str, bundle);
        }
    }
}
