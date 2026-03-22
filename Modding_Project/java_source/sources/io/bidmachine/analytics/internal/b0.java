package io.bidmachine.analytics.internal;

import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.Value;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.List;
import java.util.Map;
import kotlin.Result;
/* loaded from: classes7.dex */
public abstract class b0 {
    public static final Timestamp a(long j10) {
        long j11 = 1000;
        return Timestamp.newBuilder().setSeconds(j10 / j11).setNanos((int) ((j10 % j11) * ((long) TTVideoEngineInterface.PLAYER_TIME_BASE))).build();
    }

    public static final StringValue a(String str) {
        return StringValue.newBuilder().setValue(str).build();
    }

    public static final Struct a(Map map) {
        Value.Builder numberValue;
        Struct.Builder newBuilder = Struct.newBuilder();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            try {
                Result.a aVar = Result.f60901b;
                String valueOf = String.valueOf(key);
                if (value instanceof List) {
                    numberValue = Value.newBuilder().setListValue(a((List) value));
                } else if (value instanceof Map) {
                    numberValue = Value.newBuilder().setStructValue(a((Map) value));
                } else if (value instanceof Boolean) {
                    numberValue = Value.newBuilder().setBoolValue(((Boolean) value).booleanValue());
                } else {
                    numberValue = value instanceof Number ? Value.newBuilder().setNumberValue(((Number) value).doubleValue()) : Value.newBuilder().setStringValue(String.valueOf(value));
                }
                Result.d(newBuilder.putFields(valueOf, numberValue.build()));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                Result.d(kotlin.f.a(th2));
            }
        }
        return newBuilder.build();
    }

    public static final ListValue a(List list) {
        Value.Builder numberValue;
        ListValue.Builder newBuilder = ListValue.newBuilder();
        for (Object obj : list) {
            try {
                Result.a aVar = Result.f60901b;
                if (obj instanceof List) {
                    numberValue = Value.newBuilder().setListValue(a((List) obj));
                } else if (obj instanceof Map) {
                    numberValue = Value.newBuilder().setStructValue(a((Map) obj));
                } else if (obj instanceof Boolean) {
                    numberValue = Value.newBuilder().setBoolValue(((Boolean) obj).booleanValue());
                } else {
                    numberValue = obj instanceof Number ? Value.newBuilder().setNumberValue(((Number) obj).doubleValue()) : Value.newBuilder().setStringValue(String.valueOf(obj));
                }
                Result.d(newBuilder.addValues(numberValue.build()));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                Result.d(kotlin.f.a(th2));
            }
        }
        return newBuilder.build();
    }
}
