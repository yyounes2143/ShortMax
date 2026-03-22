package com.google.firebase.sessions.api;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SessionSubscriber.kt */
@Metadata
/* loaded from: classes5.dex */
public interface SessionSubscriber {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: SessionSubscriber.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class Name {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ Name[] $VALUES;
        public static final Name CRASHLYTICS = new Name("CRASHLYTICS", 0);
        public static final Name PERFORMANCE = new Name("PERFORMANCE", 1);
        public static final Name MATT_SAYS_HI = new Name("MATT_SAYS_HI", 2);

        private static final /* synthetic */ Name[] $values() {
            return new Name[]{CRASHLYTICS, PERFORMANCE, MATT_SAYS_HI};
        }

        static {
            Name[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private Name(String str, int i10) {
        }

        @NotNull
        public static ss.a<Name> getEntries() {
            return $ENTRIES;
        }

        public static Name valueOf(String str) {
            return (Name) Enum.valueOf(Name.class, str);
        }

        public static Name[] values() {
            return (Name[]) $VALUES.clone();
        }
    }

    /* compiled from: SessionSubscriber.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f21603a;

        public a(@NotNull String sessionId) {
            Intrinsics.checkNotNullParameter(sessionId, "sessionId");
            this.f21603a = sessionId;
        }

        @NotNull
        public final String a() {
            return this.f21603a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f21603a, ((a) obj).f21603a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f21603a.hashCode();
        }

        @NotNull
        public String toString() {
            return "SessionDetails(sessionId=" + this.f21603a + ')';
        }
    }

    boolean a();

    @NotNull
    Name b();

    void c(@NotNull a aVar);
}
