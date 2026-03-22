package com.google.firebase.messaging;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import java.util.regex.Pattern;
/* compiled from: TopicOperation.java */
/* loaded from: classes5.dex */
final class y0 {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f21303d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* renamed from: a  reason: collision with root package name */
    private final String f21304a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21305b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21306c;

    private y0(String str, String str2) {
        this.f21304a = d(str2, str);
        this.f21305b = str;
        this.f21306c = str + "!" + str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static y0 a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("!", -1);
        if (split.length != 2) {
            return null;
        }
        return new y0(split[0], split[1]);
    }

    @NonNull
    private static String d(String str, String str2) {
        if (str != null && str.startsWith("/topics/")) {
            Log.w("FirebaseMessaging", String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str2));
            str = str.substring(8);
        }
        if (str != null && f21303d.matcher(str).matches()) {
            return str;
        }
        throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", str, "[a-zA-Z0-9-_.~%]{1,900}"));
    }

    public String b() {
        return this.f21305b;
    }

    public String c() {
        return this.f21304a;
    }

    public String e() {
        return this.f21306c;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof y0)) {
            return false;
        }
        y0 y0Var = (y0) obj;
        if (!this.f21304a.equals(y0Var.f21304a) || !this.f21305b.equals(y0Var.f21305b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hashCode(this.f21305b, this.f21304a);
    }
}
