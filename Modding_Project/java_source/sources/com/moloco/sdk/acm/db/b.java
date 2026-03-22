package com.moloco.sdk.acm.db;

import androidx.room.Entity;
import androidx.room.PrimaryKey;
import androidx.room.TypeConverters;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@TypeConverters({a.class})
@Entity(tableName = "events")
/* loaded from: classes6.dex */
public final class b {
    @PrimaryKey(autoGenerate = true)

    /* renamed from: a  reason: collision with root package name */
    public final long f31839a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f31840b;

    /* renamed from: c  reason: collision with root package name */
    public final long f31841c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final c f31842d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Long f31843e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final List<String> f31844f;

    public b(long j10, @NotNull String name, long j11, @NotNull c eventType, @Nullable Long l10, @NotNull List<String> tags) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.f31839a = j10;
        this.f31840b = name;
        this.f31841c = j11;
        this.f31842d = eventType;
        this.f31843e = l10;
        this.f31844f = tags;
    }

    @Nullable
    public final Long a() {
        return this.f31843e;
    }

    @NotNull
    public final c b() {
        return this.f31842d;
    }

    public final long c() {
        return this.f31839a;
    }

    @NotNull
    public final String d() {
        return this.f31840b;
    }

    @NotNull
    public final List<String> e() {
        return this.f31844f;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f31839a == bVar.f31839a && Intrinsics.areEqual(this.f31840b, bVar.f31840b) && this.f31841c == bVar.f31841c && this.f31842d == bVar.f31842d && Intrinsics.areEqual(this.f31843e, bVar.f31843e) && Intrinsics.areEqual(this.f31844f, bVar.f31844f)) {
            return true;
        }
        return false;
    }

    public final long f() {
        return this.f31841c;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((((((Long.hashCode(this.f31839a) * 31) + this.f31840b.hashCode()) * 31) + Long.hashCode(this.f31841c)) * 31) + this.f31842d.hashCode()) * 31;
        Long l10 = this.f31843e;
        if (l10 == null) {
            hashCode = 0;
        } else {
            hashCode = l10.hashCode();
        }
        return ((hashCode2 + hashCode) * 31) + this.f31844f.hashCode();
    }

    @NotNull
    public String toString() {
        return "EventEntity(id=" + this.f31839a + ", name=" + this.f31840b + ", timestamp=" + this.f31841c + ", eventType=" + this.f31842d + ", data=" + this.f31843e + ", tags=" + this.f31844f + ')';
    }

    public /* synthetic */ b(long j10, String str, long j11, c cVar, Long l10, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : j10, str, j11, cVar, (i10 & 16) != 0 ? null : l10, (i10 & 32) != 0 ? CollectionsKt.n() : list);
    }
}
