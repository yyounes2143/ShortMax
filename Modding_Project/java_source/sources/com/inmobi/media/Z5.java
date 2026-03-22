package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Z5 {

    /* renamed from: a  reason: collision with root package name */
    public final JSONObject f24435a;

    /* renamed from: b  reason: collision with root package name */
    public final JSONArray f24436b;

    /* renamed from: c  reason: collision with root package name */
    public final Y6 f24437c;

    public Z5(JSONObject vitals, JSONArray logs, Y6 data) {
        Intrinsics.checkNotNullParameter(vitals, "vitals");
        Intrinsics.checkNotNullParameter(logs, "logs");
        Intrinsics.checkNotNullParameter(data, "data");
        this.f24435a = vitals;
        this.f24436b = logs;
        this.f24437c = data;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Z5)) {
            return false;
        }
        Z5 z52 = (Z5) obj;
        if (Intrinsics.areEqual(this.f24435a, z52.f24435a) && Intrinsics.areEqual(this.f24436b, z52.f24436b) && Intrinsics.areEqual(this.f24437c, z52.f24437c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f24436b.hashCode();
        return this.f24437c.hashCode() + ((hashCode + (this.f24435a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "IncompleteLogData(vitals=" + this.f24435a + ", logs=" + this.f24436b + ", data=" + this.f24437c + ')';
    }
}
