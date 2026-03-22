package io.bidmachine.iab.mraid;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Date;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class d {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f54588a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Date f54589b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f54590c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f54591d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Date f54592e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f54593f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f54594g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private String f54595h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@NonNull String str, @NonNull Date date) {
        this.f54588a = str;
        this.f54589b = date;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable String str) {
        this.f54590c = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@Nullable Date date) {
        this.f54592e = date;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@Nullable String str) {
        this.f54595h = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@Nullable String str) {
        this.f54593f = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@Nullable String str) {
        this.f54591d = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (Objects.equals(this.f54588a, dVar.f54588a) && Objects.equals(this.f54589b, dVar.f54589b) && Objects.equals(this.f54590c, dVar.f54590c) && Objects.equals(this.f54591d, dVar.f54591d) && Objects.equals(this.f54592e, dVar.f54592e) && Objects.equals(this.f54593f, dVar.f54593f) && Objects.equals(this.f54594g, dVar.f54594g) && Objects.equals(this.f54595h, dVar.f54595h)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(@Nullable String str) {
        this.f54594g = str;
    }

    @NonNull
    public String g() {
        return this.f54588a;
    }

    @Nullable
    public Date h() {
        return this.f54592e;
    }

    public int hashCode() {
        return Objects.hash(this.f54588a, this.f54589b, this.f54590c, this.f54591d, this.f54592e, this.f54593f, this.f54594g, this.f54595h);
    }

    @Nullable
    public String i() {
        return this.f54590c;
    }

    @Nullable
    public String j() {
        return this.f54595h;
    }

    @NonNull
    public Date k() {
        return this.f54589b;
    }

    @Nullable
    public String l() {
        return this.f54593f;
    }

    @Nullable
    public String m() {
        return this.f54591d;
    }

    @Nullable
    public String n() {
        return this.f54594g;
    }

    @NonNull
    public String toString() {
        return "MraidCalendarEvent{description='" + this.f54588a + "', start=" + this.f54589b + ", location='" + this.f54590c + "', summary='" + this.f54591d + "', end=" + this.f54592e + ", status='" + this.f54593f + "', transparency='" + this.f54594g + "', recurrence='" + this.f54595h + "'}";
    }
}
