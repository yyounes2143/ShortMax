package com.vungle.ads.fpd;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.a1;
import vt.r2;
import vt.w2;
/* compiled from: FirstPartyData.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class FirstPartyData {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Map<String, String> _customData;
    @Nullable
    private volatile Demographic _demographic;
    @Nullable
    private volatile Location _location;
    @Nullable
    private volatile Revenue _revenue;
    @Nullable
    private volatile SessionContext _sessionContext;

    /* compiled from: FirstPartyData.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<FirstPartyData> serializer() {
            return FirstPartyData$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public FirstPartyData() {
    }

    public static final void write$Self(@NotNull FirstPartyData self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self._sessionContext != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, SessionContext$$serializer.INSTANCE, self._sessionContext);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self._demographic != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, Demographic$$serializer.INSTANCE, self._demographic);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self._location != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, Location$$serializer.INSTANCE, self._location);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self._revenue != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, Revenue$$serializer.INSTANCE, self._revenue);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self._customData != null) {
            w2 w2Var = w2.f69539a;
            output.encodeNullableSerializableElement(serialDesc, 4, new a1(w2Var, w2Var), self._customData);
        }
    }

    public final synchronized void clearAll() {
        try {
            this._sessionContext = null;
            this._demographic = null;
            this._location = null;
            this._revenue = null;
            Map<String, String> map = this._customData;
            if (map != null) {
                map.clear();
            }
            this._customData = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @NotNull
    public final synchronized Map<String, String> getCustomData() {
        Map<String, String> map;
        map = this._customData;
        if (map == null) {
            map = new ConcurrentHashMap<>();
            this._customData = map;
        }
        return map;
    }

    @NotNull
    public final synchronized Demographic getDemographic() {
        Demographic demographic;
        demographic = this._demographic;
        if (demographic == null) {
            demographic = new Demographic();
            this._demographic = demographic;
        }
        return demographic;
    }

    @NotNull
    public final synchronized Location getLocation() {
        Location location;
        location = this._location;
        if (location == null) {
            location = new Location();
            this._location = location;
        }
        return location;
    }

    @NotNull
    public final synchronized Revenue getRevenue() {
        Revenue revenue;
        revenue = this._revenue;
        if (revenue == null) {
            revenue = new Revenue();
            this._revenue = revenue;
        }
        return revenue;
    }

    @NotNull
    public final synchronized SessionContext getSessionContext() {
        SessionContext sessionContext;
        sessionContext = this._sessionContext;
        if (sessionContext == null) {
            sessionContext = new SessionContext();
            this._sessionContext = sessionContext;
        }
        return sessionContext;
    }

    @c
    public /* synthetic */ FirstPartyData(int i10, SessionContext sessionContext, Demographic demographic, Location location, Revenue revenue, Map map, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this._sessionContext = null;
        } else {
            this._sessionContext = sessionContext;
        }
        if ((i10 & 2) == 0) {
            this._demographic = null;
        } else {
            this._demographic = demographic;
        }
        if ((i10 & 4) == 0) {
            this._location = null;
        } else {
            this._location = location;
        }
        if ((i10 & 8) == 0) {
            this._revenue = null;
        } else {
            this._revenue = revenue;
        }
        if ((i10 & 16) == 0) {
            this._customData = null;
        } else {
            this._customData = map;
        }
    }

    private static /* synthetic */ void get_customData$annotations() {
    }

    private static /* synthetic */ void get_demographic$annotations() {
    }

    private static /* synthetic */ void get_location$annotations() {
    }

    private static /* synthetic */ void get_revenue$annotations() {
    }

    private static /* synthetic */ void get_sessionContext$annotations() {
    }
}
