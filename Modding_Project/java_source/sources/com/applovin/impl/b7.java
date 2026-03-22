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
public abstract class b7 extends k3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f7583a;

    /* renamed from: b  reason: collision with root package name */
    private List f7584b;

    /* renamed from: c  reason: collision with root package name */
    private p2 f7585c;

    /* renamed from: d  reason: collision with root package name */
    private List f7586d;

    /* renamed from: e  reason: collision with root package name */
    private ListView f7587e;

    /* loaded from: classes2.dex */
    class a extends p2 {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ List f7588e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, List list) {
            super(context);
            this.f7588e = list;
        }

        @Override // com.applovin.impl.p2
        protected o2 a() {
            return new o2.b(o2.c.SECTION_CENTERED).d("Select a network to load test ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session.").a();
        }

        @Override // com.applovin.impl.p2
        protected int b() {
            return 1;
        }

        @Override // com.applovin.impl.p2
        protected List c(int i10) {
            return b7.this.f7586d;
        }

        @Override // com.applovin.impl.p2
        protected int d(int i10) {
            return this.f7588e.size();
        }

        @Override // com.applovin.impl.p2
        protected o2 e(int i10) {
            return new t4("TEST MODE NETWORKS");
        }
    }

    /* loaded from: classes2.dex */
    class b implements p2.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f7590a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.k f7591b;

        b(List list, com.applovin.impl.sdk.k kVar) {
            this.f7590a = list;
            this.f7591b = kVar;
        }

        @Override // com.applovin.impl.p2.a
        public void a(i2 i2Var, o2 o2Var) {
            List u10 = ((b3) this.f7590a.get(i2Var.a())).u();
            if (u10.equals(this.f7591b.t0().b())) {
                this.f7591b.t0().a((List) null);
            } else {
                this.f7591b.t0().a(u10);
            }
            b7.this.f7585c.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends w3 {

        /* renamed from: p  reason: collision with root package name */
        final /* synthetic */ b3 f7593p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(b3 b3Var, Context context, b3 b3Var2) {
            super(b3Var, context);
            this.f7593p = b3Var2;
        }

        @Override // com.applovin.impl.w3, com.applovin.impl.o2
        public int d() {
            if (this.f7593p.u().equals(b7.this.f7583a.t0().b())) {
                return R.drawable.applovin_ic_check_mark_borderless;
            }
            return 0;
        }

        @Override // com.applovin.impl.w3, com.applovin.impl.o2
        public int e() {
            if (this.f7593p.u().equals(b7.this.f7583a.t0().b())) {
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
            return StringUtils.createSpannedString(this.f7593p.g(), i10, 18, 1);
        }
    }

    public b7() {
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    @Override // com.applovin.impl.k3
    protected com.applovin.impl.sdk.k getSdk() {
        return this.f7583a;
    }

    public void initialize(List<b3> list, com.applovin.impl.sdk.k kVar) {
        this.f7583a = kVar;
        this.f7584b = list;
        this.f7586d = a(list);
        a aVar = new a(this, list);
        this.f7585c = aVar;
        aVar.a(new b(list, kVar));
        this.f7585c.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Select Test Mode Network");
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.f7587e = listView;
        listView.setAdapter((ListAdapter) this.f7585c);
    }

    @Override // com.applovin.impl.k3, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        this.f7586d = a(this.f7584b);
        this.f7585c.notifyDataSetChanged();
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b3 b3Var = (b3) it.next();
            arrayList.add(new c(b3Var, this, b3Var));
        }
        return arrayList;
    }
}
