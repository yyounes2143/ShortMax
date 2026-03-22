package com.startshorts.androidplayer.viewmodel.immersion;

import android.os.Bundle;
import com.bytedance.vodsetting.Module;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import fk.w;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionBackShortViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionBackShortViewModel extends BaseViewModel {
    public final void A(@NotNull String shortPlayCode, int i10) {
        Intrinsics.checkNotNullParameter(shortPlayCode, "shortPlayCode");
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("reel_id", shortPlayCode);
        bundle.putString("episode", String.valueOf(i10));
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "immersion_back_close", bundle, 0L, 4, null);
    }

    public final void B(@NotNull BaseEpisode episode, long j10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(episode);
        C.putString(CrashHianalyticsData.TIME, String.valueOf(j10));
        C.putString("scene", "immersion_back_pop");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "initial_loading_time", C, 0L, 4, null);
    }

    public final void C(@NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(episode);
        C.putString("scene", "immersion_back_pop");
        C.putString("from", "immersion_back");
        C.putString("is_free", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        C.putFloat("speed_level", 1.0f);
        C.putString("logic", "nature");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_play", C, 0L, 4, null);
    }

    public final void D(@NotNull BaseEpisode episode, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(episode);
        C.putInt(Module.ResponseKey.Code, i10);
        C.putInt("after_first_frame", i11);
        C.putInt(TextureRenderKeys.KEY_IS_ACTION, i12);
        C.putString("scene", "immersion_back_pop");
        C.putString("clarity_level", "720p");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_play_buffering", C, 0L, 4, null);
    }

    public final void E(@NotNull String shortPlayCode, int i10) {
        Intrinsics.checkNotNullParameter(shortPlayCode, "shortPlayCode");
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("reel_id", shortPlayCode);
        bundle.putString("episode", String.valueOf(i10));
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "immersion_back_show", bundle, 0L, 4, null);
    }

    public final void F(@NotNull String shortPlayCode, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(shortPlayCode, "shortPlayCode");
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("reel_id", shortPlayCode);
        bundle.putString("episode", String.valueOf(i10));
        bundle.putInt("seconds", i11 / 1000);
        bundle.putInt("show_time", i12);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "immersion_back_show", bundle, 0L, 4, null);
    }

    public final void G(@NotNull String action, @NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(episode, "episode");
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(episode);
        C.putString(TextureRenderKeys.KEY_IS_ACTION, action);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "immersion_back_play", C, 0L, 4, null);
    }

    public final void H(@NotNull BaseEpisode episode, int i10, int i11) {
        int i12;
        Intrinsics.checkNotNullParameter(episode, "episode");
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(episode);
        int i13 = 1;
        if (i10 < 1000) {
            i12 = 1;
        } else {
            i12 = i10 / 1000;
        }
        C.putInt("seconds", i12);
        C.putString("scene", "immersion_back_pop");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "play_time_real", C, 0L, 4, null);
        Bundle C2 = eventManager.C(episode);
        if (i11 >= 1000) {
            i13 = i11 / 1000;
        }
        C2.putInt("seconds", i13);
        C2.putString("scene", "immersion_back_pop");
        EventManager.s0(eventManager, "play_time_schedule", C2, 0L, 4, null);
    }

    public final void I(@NotNull BaseEpisode episode, int i10, int i11) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(episode);
        if (i11 != 0) {
            C.putFloat("watch_progress_percent", w.f51779a.b(((i10 * 1.0f) / i11) * 100, 2));
        } else {
            C.putFloat("watch_progress_percent", 0.0f);
        }
        C.putString("scene", "immersion_back_pop");
        C.putString("from", "immersion_back");
        C.putString("is_free", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        C.putFloat("speed_level", 1.0f);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "playback_progress_track", C, 0L, 4, null);
    }

    public final void J(@Nullable BaseEpisode baseEpisode) {
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("status", "success");
        C.putString("scene", "immersion_back_pop");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_request", C, 0L, 4, null);
    }

    public final void K(@Nullable BaseEpisode baseEpisode, int i10) {
        int i11;
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("scene", "immersion_back_pop");
        if (i10 < 1000) {
            i11 = 1;
        } else {
            i11 = i10 / 1000;
        }
        C.putInt("seconds", i11);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_cut", C, 0L, 4, null);
    }
}
