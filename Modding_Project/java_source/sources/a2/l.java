package a2;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.v;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SessionInfo.kt */
@Metadata
/* loaded from: classes3.dex */
public final class l {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f89g = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Long f90a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Long f91b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private UUID f92c;

    /* renamed from: d  reason: collision with root package name */
    private int f93d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Long f94e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private n f95f;

    /* compiled from: SessionInfo.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(v.l()).edit();
            edit.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
            edit.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
            edit.remove("com.facebook.appevents.SessionInfo.interruptionCount");
            edit.remove("com.facebook.appevents.SessionInfo.sessionId");
            edit.apply();
            n.f99c.a();
        }

        @Nullable
        public final l b() {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(v.l());
            long j10 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionStartTime", 0L);
            long j11 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionEndTime", 0L);
            String string = defaultSharedPreferences.getString("com.facebook.appevents.SessionInfo.sessionId", null);
            if (j10 == 0 || j11 == 0 || string == null) {
                return null;
            }
            l lVar = new l(Long.valueOf(j10), Long.valueOf(j11), null, 4, null);
            lVar.f93d = defaultSharedPreferences.getInt("com.facebook.appevents.SessionInfo.interruptionCount", 0);
            lVar.l(n.f99c.b());
            lVar.i(Long.valueOf(System.currentTimeMillis()));
            UUID fromString = UUID.fromString(string);
            Intrinsics.checkNotNullExpressionValue(fromString, "fromString(sessionIDStr)");
            lVar.j(fromString);
            return lVar;
        }

        private a() {
        }
    }

    public l(@Nullable Long l10, @Nullable Long l11, @NotNull UUID sessionId) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        this.f90a = l10;
        this.f91b = l11;
        this.f92c = sessionId;
    }

    @Nullable
    public final Long b() {
        Long l10 = this.f94e;
        if (l10 == null) {
            return 0L;
        }
        return l10;
    }

    public final int c() {
        return this.f93d;
    }

    @NotNull
    public final UUID d() {
        return this.f92c;
    }

    @Nullable
    public final Long e() {
        return this.f91b;
    }

    public final long f() {
        Long l10;
        if (this.f90a != null && (l10 = this.f91b) != null) {
            if (l10 != null) {
                return l10.longValue() - this.f90a.longValue();
            }
            throw new IllegalStateException("Required value was null.");
        }
        return 0L;
    }

    @Nullable
    public final n g() {
        return this.f95f;
    }

    public final void h() {
        this.f93d++;
    }

    public final void i(@Nullable Long l10) {
        this.f94e = l10;
    }

    public final void j(@NotNull UUID uuid) {
        Intrinsics.checkNotNullParameter(uuid, "<set-?>");
        this.f92c = uuid;
    }

    public final void k(@Nullable Long l10) {
        this.f91b = l10;
    }

    public final void l(@Nullable n nVar) {
        this.f95f = nVar;
    }

    public final void m() {
        long j10;
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(v.l()).edit();
        Long l10 = this.f90a;
        long j11 = 0;
        if (l10 != null) {
            j10 = l10.longValue();
        } else {
            j10 = 0;
        }
        edit.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", j10);
        Long l11 = this.f91b;
        if (l11 != null) {
            j11 = l11.longValue();
        }
        edit.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", j11);
        edit.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.f93d);
        edit.putString("com.facebook.appevents.SessionInfo.sessionId", this.f92c.toString());
        edit.apply();
        n nVar = this.f95f;
        if (nVar != null && nVar != null) {
            nVar.a();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ l(java.lang.Long r1, java.lang.Long r2, java.util.UUID r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
        /*
            r0 = this;
            r4 = r4 & 4
            if (r4 == 0) goto Ld
            java.util.UUID r3 = java.util.UUID.randomUUID()
            java.lang.String r4 = "randomUUID()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
        Ld:
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.l.<init>(java.lang.Long, java.lang.Long, java.util.UUID, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
