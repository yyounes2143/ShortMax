package androidx.privacysandbox.ads.adservices.appsetid;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppSetId.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAppSetId.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSetId.kt\nandroidx/privacysandbox/ads/adservices/appsetid/AppSetId\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"})
/* loaded from: classes2.dex */
public final class AppSetId {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int SCOPE_APP = 1;
    public static final int SCOPE_DEVELOPER = 2;
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f1571id;
    private final int scope;

    /* compiled from: AppSetId.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AppSetId(@NotNull String id2, int i10) {
        Intrinsics.checkNotNullParameter(id2, "id");
        this.f1571id = id2;
        this.scope = i10;
        if (i10 != 1 && i10 != 2) {
            throw new IllegalArgumentException("Scope undefined.");
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppSetId)) {
            return false;
        }
        AppSetId appSetId = (AppSetId) obj;
        if (Intrinsics.areEqual(this.f1571id, appSetId.f1571id) && this.scope == appSetId.scope) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getId() {
        return this.f1571id;
    }

    public final int getScope() {
        return this.scope;
    }

    public int hashCode() {
        return (this.f1571id.hashCode() * 31) + Integer.hashCode(this.scope);
    }

    @NotNull
    public String toString() {
        String str;
        if (this.scope == 1) {
            str = "SCOPE_APP";
        } else {
            str = "SCOPE_DEVELOPER";
        }
        return "AppSetId: id=" + this.f1571id + ", scope=" + str;
    }
}
