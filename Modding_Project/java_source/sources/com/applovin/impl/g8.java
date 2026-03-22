package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.impl.o2;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class g8 extends k3 {

    /* renamed from: a  reason: collision with root package name */
    private String f7969a;

    /* renamed from: b  reason: collision with root package name */
    private com.applovin.impl.sdk.k f7970b;

    /* renamed from: c  reason: collision with root package name */
    private p2 f7971c;

    /* loaded from: classes2.dex */
    class a extends p2 {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ List f7972e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, List list) {
            super(context);
            this.f7972e = list;
        }

        @Override // com.applovin.impl.p2
        protected o2 a() {
            return new o2.b(o2.c.SECTION_CENTERED).d("A plus in front of each segment indicates inclusion and a minus indicates exclusion. The comma in comma-separated values functions as an ∨ (or) operator, and a new row functions as an ∧ (and) operator.").a();
        }

        @Override // com.applovin.impl.p2
        protected int b() {
            return 1;
        }

        @Override // com.applovin.impl.p2
        protected List c(int i10) {
            return this.f7972e;
        }

        @Override // com.applovin.impl.p2
        protected int d(int i10) {
            return this.f7972e.size();
        }

        @Override // com.applovin.impl.p2
        protected o2 e(int i10) {
            return new t4("SEGMENT TARGETING");
        }
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(o2.a(o2.c.DETAIL).d((String) it.next()).a());
        }
        return arrayList;
    }

    @Override // com.applovin.impl.k3
    protected com.applovin.impl.sdk.k getSdk() {
        return this.f7970b;
    }

    public void initialize(String str, List<String> list, com.applovin.impl.sdk.k kVar) {
        this.f7969a = str;
        this.f7970b = kVar;
        a aVar = new a(this, a(list));
        this.f7971c = aVar;
        aVar.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle(this.f7969a);
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.f7971c);
    }
}
