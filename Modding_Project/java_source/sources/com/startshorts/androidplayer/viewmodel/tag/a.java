package com.startshorts.androidplayer.viewmodel.tag;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TagFilterViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: TagFilterViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.tag.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0694a extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Long f49455a;

        /* renamed from: b  reason: collision with root package name */
        private final int f49456b;

        /* renamed from: c  reason: collision with root package name */
        private final int f49457c;

        /* renamed from: d  reason: collision with root package name */
        private final int f49458d;

        public C0694a(@Nullable Long l10, int i10, int i11, int i12) {
            super(null);
            this.f49455a = l10;
            this.f49456b = i10;
            this.f49457c = i11;
            this.f49458d = i12;
        }

        @Nullable
        public final Long a() {
            return this.f49455a;
        }

        public final int b() {
            return this.f49457c;
        }

        public final int c() {
            return this.f49458d;
        }

        public final int d() {
            return this.f49456b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0694a)) {
                return false;
            }
            C0694a c0694a = (C0694a) obj;
            if (Intrinsics.areEqual(this.f49455a, c0694a.f49455a) && this.f49456b == c0694a.f49456b && this.f49457c == c0694a.f49457c && this.f49458d == c0694a.f49458d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Long l10 = this.f49455a;
            if (l10 == null) {
                hashCode = 0;
            } else {
                hashCode = l10.hashCode();
            }
            return (((((hashCode * 31) + Integer.hashCode(this.f49456b)) * 31) + Integer.hashCode(this.f49457c)) * 31) + Integer.hashCode(this.f49458d);
        }

        @NotNull
        public String toString() {
            return "QueryTagFilterEpisode(labelId=" + this.f49455a + ", tabType=" + this.f49456b + ", pageNumber=" + this.f49457c + ", pageSize=" + this.f49458d + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
