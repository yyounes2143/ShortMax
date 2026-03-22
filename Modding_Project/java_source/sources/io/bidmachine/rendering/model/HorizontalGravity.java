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
public enum HorizontalGravity implements k {
    Left(TtmlNode.LEFT, 3),
    Center(TtmlNode.CENTER, 1),
    Right(TtmlNode.RIGHT, 5);
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58543a;

    /* renamed from: b  reason: collision with root package name */
    private final int f58544b;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final HorizontalGravity a(@Nullable String str) {
            return (HorizontalGravity) s.k(HorizontalGravity.values(), str);
        }

        private a() {
        }
    }

    HorizontalGravity(String str, int i10) {
        this.f58543a = str;
        this.f58544b = i10;
    }

    @Nullable
    public static final HorizontalGravity get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58543a;
    }

    public final int getValue() {
        return this.f58544b;
    }
}
