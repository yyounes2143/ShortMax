package io.bidmachine.rendering.model;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum AdElementType implements k {
    Mraid(CampaignEx.JSON_KEY_MRAID),
    Video("video"),
    Image("image"),
    Label("label"),
    Countdown("countdown"),
    Progress("progress");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58518a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final AdElementType a(@Nullable String str) {
            return (AdElementType) s.k(AdElementType.values(), str);
        }

        private a() {
        }
    }

    AdElementType(String str) {
        this.f58518a = str;
    }

    @Nullable
    public static final AdElementType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58518a;
    }
}
