package bc;

import android.annotation.SuppressLint;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContextHolder.kt */
@Metadata
/* loaded from: classes5.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f2592a = new a(null);
    @SuppressLint({"StaticFieldLeak"})
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Context f2593b;

    /* compiled from: ContextHolder.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final Context a() {
            return b.f2593b;
        }

        public final void b(@Nullable Context context) {
            b.f2593b = context;
        }

        private a() {
        }
    }
}
