package com.iab.omid.library.vungle.processor;

import android.view.View;
import androidx.annotation.NonNull;
import com.iab.omid.library.vungle.processor.a;
import com.iab.omid.library.vungle.utils.e;
import com.iab.omid.library.vungle.utils.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final a f23302a;

    public c(a aVar) {
        this.f23302a = aVar;
    }

    @NonNull
    ArrayList<View> a() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        com.iab.omid.library.vungle.internal.c c10 = com.iab.omid.library.vungle.internal.c.c();
        if (c10 != null) {
            Collection<com.iab.omid.library.vungle.adsession.a> a10 = c10.a();
            IdentityHashMap identityHashMap = new IdentityHashMap((a10.size() * 2) + 3);
            for (com.iab.omid.library.vungle.adsession.a aVar : a10) {
                View e10 = aVar.e();
                if (e10 != null && h.g(e10) && (rootView = e10.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float d10 = h.d(rootView);
                    int size = arrayList.size();
                    while (size > 0 && h.d(arrayList.get(size - 1)) > d10) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override // com.iab.omid.library.vungle.processor.a
    public JSONObject a(View view) {
        JSONObject a10 = com.iab.omid.library.vungle.utils.c.a(0, 0, 0, 0);
        com.iab.omid.library.vungle.utils.c.a(a10, e.a());
        return a10;
    }

    @Override // com.iab.omid.library.vungle.processor.a
    public void a(View view, JSONObject jSONObject, a.InterfaceC0344a interfaceC0344a, boolean z10, boolean z11) {
        Iterator<View> it = a().iterator();
        while (it.hasNext()) {
            interfaceC0344a.a(it.next(), this.f23302a, jSONObject, z11);
        }
    }
}
