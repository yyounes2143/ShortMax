package com.iab.omid.library.mmadbridge;

import android.content.Context;
import com.iab.omid.library.mmadbridge.internal.i;
import com.iab.omid.library.mmadbridge.internal.j;
import com.iab.omid.library.mmadbridge.utils.e;
import com.iab.omid.library.mmadbridge.utils.g;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private boolean f22988a;

    private void b(Context context) {
        g.a(context, "Application Context cannot be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return "1.4.13-Mmadbridge";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        g.a();
        com.iab.omid.library.mmadbridge.internal.a.a().d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context) {
        b(context);
        if (b()) {
            return;
        }
        a(true);
        i.c().a(context);
        com.iab.omid.library.mmadbridge.internal.b.g().a(context);
        com.iab.omid.library.mmadbridge.utils.a.a(context);
        com.iab.omid.library.mmadbridge.utils.c.a(context);
        e.a(context);
        com.iab.omid.library.mmadbridge.internal.g.b().a(context);
        com.iab.omid.library.mmadbridge.internal.a.a().a(context);
        j.b().a(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f22988a;
    }

    void a(boolean z10) {
        this.f22988a = z10;
    }
}
