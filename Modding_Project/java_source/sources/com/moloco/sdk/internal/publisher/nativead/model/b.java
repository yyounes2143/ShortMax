package com.moloco.sdk.internal.publisher.nativead.model;

import android.net.Uri;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.publisher.nativead.model.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final a.AbstractC0482a f32854a;

    /* renamed from: b  reason: collision with root package name */
    public final int f32855b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f32856c;

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final String f32857d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull a.AbstractC0482a.C0483a originAsset) {
            super(originAsset, null);
            Intrinsics.checkNotNullParameter(originAsset, "originAsset");
            this.f32857d = originAsset.c();
        }

        @NotNull
        public final String b() {
            return this.f32857d;
        }
    }

    @StabilityInferred(parameters = 0)
    /* renamed from: com.moloco.sdk.internal.publisher.nativead.model.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0484b extends b {
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final Uri f32858d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0484b(@NotNull a.AbstractC0482a.b originAsset, @NotNull Uri precachedAssetUri) {
            super(originAsset, null);
            Intrinsics.checkNotNullParameter(originAsset, "originAsset");
            Intrinsics.checkNotNullParameter(precachedAssetUri, "precachedAssetUri");
            this.f32858d = precachedAssetUri;
        }

        @NotNull
        public final Uri b() {
            return this.f32858d;
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class c extends b {
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final String f32859d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull a.AbstractC0482a.c originAsset) {
            super(originAsset, null);
            Intrinsics.checkNotNullParameter(originAsset, "originAsset");
            this.f32859d = originAsset.c();
        }

        @NotNull
        public final String b() {
            return this.f32859d;
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class d extends b {
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a f32860d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull a.AbstractC0482a.d originAsset, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a vastAd) {
            super(originAsset, null);
            Intrinsics.checkNotNullParameter(originAsset, "originAsset");
            Intrinsics.checkNotNullParameter(vastAd, "vastAd");
            this.f32860d = vastAd;
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a b() {
            return this.f32860d;
        }
    }

    public /* synthetic */ b(a.AbstractC0482a abstractC0482a, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC0482a);
    }

    @NotNull
    public final a.AbstractC0482a a() {
        return this.f32854a;
    }

    public b(a.AbstractC0482a abstractC0482a) {
        this.f32854a = abstractC0482a;
        this.f32855b = abstractC0482a.a();
        this.f32856c = abstractC0482a.b();
    }
}
