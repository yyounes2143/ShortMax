package io.bidmachine.rendering.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum AnimationStyleType implements k {
    Fade("fade"),
    Slide("slide");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58526a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final AnimationStyleType a(@Nullable String str) {
            return (AnimationStyleType) s.k(AnimationStyleType.values(), str);
        }

        private a() {
        }
    }

    AnimationStyleType(String str) {
        this.f58526a = str;
    }

    @Nullable
    public static final AnimationStyleType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58526a;
    }
}
