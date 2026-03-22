package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import com.applovin.impl.d;
import com.applovin.impl.o2;
import com.applovin.impl.p2;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxDebuggerAdUnitDetailActivity;
import com.applovin.mediation.MaxDebuggerAdUnitWaterfallsListActivity;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class q extends k3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f9293a;

    /* renamed from: b  reason: collision with root package name */
    private p2 f9294b;

    /* renamed from: c  reason: collision with root package name */
    private List f9295c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9296d;

    /* renamed from: e  reason: collision with root package name */
    private ListView f9297e;

    /* loaded from: classes2.dex */
    class a extends p2 {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ List f9298e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, List list) {
            super(context);
            this.f9298e = list;
        }

        @Override // com.applovin.impl.p2
        protected int b() {
            return 1;
        }

        @Override // com.applovin.impl.p2
        protected List c(int i10) {
            return q.this.f9295c;
        }

        @Override // com.applovin.impl.p2
        protected int d(int i10) {
            return this.f9298e.size();
        }

        @Override // com.applovin.impl.p2
        protected o2 e(int i10) {
            return new t4("");
        }
    }

    @Override // com.applovin.impl.k3
    protected com.applovin.impl.sdk.k getSdk() {
        return this.f9293a;
    }

    public void initialize(final List<n> list, boolean z10, final com.applovin.impl.sdk.k kVar) {
        this.f9296d = z10;
        this.f9293a = kVar;
        this.f9295c = a(list);
        a aVar = new a(this, list);
        this.f9294b = aVar;
        aVar.a(new p2.a() { // from class: com.applovin.impl.dd
            @Override // com.applovin.impl.p2.a
            public final void a(i2 i2Var, o2 o2Var) {
                q.this.a(list, kVar, i2Var, o2Var);
            }
        });
        this.f9294b.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        StringBuilder sb2 = new StringBuilder();
        if (this.f9296d) {
            str = "Selective Init ";
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append("Ad Units");
        setTitle(sb2.toString());
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.f9297e = listView;
        listView.setAdapter((ListAdapter) this.f9294b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, final com.applovin.impl.sdk.k kVar, i2 i2Var, o2 o2Var) {
        final n nVar = (n) list.get(i2Var.a());
        if (nVar.g().size() == 1) {
            d.a(this, MaxDebuggerAdUnitDetailActivity.class, kVar.e(), new d.b() { // from class: com.applovin.impl.bd
                @Override // com.applovin.impl.d.b
                public final void a(Activity activity) {
                    ((MaxDebuggerAdUnitDetailActivity) activity).initialize(n.this, null, null, kVar);
                }
            });
        } else {
            d.a(this, MaxDebuggerAdUnitWaterfallsListActivity.class, kVar.e(), new d.b() { // from class: com.applovin.impl.cd
                @Override // com.applovin.impl.d.b
                public final void a(Activity activity) {
                    ((MaxDebuggerAdUnitWaterfallsListActivity) activity).initialize(n.this, kVar);
                }
            });
        }
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            n nVar = (n) it.next();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("ID\t\t\t\t\t\t", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(nVar.c(), ViewCompat.MEASURED_STATE_MASK));
            spannableStringBuilder.append((CharSequence) new SpannedString("\n"));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("FORMAT  ", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(nVar.b(), ViewCompat.MEASURED_STATE_MASK));
            arrayList.add(o2.a(o2.c.DETAIL).b(StringUtils.createSpannedString(nVar.d(), ViewCompat.MEASURED_STATE_MASK, 18, 1)).a(new SpannedString(spannableStringBuilder)).a(this).a(true).a());
        }
        return arrayList;
    }
}
