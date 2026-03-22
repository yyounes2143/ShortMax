package io.bidmachine.rendering.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum StopDetectorAfter implements k {
    ValidCreative("valid_creative"),
    BrokenCreative("broken_creative"),
    AnyCreative("any_creative"),
    Never("never");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58564a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final StopDetectorAfter a(@Nullable String str) {
            return (StopDetectorAfter) s.k(StopDetectorAfter.values(), str);
        }

        private a() {
        }
    }

    StopDetectorAfter(String str) {
        this.f58564a = str;
    }

    @Nullable
    public static final StopDetectorAfter get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58564a;
    }
}
