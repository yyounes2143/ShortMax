package io.bidmachine.rendering.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum EventType implements k {
    OnImpression("on_impression"),
    OnClick("on_click"),
    OnMute("on_mute"),
    OnUnMute("on_unmute"),
    OnPause("on_pause"),
    OnResume("on_resume"),
    OnSkip("on_skip"),
    OnClose("on_close"),
    OnStart("on_start"),
    OnFirstQuartile("on_first_quartile"),
    OnMidpoint("on_midpoint"),
    OnThirdQuartile("on_third_quartile"),
    OnComplete("on_complete"),
    OnProgress("on_progress"),
    OnUseCustomClose("on_use_custom_close"),
    OnScheduled("on_scheduled"),
    OnNavigate("on_navigate");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58534a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final EventType a(@Nullable String str) {
            return (EventType) s.k(EventType.values(), str);
        }

        private a() {
        }
    }

    EventType(String str) {
        this.f58534a = str;
    }

    @Nullable
    public static final EventType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58534a;
    }
}
