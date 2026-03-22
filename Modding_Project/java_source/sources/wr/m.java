package wr;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpMethod.kt */
@Metadata
/* loaded from: classes8.dex */
public final class m {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f70193b = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final m f70194c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final m f70195d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final m f70196e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final m f70197f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final m f70198g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final m f70199h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final m f70200i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final List<m> f70201j;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f70202a;

    /* compiled from: HttpMethod.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final m a() {
            return m.f70194c;
        }

        @NotNull
        public final m b() {
            return m.f70199h;
        }

        @NotNull
        public final m c() {
            return m.f70195d;
        }

        private a() {
        }
    }

    static {
        m mVar = new m(ShareTarget.METHOD_GET);
        f70194c = mVar;
        m mVar2 = new m(ShareTarget.METHOD_POST);
        f70195d = mVar2;
        m mVar3 = new m("PUT");
        f70196e = mVar3;
        m mVar4 = new m("PATCH");
        f70197f = mVar4;
        m mVar5 = new m("DELETE");
        f70198g = mVar5;
        m mVar6 = new m("HEAD");
        f70199h = mVar6;
        m mVar7 = new m("OPTIONS");
        f70200i = mVar7;
        f70201j = CollectionsKt.q(mVar, mVar2, mVar3, mVar4, mVar5, mVar6, mVar7);
    }

    public m(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f70202a = value;
    }

    @NotNull
    public final String d() {
        return this.f70202a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof m) && Intrinsics.areEqual(this.f70202a, ((m) obj).f70202a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f70202a.hashCode();
    }

    @NotNull
    public String toString() {
        return "HttpMethod(value=" + this.f70202a + ')';
    }
}
