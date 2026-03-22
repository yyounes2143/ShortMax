package com.vungle.ads.internal.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.c2;
import vt.r2;
/* compiled from: AppNode.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class AppNode {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String appId;
    @NotNull
    private final String bundle;
    @NotNull
    private final String ver;

    /* compiled from: AppNode.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<AppNode> serializer() {
            return AppNode$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    @c
    public /* synthetic */ AppNode(int i10, String str, String str2, String str3, r2 r2Var) {
        if (7 != (i10 & 7)) {
            c2.a(i10, 7, AppNode$$serializer.INSTANCE.getDescriptor());
        }
        this.bundle = str;
        this.ver = str2;
        this.appId = str3;
    }

    public static /* synthetic */ AppNode copy$default(AppNode appNode, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = appNode.bundle;
        }
        if ((i10 & 2) != 0) {
            str2 = appNode.ver;
        }
        if ((i10 & 4) != 0) {
            str3 = appNode.appId;
        }
        return appNode.copy(str, str2, str3);
    }

    public static final void write$Self(@NotNull AppNode self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.bundle);
        output.encodeStringElement(serialDesc, 1, self.ver);
        output.encodeStringElement(serialDesc, 2, self.appId);
    }

    @NotNull
    public final String component1() {
        return this.bundle;
    }

    @NotNull
    public final String component2() {
        return this.ver;
    }

    @NotNull
    public final String component3() {
        return this.appId;
    }

    @NotNull
    public final AppNode copy(@NotNull String bundle, @NotNull String ver, @NotNull String appId) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(ver, "ver");
        Intrinsics.checkNotNullParameter(appId, "appId");
        return new AppNode(bundle, ver, appId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppNode)) {
            return false;
        }
        AppNode appNode = (AppNode) obj;
        if (Intrinsics.areEqual(this.bundle, appNode.bundle) && Intrinsics.areEqual(this.ver, appNode.ver) && Intrinsics.areEqual(this.appId, appNode.appId)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getAppId() {
        return this.appId;
    }

    @NotNull
    public final String getBundle() {
        return this.bundle;
    }

    @NotNull
    public final String getVer() {
        return this.ver;
    }

    public int hashCode() {
        return (((this.bundle.hashCode() * 31) + this.ver.hashCode()) * 31) + this.appId.hashCode();
    }

    @NotNull
    public String toString() {
        return "AppNode(bundle=" + this.bundle + ", ver=" + this.ver + ", appId=" + this.appId + ')';
    }

    public AppNode(@NotNull String bundle, @NotNull String ver, @NotNull String appId) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(ver, "ver");
        Intrinsics.checkNotNullParameter(appId, "appId");
        this.bundle = bundle;
        this.ver = ver;
        this.appId = appId;
    }

    public static /* synthetic */ void getAppId$annotations() {
    }
}
