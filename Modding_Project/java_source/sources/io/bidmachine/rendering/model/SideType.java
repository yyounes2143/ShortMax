package io.bidmachine.rendering.model;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum SideType implements k {
    Left(TtmlNode.LEFT),
    Top("top"),
    Right(TtmlNode.RIGHT),
    Bottom("bottom");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58562a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final SideType a(@Nullable String str) {
            return (SideType) s.k(SideType.values(), str);
        }

        private a() {
        }
    }

    SideType(String str) {
        this.f58562a = str;
    }

    @Nullable
    public static final SideType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58562a;
    }
}
