package io.bidmachine.iab.mraid;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes7.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f54613a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f54614b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f54615c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f54616d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f54617e;

    public j(@NonNull Context context, @Nullable String[] strArr) {
        this(context, strArr != null ? Arrays.asList(strArr) : null);
    }

    private boolean a(@NonNull String str, @Nullable List<String> list) {
        if (list != null && list.contains(str)) {
            return true;
        }
        return false;
    }

    public boolean b() {
        return this.f54616d;
    }

    public boolean c() {
        return this.f54615c;
    }

    public boolean d() {
        return this.f54613a;
    }

    public boolean e() {
        return this.f54617e;
    }

    public boolean f() {
        return this.f54614b;
    }

    public j(@NonNull Context context, @Nullable List<String> list) {
        sm.o oVar = new sm.o(context);
        boolean z10 = false;
        this.f54613a = a("sms", list) && oVar.a();
        if (a("tel", list) && oVar.a()) {
            z10 = true;
        }
        this.f54614b = z10;
        this.f54615c = a("inlineVideo", list);
        this.f54616d = a("calendar", list);
        this.f54617e = a("storePicture", list);
    }
}
