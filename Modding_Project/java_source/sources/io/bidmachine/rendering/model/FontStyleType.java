package io.bidmachine.rendering.model;

import com.adjust.sdk.Constants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum FontStyleType implements k {
    Normal(Constants.NORMAL, 0),
    Bold(TtmlNode.BOLD, 1),
    Italic(TtmlNode.ITALIC, 2),
    BoldItalic("bold_italic", 3);
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58536a;

    /* renamed from: b  reason: collision with root package name */
    private final int f58537b;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final FontStyleType a(@Nullable String str) {
            return (FontStyleType) s.k(FontStyleType.values(), str);
        }

        private a() {
        }
    }

    FontStyleType(String str, int i10) {
        this.f58536a = str;
        this.f58537b = i10;
    }

    @Nullable
    public static final FontStyleType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58536a;
    }

    public final int getTypeface() {
        return this.f58537b;
    }
}
