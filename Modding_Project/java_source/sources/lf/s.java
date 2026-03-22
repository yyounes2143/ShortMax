package lf;

import android.view.View;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.bean.shorts.SubtitleConfig;
import com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VideoPlayerParams2.kt */
@Metadata
/* loaded from: classes6.dex */
public final class s {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f62208a;

    /* renamed from: b  reason: collision with root package name */
    public StrategySource f62209b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private View f62210c;

    /* renamed from: e  reason: collision with root package name */
    private int f62212e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f62214g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f62215h;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private PlayResolution f62217j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private PlayResolution f62218k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private List<IVideoPlayerFeature> f62219l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private SubtitleConfig f62220m;

    /* renamed from: d  reason: collision with root package name */
    private int f62211d = 2;

    /* renamed from: f  reason: collision with root package name */
    private int f62213f = 500;

    /* renamed from: i  reason: collision with root package name */
    private float f62216i = 1.0f;

    public final int a() {
        return this.f62211d;
    }

    @Nullable
    public final List<IVideoPlayerFeature> b() {
        return this.f62219l;
    }

    public final boolean c() {
        return this.f62214g;
    }

    @Nullable
    public final PlayResolution d() {
        return this.f62217j;
    }

    public final float e() {
        return this.f62216i;
    }

    public final int f() {
        return this.f62213f;
    }

    @Nullable
    public final View g() {
        return this.f62210c;
    }

    public final int h() {
        return this.f62212e;
    }

    @NotNull
    public final StrategySource i() {
        StrategySource strategySource = this.f62209b;
        if (strategySource != null) {
            return strategySource;
        }
        Intrinsics.throwUninitializedPropertyAccessException("strategySource");
        return null;
    }

    @Nullable
    public final SubtitleConfig j() {
        return this.f62220m;
    }

    @Nullable
    public final String k() {
        return this.f62208a;
    }

    @Nullable
    public final PlayResolution l() {
        return this.f62218k;
    }

    public final boolean m() {
        return this.f62215h;
    }

    public final void n(int i10) {
        this.f62211d = i10;
    }

    public final void o(@Nullable List<IVideoPlayerFeature> list) {
        this.f62219l = list;
    }

    public final void p(boolean z10) {
        this.f62214g = z10;
    }

    public final void q(@Nullable PlayResolution playResolution) {
        this.f62217j = playResolution;
    }

    public final void r(boolean z10) {
        this.f62215h = z10;
    }

    public final void s(float f10) {
        this.f62216i = f10;
    }

    public final void t(int i10) {
        this.f62213f = i10;
    }

    @NotNull
    public String toString() {
        return "VideoPlayerParams2(tag=" + this.f62208a + ", strategySource=" + i() + ", renderView=" + this.f62210c + ", displayMode=" + this.f62211d + ", startPosition=" + this.f62212e + ", positionUpdateInterval=" + this.f62213f + ", loopPlay=" + this.f62214g + ", isMute=" + this.f62215h + ", playSpeed=" + this.f62216i + ", subtitleConfig=" + this.f62220m + ", maxPlayResolution=" + this.f62217j + ", userExpectedPlayResolution=" + this.f62218k + ", features=" + this.f62219l + ')';
    }

    public final void u(@Nullable View view) {
        this.f62210c = view;
    }

    public final void v(int i10) {
        this.f62212e = i10;
    }

    public final void w(@NotNull StrategySource strategySource) {
        Intrinsics.checkNotNullParameter(strategySource, "<set-?>");
        this.f62209b = strategySource;
    }

    public final void x(@Nullable SubtitleConfig subtitleConfig) {
        this.f62220m = subtitleConfig;
    }

    public final void y(@Nullable String str) {
        this.f62208a = str;
    }

    public final void z(@Nullable PlayResolution playResolution) {
        this.f62218k = playResolution;
    }
}
