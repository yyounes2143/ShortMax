package fk;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.eventbus.CampaignFailureEvent;
import com.startshorts.androidplayer.manager.event.EventManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CampaignEventUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f51731a = new g();

    private g() {
    }

    public final void a(@NotNull String shortPlayId) {
        Intrinsics.checkNotNullParameter(shortPlayId, "shortPlayId");
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("shorts_play_id", shortPlayId);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "active_pull_up", bundle, 0L, 4, null);
    }

    public final void b(int i10, @NotNull String shortPlayId) {
        Intrinsics.checkNotNullParameter(shortPlayId, "shortPlayId");
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i10);
        bundle.putString("shorts_play_id", shortPlayId);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_jump_intercept", bundle, 0L, 4, null);
    }

    public final void c(int i10) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i10);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_report_intercept", bundle, 0L, 4, null);
    }

    public final void d() {
        au.c.d().l(new CampaignFailureEvent());
    }
}
