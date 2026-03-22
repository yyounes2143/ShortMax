package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannedString;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.impl.o2;
import com.applovin.impl.p2;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class a7 extends k3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f7313a;

    /* renamed from: b  reason: collision with root package name */
    private List f7314b;

    /* renamed from: c  reason: collision with root package name */
    private List f7315c;

    /* renamed from: d  reason: collision with root package name */
    private p2 f7316d;

    /* renamed from: e  reason: collision with root package name */
    private List f7317e;

    /* renamed from: f  reason: collision with root package name */
    private List f7318f;

    /* renamed from: g  reason: collision with root package name */
    private ListView f7319g;

    /* loaded from: classes2.dex */
    class a extends p2 {
        a(Context context) {
            super(context);
        }

        @Override // com.applovin.impl.p2
        protected o2 a() {
            return new o2.b(o2.c.SECTION_CENTERED).d("Select a network to load ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session.").a();
        }

        @Override // com.applovin.impl.p2
        protected int b() {
            return c.COUNT.ordinal();
        }

        @Override // com.applovin.impl.p2
        protected List c(int i10) {
            if (i10 != c.BIDDERS.ordinal()) {
                return a7.this.f7318f;
            }
            return a7.this.f7317e;
        }

        @Override // com.applovin.impl.p2
        protected int d(int i10) {
            if (i10 == c.BIDDERS.ordinal()) {
                return a7.this.f7317e.size();
            }
            return a7.this.f7318f.size();
        }

        @Override // com.applovin.impl.p2
        protected o2 e(int i10) {
            if (i10 == c.BIDDERS.ordinal()) {
                return new t4("BIDDERS");
            }
            return new t4("WATERFALL");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends w3 {

        /* renamed from: p  reason: collision with root package name */
        final /* synthetic */ r2 f7321p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(b3 b3Var, Context context, r2 r2Var) {
            super(b3Var, context);
            this.f7321p = r2Var;
        }

        @Override // com.applovin.impl.w3, com.applovin.impl.o2
        public int d() {
            if (a7.this.f7313a.t0().b() != null && a7.this.f7313a.t0().b().equals(this.f7321p.b())) {
                return R.drawable.applovin_ic_check_mark_borderless;
            }
            return 0;
        }

        @Override // com.applovin.impl.w3, com.applovin.impl.o2
        public int e() {
            if (a7.this.f7313a.t0().b() != null && a7.this.f7313a.t0().b().equals(this.f7321p.b())) {
                return -16776961;
            }
            return super.e();
        }

        @Override // com.applovin.impl.o2
        public SpannedString k() {
            int i10;
            if (o()) {
                i10 = ViewCompat.MEASURED_STATE_MASK;
            } else {
                i10 = -7829368;
            }
            return StringUtils.createSpannedString(this.f7321p.a(), i10, 18, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum c {
        BIDDERS,
        WATERFALL,
        COUNT
    }

    public a7() {
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    @Override // com.applovin.impl.k3
    protected com.applovin.impl.sdk.k getSdk() {
        return this.f7313a;
    }

    public void initialize(List<r2> list, List<r2> list2, final com.applovin.impl.sdk.k kVar) {
        this.f7313a = kVar;
        this.f7314b = list;
        this.f7315c = list2;
        this.f7317e = a(list);
        this.f7318f = a(list2);
        a aVar = new a(this);
        this.f7316d = aVar;
        aVar.a(new p2.a() { // from class: com.applovin.impl.s8
            @Override // com.applovin.impl.p2.a
            public final void a(i2 i2Var, o2 o2Var) {
                a7.this.a(kVar, i2Var, o2Var);
            }
        });
        this.f7316d.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Select Live Network");
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.f7319g = listView;
        listView.setAdapter((ListAdapter) this.f7316d);
    }

    @Override // com.applovin.impl.k3, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        this.f7317e = a(this.f7314b);
        this.f7318f = a(this.f7315c);
        this.f7316d.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.k kVar, i2 i2Var, o2 o2Var) {
        List b10 = a(i2Var).b();
        if (b10.equals(kVar.t0().b())) {
            kVar.t0().a((List) null);
        } else {
            kVar.t0().a(b10);
        }
        this.f7316d.notifyDataSetChanged();
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            r2 r2Var = (r2) it.next();
            arrayList.add(new b(r2Var.d(), this, r2Var));
        }
        return arrayList;
    }

    private r2 a(i2 i2Var) {
        if (i2Var.b() == c.BIDDERS.ordinal()) {
            return (r2) this.f7314b.get(i2Var.a());
        }
        return (r2) this.f7315c.get(i2Var.a());
    }
}
