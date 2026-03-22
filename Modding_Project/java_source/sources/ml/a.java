package ml;

import android.os.Bundle;
/* compiled from: RequestExtras.java */
/* loaded from: classes7.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    public static String f62523b = "query_info_type";

    /* renamed from: c  reason: collision with root package name */
    public static String f62524c = "requester_type_5";

    /* renamed from: d  reason: collision with root package name */
    public static String f62525d = "UnityScar";

    /* renamed from: a  reason: collision with root package name */
    private String f62526a;

    public a(String str) {
        this.f62526a = f62525d + str;
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString(f62523b, f62524c);
        return bundle;
    }

    public String b() {
        return this.f62526a;
    }
}
