package fr;

import android.location.Location;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.EventType;
import com.explorestack.protobuf.adcom.LocationType;
import com.explorestack.protobuf.adcom.Placement;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import io.bidmachine.TrackEventType;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.protobuf.AdExtension;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: ProtoUtils.java */
/* loaded from: classes8.dex */
public class e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProtoUtils.java */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51934a;

        static {
            int[] iArr = new int[Value.KindCase.values().length];
            f51934a = iArr;
            try {
                iArr[Value.KindCase.NUMBER_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51934a[Value.KindCase.STRING_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51934a[Value.KindCase.BOOL_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51934a[Value.KindCase.STRUCT_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f51934a[Value.KindCase.LIST_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static void a(@NonNull Map<TrackEventType, List<String>> map, @NonNull TrackEventType trackEventType, @Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        List<String> list = map.get(trackEventType);
        if (list == null) {
            list = new ArrayList<>(1);
            map.put(trackEventType, list);
        }
        list.add(str);
    }

    @NonNull
    public static Context.Geo.Builder b(@NonNull android.content.Context context, @Nullable Location location, @Nullable Location location2, boolean z10) {
        Context.Geo.Builder newBuilder = Context.Geo.newBuilder();
        d(newBuilder, io.bidmachine.core.g.v(context, location, location2), z10);
        return newBuilder;
    }

    @Nullable
    public static String c(@Nullable MessageLite messageLite) {
        if (messageLite == null) {
            return null;
        }
        try {
            return Base64.encodeToString(messageLite.toByteArray(), 2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void d(@NonNull Context.Geo.Builder builder, @Nullable Location location, boolean z10) {
        if (z10) {
            builder.setUtcoffset(io.bidmachine.core.g.E());
        }
        if (location != null) {
            builder.setType(g(location));
            builder.setLat((float) location.getLatitude());
            builder.setLon((float) location.getLongitude());
            builder.setAccur((int) location.getAccuracy());
            builder.setLastfix(location.getTime());
        }
    }

    public static void e(@NonNull Struct.Builder builder, @NonNull Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String key = entry.getKey();
                if (value.getClass() == String.class) {
                    builder.putFields(key, Value.newBuilder().setStringValue((String) value).build());
                } else if (value.getClass() == Boolean.class) {
                    builder.putFields(key, Value.newBuilder().setBoolValue(((Boolean) value).booleanValue()).build());
                } else if (value instanceof Number) {
                    builder.putFields(key, Value.newBuilder().setNumberValue(((Number) value).doubleValue()).build());
                }
            }
        }
    }

    @Nullable
    public static AdExtension f(@NonNull Ad ad2) {
        Any extProto;
        int extProtoCount = ad2.getExtProtoCount();
        if (extProtoCount > 0) {
            for (int i10 = 0; i10 < extProtoCount; i10++) {
                try {
                    extProto = ad2.getExtProto(i10);
                } catch (Throwable th2) {
                    io.bidmachine.core.a.m(th2);
                }
                if (extProto.is(AdExtension.class)) {
                    return (AdExtension) extProto.unpack(AdExtension.class);
                }
                continue;
            }
            return null;
        }
        return null;
    }

    public static LocationType g(@Nullable Location location) {
        if (location != null) {
            if ("gps".equals(location.getProvider())) {
                return LocationType.LOCATION_TYPE_GPS;
            }
            if ("network".equals(location.getProvider()) || "passive".equals(location.getProvider())) {
                return LocationType.LOCATION_TYPE_IP;
            }
        }
        return LocationType.LOCATION_TYPE_INVALID;
    }

    public static boolean h(@NonNull Placement placement, @NonNull BannerSize bannerSize) {
        Placement.DisplayPlacement display = placement.getDisplay();
        if (!display.getInstl() && bannerSize.width == display.getW() && bannerSize.height == display.getH()) {
            return true;
        }
        return false;
    }

    public static boolean i(@Nullable ListValue listValue) {
        if (listValue != null && listValue.getValuesCount() > 0) {
            return false;
        }
        return true;
    }

    public static boolean j(@Nullable Struct struct) {
        if (struct != null && struct.getFieldsCount() > 0) {
            return false;
        }
        return true;
    }

    public static boolean k(@NonNull Placement placement) {
        if (m(placement)) {
            return false;
        }
        Placement.DisplayPlacement display = placement.getDisplay();
        if (display != Placement.DisplayPlacement.getDefaultInstance() && display.getInstl()) {
            return true;
        }
        return n(placement);
    }

    public static boolean l(@NonNull Placement placement) {
        if (placement.getDisplay().getNativefmt().getAssetCount() > 0) {
            return true;
        }
        return false;
    }

    public static boolean m(@NonNull Placement placement) {
        return placement.getReward();
    }

    public static boolean n(@NonNull Placement placement) {
        if (placement.getVideo() != Placement.VideoPlacement.getDefaultInstance()) {
            return true;
        }
        return false;
    }

    @NonNull
    public static Timestamp o(long j10) {
        return Timestamp.newBuilder().setSeconds(j10 / 1000).setNanos(((int) (j10 % 1000)) * TTVideoEngineInterface.PLAYER_TIME_BASE).build();
    }

    public static void p(@NonNull Map<TrackEventType, List<String>> map, @Nullable List<Ad.Event> list) {
        TrackEventType fromNumber;
        if (list != null && !list.isEmpty()) {
            for (Ad.Event event : list) {
                if (event.getType() == EventType.EVENT_TYPE_IMPRESSION) {
                    fromNumber = TrackEventType.Show;
                } else {
                    fromNumber = TrackEventType.fromNumber(event.getTypeValue());
                }
                if (fromNumber != null) {
                    a(map, fromNumber, event.getUrl());
                }
            }
        }
    }

    @Nullable
    public static List<Object> q(@Nullable ListValue listValue) {
        if (i(listValue)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Value value : listValue.getValuesList()) {
            Object t10 = t(value);
            if (t10 != null) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    @Nullable
    public static ListValue.Builder r(@Nullable List<?> list) {
        if (list != null && !list.isEmpty()) {
            ListValue.Builder newBuilder = ListValue.newBuilder();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                Value.Builder v10 = v(it.next());
                if (v10 != null) {
                    newBuilder.addValues(v10);
                }
            }
            return newBuilder;
        }
        return null;
    }

    @Nullable
    public static Map<String, Object> s(@Nullable Struct struct) {
        Object t10;
        if (j(struct)) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Value> entry : struct.getFieldsMap().entrySet()) {
            String key = entry.getKey();
            Value value = entry.getValue();
            if (!TextUtils.isEmpty(key) && value != null && (t10 = t(value)) != null) {
                hashMap.put(key, t10);
            }
        }
        return hashMap;
    }

    @Nullable
    public static Object t(@Nullable Value value) {
        if (value == null) {
            return null;
        }
        int i10 = a.f51934a[value.getKindCase().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return null;
                        }
                        return q(value.getListValue());
                    }
                    return s(value.getStructValue());
                }
                return Boolean.valueOf(value.getBoolValue());
            }
            return value.getStringValue();
        }
        return Double.valueOf(value.getNumberValue());
    }

    @Nullable
    public static Struct.Builder u(@Nullable Map<?, ?> map) {
        Value.Builder v10;
        if (map != null && !map.isEmpty()) {
            Struct.Builder newBuilder = Struct.newBuilder();
            for (Map.Entry<?, ?> entry : map.entrySet()) {
                Object key = entry.getKey();
                if (key != null) {
                    String valueOf = String.valueOf(key);
                    if (!TextUtils.isEmpty(valueOf) && (v10 = v(entry.getValue())) != null) {
                        newBuilder.putFields(valueOf, v10.build());
                    }
                }
            }
            return newBuilder;
        }
        return null;
    }

    @Nullable
    public static Value.Builder v(@Nullable Object obj) {
        Struct.Builder u10;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Value) {
            return ((Value) obj).toBuilder();
        }
        if (obj instanceof Value.Builder) {
            return (Value.Builder) obj;
        }
        if (obj instanceof String) {
            return Value.newBuilder().setStringValue((String) obj);
        }
        if (obj instanceof Number) {
            return Value.newBuilder().setNumberValue(((Number) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return Value.newBuilder().setBoolValue(((Boolean) obj).booleanValue());
        }
        if (obj instanceof List) {
            ListValue.Builder r10 = r((List) obj);
            if (r10 != null) {
                return Value.newBuilder().setListValue(r10);
            }
        } else if ((obj instanceof Map) && (u10 = u((Map) obj)) != null) {
            return Value.newBuilder().setStructValue(u10);
        }
        return null;
    }

    @Nullable
    public static Value w(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Value) {
            return (Value) obj;
        }
        if (obj instanceof Value.Builder) {
            return ((Value.Builder) obj).build();
        }
        Value.Builder v10 = v(obj);
        if (v10 == null) {
            return null;
        }
        return v10.build();
    }
}
