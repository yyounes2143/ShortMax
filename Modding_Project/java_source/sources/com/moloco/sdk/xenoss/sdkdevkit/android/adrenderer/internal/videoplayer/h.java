package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer;

import android.view.View;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface h extends t {
    @Nullable
    Object a(@NotNull rs.c<? super Unit> cVar);

    void a(@Nullable String str);

    void b(boolean z10);

    @NotNull
    kt.i<l> f();

    @NotNull
    kt.i<a> isPlaying();

    void pause();

    void play();

    void seekTo(long j10);

    @NotNull
    kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i> t();

    @Nullable
    View u();
}
