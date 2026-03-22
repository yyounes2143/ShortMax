package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.applovin.impl.b2;
/* loaded from: classes2.dex */
public class k extends View {

    /* renamed from: a  reason: collision with root package name */
    private final b2 f7458a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7459b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface a {
        void a();

        void onFailure();
    }

    public k(b2 b2Var, Context context) {
        super(context);
        this.f7458a = b2Var;
        setClickable(false);
        setFocusable(false);
    }

    public boolean a() {
        return this.f7459b;
    }

    public void b() {
        a(null);
    }

    public String getIdentifier() {
        return this.f7458a.b();
    }

    public void a(a aVar) {
        if (this.f7459b) {
            if (aVar != null) {
                aVar.a();
                return;
            }
            return;
        }
        Drawable a10 = this.f7458a.a();
        if (a10 == null) {
            if (aVar != null) {
                aVar.onFailure();
                return;
            }
            return;
        }
        setBackground(a10);
        this.f7459b = true;
        if (aVar != null) {
            aVar.a();
        }
    }
}
