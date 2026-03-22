package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer;

import android.content.Context;
import android.view.View;
import androidx.compose.runtime.internal.StabilityInferred;
import com.ss.ttm.player.MediaPlayer;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class f0 implements n {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f33701a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Boolean f33702b;

    /* renamed from: c  reason: collision with root package name */
    public final int f33703c;

    /* renamed from: d  reason: collision with root package name */
    public final int f33704d;

    /* renamed from: e  reason: collision with root package name */
    public final int f33705e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f33706f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f33707g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final Function2<Context, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i, View> f33708h;

    public f0() {
        this(false, null, 0, 0, 0, false, false, null, 255, null);
    }

    public final boolean a() {
        return this.f33707g;
    }

    public final boolean b() {
        return this.f33706f;
    }

    public final int c() {
        return this.f33704d;
    }

    public final int d() {
        return this.f33705e;
    }

    @Nullable
    public final Boolean e() {
        return this.f33702b;
    }

    public final int f() {
        return this.f33703c;
    }

    public final boolean g() {
        return this.f33701a;
    }

    @NotNull
    public final Function2<Context, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i, View> h() {
        return this.f33708h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f0(boolean z10, @Nullable Boolean bool, int i10, int i11, int i12, boolean z11, boolean z12, @NotNull Function2<? super Context, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i, ? extends View> VastRenderer) {
        Intrinsics.checkNotNullParameter(VastRenderer, "VastRenderer");
        this.f33701a = z10;
        this.f33702b = bool;
        this.f33703c = i10;
        this.f33704d = i11;
        this.f33705e = i12;
        this.f33706f = z11;
        this.f33707g = z12;
        this.f33708h = VastRenderer;
    }

    public /* synthetic */ f0(boolean z10, Boolean bool, int i10, int i11, int i12, boolean z11, boolean z12, Function2 function2, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? true : z10, (i13 & 2) != 0 ? null : bool, (i13 & 4) != 0 ? 5 : i10, (i13 & 8) != 0 ? 5 : i11, (i13 & 16) == 0 ? i12 : 5, (i13 & 32) != 0 ? false : z11, (i13 & 64) == 0 ? z12 : false, (i13 & 128) != 0 ? com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n.h(0L, null, null, null, null, null, null, null, null, null, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, null) : function2);
    }
}
