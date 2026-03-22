package com.moloco.sdk.internal.publisher.nativead;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.publisher.NativeAd;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nNativeAdAssetsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdAssetsProvider.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdAssetsProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n1#2:141\n*E\n"})
/* loaded from: classes6.dex */
public final class a implements NativeAd.Assets {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final C0479a f32713k = new C0479a(null);

    /* renamed from: l  reason: collision with root package name */
    public static final int f32714l = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f32715a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final a0 f32716b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.a f32717c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final g0 f32718d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a> f32719e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Function0<Unit> f32720f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public com.moloco.sdk.internal.publisher.nativead.model.d f32721g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final Uri f32722h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public ViewGroup f32723i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public com.moloco.sdk.internal.publisher.nativead.ui.d f32724j;

    /* renamed from: com.moloco.sdk.internal.publisher.nativead.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0479a {
        public /* synthetic */ C0479a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C0479a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(@NotNull Context context, @NotNull a0 viewVisibilityTracker, @NotNull com.moloco.sdk.internal.a viewLifecycleOwner, @NotNull g0 watermark, @NotNull Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a> vastAdPlaylistController) {
        Uri uri;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(viewVisibilityTracker, "viewVisibilityTracker");
        Intrinsics.checkNotNullParameter(viewLifecycleOwner, "viewLifecycleOwner");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(vastAdPlaylistController, "vastAdPlaylistController");
        this.f32715a = context;
        this.f32716b = viewVisibilityTracker;
        this.f32717c = viewLifecycleOwner;
        this.f32718d = watermark;
        this.f32719e = vastAdPlaylistController;
        com.moloco.sdk.internal.publisher.nativead.model.d dVar = this.f32721g;
        if (dVar != null) {
            uri = dVar.c(1);
        } else {
            uri = null;
        }
        this.f32722h = uri;
    }

    public final ViewGroup a(Uri uri) {
        return new com.moloco.sdk.internal.publisher.nativead.ui.c(this.f32715a, uri, this.f32718d, this.f32720f, null, null, 48, null);
    }

    public final com.moloco.sdk.internal.publisher.nativead.ui.d b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a aVar) {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a invoke = this.f32719e.invoke(aVar);
        invoke.d();
        return new com.moloco.sdk.internal.publisher.nativead.ui.d(this.f32715a, invoke, this.f32716b, this.f32717c, this.f32718d, this.f32720f);
    }

    public final void c() {
        com.moloco.sdk.internal.publisher.nativead.ui.d dVar = this.f32724j;
        if (dVar != null) {
            dVar.b();
        }
        this.f32724j = null;
    }

    public final void d(ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        ViewParent parent = viewGroup.getParent();
        if (parent instanceof ViewGroup) {
            viewGroup2 = (ViewGroup) parent;
        } else {
            viewGroup2 = null;
        }
        if (viewGroup2 != null) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.info$default(molocoLogger, "NativeAdAssetsProvider", "Detaching view " + viewGroup.getClass().getSimpleName() + " from parent " + viewGroup2.getClass().getSimpleName(), null, false, 12, null);
            viewGroup2.removeView(viewGroup);
        }
    }

    public final void e(@Nullable com.moloco.sdk.internal.publisher.nativead.model.d dVar) {
        this.f32721g = dVar;
    }

    public final void f(@Nullable Function0<Unit> function0) {
        this.f32720f = function0;
    }

    @Nullable
    public final com.moloco.sdk.internal.publisher.nativead.model.d g() {
        return this.f32721g;
    }

    @Override // com.moloco.sdk.publisher.NativeAd.Assets
    @Nullable
    public String getCallToActionText() {
        com.moloco.sdk.internal.publisher.nativead.model.d dVar = this.f32721g;
        if (dVar != null) {
            return dVar.a(7);
        }
        return null;
    }

    @Override // com.moloco.sdk.publisher.NativeAd.Assets
    @Nullable
    public String getDescription() {
        com.moloco.sdk.internal.publisher.nativead.model.d dVar = this.f32721g;
        if (dVar != null) {
            return dVar.a(5);
        }
        return null;
    }

    @Override // com.moloco.sdk.publisher.NativeAd.Assets
    @Nullable
    public Uri getIconUri() {
        com.moloco.sdk.internal.publisher.nativead.model.d dVar = this.f32721g;
        if (dVar != null) {
            return dVar.c(0);
        }
        return null;
    }

    @Override // com.moloco.sdk.publisher.NativeAd.Assets
    @Nullable
    public Uri getMainImageUri() {
        return this.f32722h;
    }

    @Override // com.moloco.sdk.publisher.NativeAd.Assets
    @Nullable
    public View getMediaView() {
        Uri c10;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a e10;
        com.moloco.sdk.internal.publisher.nativead.ui.d dVar = this.f32724j;
        if (dVar != null) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "NativeAdAssetsProvider", "Using cached video view", null, false, 12, null);
            d(dVar);
            return dVar;
        }
        com.moloco.sdk.internal.publisher.nativead.model.d dVar2 = this.f32721g;
        if (dVar2 != null && (e10 = dVar2.e(2)) != null) {
            com.moloco.sdk.internal.publisher.nativead.ui.d b10 = b(e10);
            this.f32724j = b10;
            return b10;
        }
        ViewGroup viewGroup = this.f32723i;
        if (viewGroup != null) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "NativeAdAssetsProvider", "Using cached image view", null, false, 12, null);
            d(viewGroup);
            return viewGroup;
        }
        com.moloco.sdk.internal.publisher.nativead.model.d dVar3 = this.f32721g;
        if (dVar3 != null && (c10 = dVar3.c(1)) != null) {
            ViewGroup a10 = a(c10);
            this.f32723i = a10;
            return a10;
        }
        MolocoLogger.error$default(MolocoLogger.INSTANCE, "NativeAdAssetsProvider", "Missing video and image asset", new Exception(), false, 8, null);
        return null;
    }

    @Override // com.moloco.sdk.publisher.NativeAd.Assets
    @Nullable
    public Float getRating() {
        String a10;
        com.moloco.sdk.internal.publisher.nativead.model.d dVar = this.f32721g;
        if (dVar != null && (a10 = dVar.a(6)) != null) {
            return StringsKt.s(a10);
        }
        return null;
    }

    @Override // com.moloco.sdk.publisher.NativeAd.Assets
    @Nullable
    public String getSponsorText() {
        com.moloco.sdk.internal.publisher.nativead.model.d dVar = this.f32721g;
        if (dVar != null) {
            return dVar.a(4);
        }
        return null;
    }

    @Override // com.moloco.sdk.publisher.NativeAd.Assets
    @Nullable
    public String getTitle() {
        com.moloco.sdk.internal.publisher.nativead.model.d dVar = this.f32721g;
        if (dVar != null) {
            return dVar.d(3);
        }
        return null;
    }
}
