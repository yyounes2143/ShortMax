package io.bidmachine.rendering.model;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum EventTaskType implements k {
    Track("track"),
    Open(MRAIDPresenter.OPEN),
    NotifyOpen("notify_open"),
    Skip("skip"),
    Close("close"),
    Mute("mute"),
    UnMute(CampaignEx.JSON_NATIVE_VIDEO_UNMUTE),
    Repeat("repeat"),
    Show("show"),
    Hide("hide"),
    Progress("progress"),
    Schedule("schedule"),
    Start("start"),
    LockVisibility("lock_visibility"),
    UnlockVisibility("unlock_visibility"),
    SimulateClick("simulate_click"),
    OpenPrivacySheet("open_privacy_sheet"),
    ToggleStateGroups("toggle_state_groups");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58532a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final EventTaskType a(@Nullable String str) {
            return (EventTaskType) s.k(EventTaskType.values(), str);
        }

        private a() {
        }
    }

    EventTaskType(String str) {
        this.f58532a = str;
    }

    @Nullable
    public static final EventTaskType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58532a;
    }
}
