package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;
/* compiled from: FirebaseOptions.java */
/* loaded from: classes5.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final String f21088a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21089b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21090c;

    /* renamed from: d  reason: collision with root package name */
    private final String f21091d;

    /* renamed from: e  reason: collision with root package name */
    private final String f21092e;

    /* renamed from: f  reason: collision with root package name */
    private final String f21093f;

    /* renamed from: g  reason: collision with root package name */
    private final String f21094g;

    private m(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        Preconditions.checkState(!Strings.isEmptyOrWhitespace(str), "ApplicationId must be set.");
        this.f21089b = str;
        this.f21088a = str2;
        this.f21090c = str3;
        this.f21091d = str4;
        this.f21092e = str5;
        this.f21093f = str6;
        this.f21094g = str7;
    }

    @Nullable
    public static m a(@NonNull Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String string = stringResourceValueReader.getString("google_app_id");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new m(string, stringResourceValueReader.getString("google_api_key"), stringResourceValueReader.getString("firebase_database_url"), stringResourceValueReader.getString("ga_trackingId"), stringResourceValueReader.getString("gcm_defaultSenderId"), stringResourceValueReader.getString("google_storage_bucket"), stringResourceValueReader.getString("project_id"));
    }

    @NonNull
    public String b() {
        return this.f21088a;
    }

    @NonNull
    public String c() {
        return this.f21089b;
    }

    @Nullable
    public String d() {
        return this.f21092e;
    }

    @Nullable
    public String e() {
        return this.f21094g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (!Objects.equal(this.f21089b, mVar.f21089b) || !Objects.equal(this.f21088a, mVar.f21088a) || !Objects.equal(this.f21090c, mVar.f21090c) || !Objects.equal(this.f21091d, mVar.f21091d) || !Objects.equal(this.f21092e, mVar.f21092e) || !Objects.equal(this.f21093f, mVar.f21093f) || !Objects.equal(this.f21094g, mVar.f21094g)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hashCode(this.f21089b, this.f21088a, this.f21090c, this.f21091d, this.f21092e, this.f21093f, this.f21094g);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("applicationId", this.f21089b).add("apiKey", this.f21088a).add("databaseUrl", this.f21090c).add("gcmSenderId", this.f21092e).add("storageBucket", this.f21093f).add("projectId", this.f21094g).toString();
    }
}
