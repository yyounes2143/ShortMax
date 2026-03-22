package io.bidmachine.rendering.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum AnimationEventType implements k {
    Appear("appear"),
    Disappear("disappear");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58522a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final AnimationEventType a(@Nullable String str) {
            return (AnimationEventType) s.k(AnimationEventType.values(), str);
        }

        private a() {
        }
    }

    AnimationEventType(String str) {
        this.f58522a = str;
    }

    @Nullable
    public static final AnimationEventType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58522a;
    }
}
