package com.inmobi.media;

import com.inmobi.unifiedId.InMobiUnifiedIdInterface;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.ye  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3262ye {

    /* renamed from: a  reason: collision with root package name */
    public final Be f25474a;

    /* renamed from: b  reason: collision with root package name */
    public final LinkedHashSet f25475b;

    public C3262ye(Be networkRequest, LinkedHashSet inMobiUnifiedIdInterfaceSet) {
        Intrinsics.checkNotNullParameter(networkRequest, "networkRequest");
        Intrinsics.checkNotNullParameter(inMobiUnifiedIdInterfaceSet, "inMobiUnifiedIdInterfaceSet");
        this.f25474a = networkRequest;
        this.f25475b = inMobiUnifiedIdInterfaceSet;
    }

    public final void a(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        synchronized (AbstractC3246xe.class) {
            try {
                if (this.f25474a.A.get()) {
                    return;
                }
                AbstractC3246xe.a();
                Q5.b(AbstractC3278ze.a(jSONObject, Q5.b()));
                JSONObject a10 = AbstractC3278ze.a(Q5.b());
                for (InMobiUnifiedIdInterface inMobiUnifiedIdInterface : this.f25475b) {
                    if (a10 == null) {
                        AbstractC3278ze.a(inMobiUnifiedIdInterface, null, new Error(InMobiUnifiedIdInterface.NO_LOCAL_DATA_PRESENT));
                    } else {
                        AbstractC3278ze.a(inMobiUnifiedIdInterface, a10, null);
                    }
                }
                this.f25475b.clear();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void a(I9 i92) {
        EnumC3093o4 enumC3093o4;
        synchronized (AbstractC3246xe.class) {
            if (i92 != null) {
                try {
                    enumC3093o4 = i92.f23737a;
                } catch (Throwable th2) {
                    throw th2;
                }
            } else {
                enumC3093o4 = null;
            }
            Objects.toString(enumC3093o4);
            Objects.toString(i92 != null ? i92.f23737a : null);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (i92 != null) {
                linkedHashMap.put("errorCode", i92.f23737a);
            }
            Pd pd2 = Pd.f23988a;
            Pd.b("UnifiedIdNetworkResponseFailure", linkedHashMap, Td.f24224a);
            if (this.f25474a.A.get()) {
                return;
            }
            AbstractC3246xe.a();
            a();
            Unit unit = Unit.f60915a;
        }
    }

    public final void a() {
        JSONObject a10 = AbstractC3278ze.a(Q5.b());
        try {
            if (a10 != null) {
                try {
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
                if (a10.has("ufids") && a10.getJSONArray("ufids").length() > 0) {
                    for (InMobiUnifiedIdInterface inMobiUnifiedIdInterface : this.f25475b) {
                        AbstractC3278ze.a(inMobiUnifiedIdInterface, a10, null);
                    }
                    this.f25475b.clear();
                }
            }
            for (InMobiUnifiedIdInterface inMobiUnifiedIdInterface2 : this.f25475b) {
                AbstractC3278ze.a(inMobiUnifiedIdInterface2, null, new Error(InMobiUnifiedIdInterface.NETWORK_FAILURE_AND_NO_LOCAL_DATA_PRESENT));
            }
            this.f25475b.clear();
        } catch (Throwable th2) {
            this.f25475b.clear();
            throw th2;
        }
    }
}
