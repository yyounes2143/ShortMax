package m9;

import android.content.Context;
import android.os.Bundle;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationUnit;
import m9.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LocalOverrideSettings.kt */
@Metadata
/* loaded from: classes5.dex */
public final class b implements i {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final a f62475b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f62476a;

    /* compiled from: LocalOverrideSettings.kt */
    @Metadata
    /* loaded from: classes5.dex */
    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Bundle bundle = appContext.getPackageManager().getApplicationInfo(appContext.getPackageName(), 128).metaData;
        this.f62476a = bundle == null ? Bundle.EMPTY : bundle;
    }

    @Override // m9.i
    @Nullable
    public Double a() {
        if (this.f62476a.containsKey("firebase_sessions_sampling_rate")) {
            return Double.valueOf(this.f62476a.getDouble("firebase_sessions_sampling_rate"));
        }
        return null;
    }

    @Override // m9.i
    @Nullable
    public Boolean b() {
        if (this.f62476a.containsKey("firebase_sessions_enabled")) {
            return Boolean.valueOf(this.f62476a.getBoolean("firebase_sessions_enabled"));
        }
        return null;
    }

    @Override // m9.i
    @Nullable
    public Object c(@NotNull rs.c<? super Unit> cVar) {
        return i.a.a(this, cVar);
    }

    @Override // m9.i
    @Nullable
    public kotlin.time.b d() {
        if (this.f62476a.containsKey("firebase_sessions_sessions_restart_timeout")) {
            return kotlin.time.b.g(kotlin.time.c.s(this.f62476a.getInt("firebase_sessions_sessions_restart_timeout"), DurationUnit.SECONDS));
        }
        return null;
    }
}
