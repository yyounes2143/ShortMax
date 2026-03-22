package io.bidmachine.protobuf.sessionmetrics;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.MapField;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.s0;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.w;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public final class SessionMetricsOuterClass {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n)bidmachine/protobuf/session_metrics.proto\u0012\u000esessionmetrics\"Õ\u0002\n\tUserState\u0012 \n\u0018last_processed_timestamp\u0018\u0001 \u0001(\u0003\u0012?\n\u000bimpressions\u0018\u0002 \u0003(\u000b2*.sessionmetrics.UserState.ImpressionsEntry\u0012>\n\u000bad_requests\u0018\u0003 \u0003(\u000b2).sessionmetrics.UserState.AdRequestsEntry\u001aV\n\u0010ImpressionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0005\u00121\n\u0005value\u0018\u0002 \u0001(\u000b2\".sessionmetrics.AdDomainTimestamps:\u00028\u0001\u001aM\n\u000fAdRequestsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0005\u0012)\n\u0005value\u0018\u0002 \u0001(\u000b2\u001a.sessionmetrics.Timestamps:\u00028\u0001\"\u0090\u0005\n\u000bUserSession\u0012\u0015\n\rlast_activity\u0018\u0001 \u0001(\u0003\u0012E\n\u0012metrics_by_ad_type\u0018\u0003 \u0003(\u000b2).sessionmetrics.UserSession.AdTypeMetrics\u0012\u0015\n\rsession_start\u0018\u0004 \u0001(\u0003\u001a@\n\u0004Ecpm\u0012\u0014\n\ffirst_prices\u0018\u0001 \u0003(\u0001\u0012\u0013\n\u000blast_prices\u0018\u0002 \u0003(\u0001\u0012\r\n\u0005count\u0018\u0003 \u0001(\u0005\u001aX\n\u0007Auction\u0012\u0019\n\u0011source_request_id\u0018\u0001 \u0001(\f\u0012\u0018\n\u0010winner_bidder_id\u0018\u0002 \u0001(\r\u0012\u0018\n\u0010losers_bidder_id\u0018\u0003 \u0003(\r\u001aï\u0002\n\rAdTypeMetrics\u0012'\n\u0007ad_type\u0018\u0001 \u0001(\u000e2\u0016.sessionmetrics.AdType\u0012\u0013\n\u000bimpressions\u0018\u0002 \u0001(\u0005\u0012\u0013\n\u000bad_requests\u0018\u0003 \u0001(\u0005\u0012\f\n\u0004bids\u0018\u0004 \u0001(\u0005\u0012\f\n\u0004wins\u0018\u0005 \u0001(\u0005\u0012\u000e\n\u0006losses\u0018\u0006 \u0001(\u0005\u0012\r\n\u0005lurls\u0018\u0007 \u0001(\u0005\u0012\r\n\u0005nurls\u0018\b \u0001(\u0005\u0012\u001c\n\u0014cumulative_bid_price\u0018\t \u0001(\u0002\u0012\u001d\n\u0015cumulative_lurl_price\u0018\n \u0001(\u0002\u0012\u001d\n\u0015cumulative_nurl_price\u0018\u000b \u0001(\u0002\u0012.\n\u0004ecpm\u0018\f \u0001(\u000b2 .sessionmetrics.UserSession.Ecpm\u00125\n\bauctions\u0018\r \u0003(\u000b2#.sessionmetrics.UserSession.Auction\"\u009f\u0001\n\nTimestamps\u0012\u0016\n\u000elast_timestamp\u0018\u0001 \u0001(\u0003\u0012\u000e\n\u0006deltas\u0018\u0002 \u0003(\r\u00129\n\u000bday_buckets\u0018\u0003 \u0003(\u000b2$.sessionmetrics.Timestamps.DayBucket\u001a.\n\tDayBucket\u0012\u0012\n\nstart_time\u0018\u0001 \u0001(\u0003\u0012\r\n\u0005count\u0018\u0002 \u0001(\u0005\"©\u0001\n\u0012AdDomainTimestamps\u0012E\n\nad_domains\u0018\u0001 \u0003(\u000b21.sessionmetrics.AdDomainTimestamps.AdDomainsEntry\u001aL\n\u000eAdDomainsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012)\n\u0005value\u0018\u0002 \u0001(\u000b2\u001a.sessionmetrics.Timestamps:\u00028\u0001\"B\n\rWindowMetrics\u0012\u000f\n\u0007last_1h\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007last_1d\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007last_7d\u0018\u0003 \u0001(\u0005\"Ö\u0001\n\u0011ImpressionMetrics\u0012'\n\u0007ad_type\u0018\u0001 \u0001(\u000e2\u0016.sessionmetrics.AdType\u0012@\n\u0007domains\u0018\u0002 \u0003(\u000b2/.sessionmetrics.ImpressionMetrics.DomainMetrics\u001aV\n\rDomainMetrics\u0012\u000e\n\u0006domain\u0018\u0001 \u0001(\t\u00125\n\u000ewindow_metrics\u0018\u0002 \u0001(\u000b2\u001d.sessionmetrics.WindowMetrics\"\u008b\u0001\n\u0010AdRequestMetrics\u0012'\n\u0007ad_type\u0018\u0001 \u0001(\u000e2\u0016.sessionmetrics.AdType\u00125\n\u000ewindow_metrics\u0018\u0002 \u0001(\u000b2\u001d.sessionmetrics.WindowMetrics\u0012\u0017\n\u000flast_timestamps\u0018\u0003 \u0003(\u0003\"µ\u0001\n\u000eSessionMetrics\u00126\n\u000bimpressions\u0018\u0001 \u0003(\u000b2!.sessionmetrics.ImpressionMetrics\u00125\n\u000bad_requests\u0018\u0002 \u0003(\u000b2 .sessionmetrics.AdRequestMetrics\u00124\n\u000fcurrent_session\u0018\u0003 \u0001(\u000b2\u001b.sessionmetrics.UserSession\"1\n\u000bUserIdQuery\u0012\u000f\n\u0007user_id\u0018\u0001 \u0001(\t\u0012\u0011\n\ttimestamp\u0018\u0002 \u0001(\u0003\"X\n\tAdRequest\u0012\u000f\n\u0007user_id\u0018\u0001 \u0001(\t\u0012'\n\u0007ad_type\u0018\u0002 \u0001(\u000e2\u0016.sessionmetrics.AdType\u0012\u0011\n\ttimestamp\u0018\u0003 \u0001(\u0003*A\n\u0006AdType\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u0010\n\fINTERSTITIAL\u0010\u0001\u0012\f\n\bREWARDED\u0010\u0002\u0012\n\n\u0006BANNER\u0010\u00032²\u0001\n\u000eSessionService\u0012P\n\u0011GetSessionMetrics\u0012\u001b.sessionmetrics.UserIdQuery\u001a\u001e.sessionmetrics.SessionMetrics\u0012N\n\u0011RegisterAdRequest\u0012\u0019.sessionmetrics.AdRequest\u001a\u001e.sessionmetrics.SessionMetricsB'\n%io.bidmachine.protobuf.sessionmetricsb\u0006proto3"}, new Descriptors.FileDescriptor[0]);
    private static final Descriptors.Descriptor internal_static_sessionmetrics_AdDomainTimestamps_AdDomainsEntry_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_AdDomainTimestamps_AdDomainsEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_AdDomainTimestamps_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_AdDomainTimestamps_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_AdRequestMetrics_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_AdRequestMetrics_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_AdRequest_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_AdRequest_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_ImpressionMetrics_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_ImpressionMetrics_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_SessionMetrics_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_SessionMetrics_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_Timestamps_DayBucket_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_Timestamps_DayBucket_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_Timestamps_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_Timestamps_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_UserIdQuery_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_UserIdQuery_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_UserSession_AdTypeMetrics_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_UserSession_AdTypeMetrics_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_UserSession_Auction_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_UserSession_Auction_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_UserSession_Ecpm_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_UserSession_Ecpm_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_UserSession_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_UserSession_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_UserState_AdRequestsEntry_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_UserState_AdRequestsEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_UserState_ImpressionsEntry_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_UserState_ImpressionsEntry_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_UserState_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_UserState_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_sessionmetrics_WindowMetrics_descriptor;
    private static final GeneratedMessageV3.e internal_static_sessionmetrics_WindowMetrics_fieldAccessorTable;

    /* loaded from: classes8.dex */
    public static final class AdDomainTimestamps extends GeneratedMessageV3 implements AdDomainTimestampsOrBuilder {
        public static final int AD_DOMAINS_FIELD_NUMBER = 1;
        private static final AdDomainTimestamps DEFAULT_INSTANCE = new AdDomainTimestamps();
        private static final j1<AdDomainTimestamps> PARSER = new b<AdDomainTimestamps>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestamps.1
            @Override // com.explorestack.protobuf.j1
            public AdDomainTimestamps parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new AdDomainTimestamps(nVar, yVar);
            }
        };
        private static final long serialVersionUID = 0;
        private MapField<String, Timestamps> adDomains_;
        private byte memoizedIsInitialized;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes8.dex */
        public static final class AdDomainsDefaultEntryHolder {
            static final s0<String, Timestamps> defaultEntry = s0.q(SessionMetricsOuterClass.internal_static_sessionmetrics_AdDomainTimestamps_AdDomainsEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Timestamps.getDefaultInstance());

            private AdDomainsDefaultEntryHolder() {
            }
        }

        public static AdDomainTimestamps getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_AdDomainTimestamps_descriptor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<String, Timestamps> internalGetAdDomains() {
            MapField<String, Timestamps> mapField = this.adDomains_;
            if (mapField == null) {
                return MapField.g(AdDomainsDefaultEntryHolder.defaultEntry);
            }
            return mapField;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static AdDomainTimestamps parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AdDomainTimestamps) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AdDomainTimestamps parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<AdDomainTimestamps> parser() {
            return PARSER;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
        public boolean containsAdDomains(String str) {
            str.getClass();
            return internalGetAdDomains().i().containsKey(str);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AdDomainTimestamps)) {
                return super.equals(obj);
            }
            AdDomainTimestamps adDomainTimestamps = (AdDomainTimestamps) obj;
            if (internalGetAdDomains().equals(adDomainTimestamps.internalGetAdDomains()) && this.unknownFields.equals(adDomainTimestamps.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
        @Deprecated
        public Map<String, Timestamps> getAdDomains() {
            return getAdDomainsMap();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
        public int getAdDomainsCount() {
            return internalGetAdDomains().i().size();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
        public Map<String, Timestamps> getAdDomainsMap() {
            return internalGetAdDomains().i();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
        public Timestamps getAdDomainsOrDefault(String str, Timestamps timestamps) {
            str.getClass();
            Map<String, Timestamps> i10 = internalGetAdDomains().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            return timestamps;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
        public Timestamps getAdDomainsOrThrow(String str) {
            str.getClass();
            Map<String, Timestamps> i10 = internalGetAdDomains().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<AdDomainTimestamps> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = 0;
            for (Map.Entry<String, Timestamps> entry : internalGetAdDomains().i().entrySet()) {
                i11 += CodedOutputStream.G(1, AdDomainsDefaultEntryHolder.defaultEntry.newBuilderForType().o(entry.getKey()).r(entry.getValue()).build());
            }
            int serializedSize = i11 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (!internalGetAdDomains().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 1) * 53) + internalGetAdDomains().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_AdDomainTimestamps_fieldAccessorTable.d(AdDomainTimestamps.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected MapField internalGetMapField(int i10) {
            if (i10 == 1) {
                return internalGetAdDomains();
            }
            throw new RuntimeException("Invalid map field number: " + i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new AdDomainTimestamps();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetAdDomains(), AdDomainsDefaultEntryHolder.defaultEntry, 1);
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements AdDomainTimestampsOrBuilder {
            private MapField<String, Timestamps> adDomains_;
            private int bitField0_;

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_AdDomainTimestamps_descriptor;
            }

            private MapField<String, Timestamps> internalGetAdDomains() {
                MapField<String, Timestamps> mapField = this.adDomains_;
                if (mapField == null) {
                    return MapField.g(AdDomainsDefaultEntryHolder.defaultEntry);
                }
                return mapField;
            }

            private MapField<String, Timestamps> internalGetMutableAdDomains() {
                onChanged();
                if (this.adDomains_ == null) {
                    this.adDomains_ = MapField.p(AdDomainsDefaultEntryHolder.defaultEntry);
                }
                if (!this.adDomains_.m()) {
                    this.adDomains_ = this.adDomains_.f();
                }
                return this.adDomains_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearAdDomains() {
                internalGetMutableAdDomains().l().clear();
                return this;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
            public boolean containsAdDomains(String str) {
                str.getClass();
                return internalGetAdDomains().i().containsKey(str);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
            @Deprecated
            public Map<String, Timestamps> getAdDomains() {
                return getAdDomainsMap();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
            public int getAdDomainsCount() {
                return internalGetAdDomains().i().size();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
            public Map<String, Timestamps> getAdDomainsMap() {
                return internalGetAdDomains().i();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
            public Timestamps getAdDomainsOrDefault(String str, Timestamps timestamps) {
                str.getClass();
                Map<String, Timestamps> i10 = internalGetAdDomains().i();
                if (i10.containsKey(str)) {
                    return i10.get(str);
                }
                return timestamps;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestampsOrBuilder
            public Timestamps getAdDomainsOrThrow(String str) {
                str.getClass();
                Map<String, Timestamps> i10 = internalGetAdDomains().i();
                if (i10.containsKey(str)) {
                    return i10.get(str);
                }
                throw new IllegalArgumentException();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_AdDomainTimestamps_descriptor;
            }

            @Deprecated
            public Map<String, Timestamps> getMutableAdDomains() {
                return internalGetMutableAdDomains().l();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_AdDomainTimestamps_fieldAccessorTable.d(AdDomainTimestamps.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected MapField internalGetMapField(int i10) {
                if (i10 == 1) {
                    return internalGetAdDomains();
                }
                throw new RuntimeException("Invalid map field number: " + i10);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected MapField internalGetMutableMapField(int i10) {
                if (i10 == 1) {
                    return internalGetMutableAdDomains();
                }
                throw new RuntimeException("Invalid map field number: " + i10);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder putAdDomains(String str, Timestamps timestamps) {
                str.getClass();
                timestamps.getClass();
                internalGetMutableAdDomains().l().put(str, timestamps);
                return this;
            }

            public Builder putAllAdDomains(Map<String, Timestamps> map) {
                internalGetMutableAdDomains().l().putAll(map);
                return this;
            }

            public Builder removeAdDomains(String str) {
                str.getClass();
                internalGetMutableAdDomains().l().remove(str);
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdDomainTimestamps build() {
                AdDomainTimestamps buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdDomainTimestamps buildPartial() {
                AdDomainTimestamps adDomainTimestamps = new AdDomainTimestamps(this);
                adDomainTimestamps.adDomains_ = internalGetAdDomains();
                adDomainTimestamps.adDomains_.n();
                onBuilt();
                return adDomainTimestamps;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public AdDomainTimestamps mo4630getDefaultInstanceForType() {
                return AdDomainTimestamps.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(j2 j2Var) {
                return (Builder) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(j2 j2Var) {
                return (Builder) super.mergeUnknownFields(j2Var);
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                internalGetMutableAdDomains().a();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof AdDomainTimestamps) {
                    return mergeFrom((AdDomainTimestamps) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AdDomainTimestamps adDomainTimestamps) {
                if (adDomainTimestamps == AdDomainTimestamps.getDefaultInstance()) {
                    return this;
                }
                internalGetMutableAdDomains().o(adDomainTimestamps.internalGetAdDomains());
                mergeUnknownFields(((GeneratedMessageV3) adDomainTimestamps).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestamps.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestamps.access$12600()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$AdDomainTimestamps r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestamps) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$AdDomainTimestamps r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestamps) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdDomainTimestamps.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$AdDomainTimestamps$Builder");
            }
        }

        public static Builder newBuilder(AdDomainTimestamps adDomainTimestamps) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(adDomainTimestamps);
        }

        public static AdDomainTimestamps parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private AdDomainTimestamps(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AdDomainTimestamps parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (AdDomainTimestamps) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static AdDomainTimestamps parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public AdDomainTimestamps mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static AdDomainTimestamps parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private AdDomainTimestamps() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AdDomainTimestamps parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static AdDomainTimestamps parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
        private AdDomainTimestamps(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K != 10) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    if (!z11) {
                                        this.adDomains_ = MapField.p(AdDomainsDefaultEntryHolder.defaultEntry);
                                        z11 = true;
                                    }
                                    s0 s0Var = (s0) nVar.A(AdDomainsDefaultEntryHolder.defaultEntry.getParserForType(), yVar);
                                    this.adDomains_.l().put(s0Var.h(), s0Var.j());
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static AdDomainTimestamps parseFrom(InputStream inputStream) throws IOException {
            return (AdDomainTimestamps) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static AdDomainTimestamps parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (AdDomainTimestamps) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static AdDomainTimestamps parseFrom(n nVar) throws IOException {
            return (AdDomainTimestamps) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static AdDomainTimestamps parseFrom(n nVar, y yVar) throws IOException {
            return (AdDomainTimestamps) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface AdDomainTimestampsOrBuilder extends MessageOrBuilder {
        boolean containsAdDomains(String str);

        @Deprecated
        Map<String, Timestamps> getAdDomains();

        int getAdDomainsCount();

        Map<String, Timestamps> getAdDomainsMap();

        Timestamps getAdDomainsOrDefault(String str, Timestamps timestamps);

        Timestamps getAdDomainsOrThrow(String str);

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public static final class AdRequest extends GeneratedMessageV3 implements AdRequestOrBuilder {
        public static final int AD_TYPE_FIELD_NUMBER = 2;
        private static final AdRequest DEFAULT_INSTANCE = new AdRequest();
        private static final j1<AdRequest> PARSER = new b<AdRequest>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequest.1
            @Override // com.explorestack.protobuf.j1
            public AdRequest parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new AdRequest(nVar, yVar);
            }
        };
        public static final int TIMESTAMP_FIELD_NUMBER = 3;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int adType_;
        private byte memoizedIsInitialized;
        private long timestamp_;
        private volatile Object userId_;

        public static AdRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_AdRequest_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static AdRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AdRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AdRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<AdRequest> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AdRequest)) {
                return super.equals(obj);
            }
            AdRequest adRequest = (AdRequest) obj;
            if (getUserId().equals(adRequest.getUserId()) && this.adType_ == adRequest.adType_ && getTimestamp() == adRequest.getTimestamp() && this.unknownFields.equals(adRequest.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestOrBuilder
        public AdType getAdType() {
            AdType valueOf = AdType.valueOf(this.adType_);
            if (valueOf == null) {
                return AdType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestOrBuilder
        public int getAdTypeValue() {
            return this.adType_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<AdRequest> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (!getUserIdBytes().isEmpty()) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.userId_);
            } else {
                i10 = 0;
            }
            if (this.adType_ != AdType.UNKNOWN.getNumber()) {
                i10 += CodedOutputStream.l(2, this.adType_);
            }
            long j10 = this.timestamp_;
            if (j10 != 0) {
                i10 += CodedOutputStream.z(3, j10);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestOrBuilder
        public long getTimestamp() {
            return this.timestamp_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestOrBuilder
        public String getUserId() {
            Object obj = this.userId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.userId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestOrBuilder
        public ByteString getUserIdBytes() {
            Object obj = this.userId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUserId().hashCode()) * 37) + 2) * 53) + this.adType_) * 37) + 3) * 53) + i0.i(getTimestamp())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_AdRequest_fieldAccessorTable.d(AdRequest.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new AdRequest();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getUserIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.userId_);
            }
            if (this.adType_ != AdType.UNKNOWN.getNumber()) {
                codedOutputStream.v0(2, this.adType_);
            }
            long j10 = this.timestamp_;
            if (j10 != 0) {
                codedOutputStream.J0(3, j10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements AdRequestOrBuilder {
            private int adType_;
            private long timestamp_;
            private Object userId_;

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_AdRequest_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearAdType() {
                this.adType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTimestamp() {
                this.timestamp_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.userId_ = AdRequest.getDefaultInstance().getUserId();
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestOrBuilder
            public AdType getAdType() {
                AdType valueOf = AdType.valueOf(this.adType_);
                if (valueOf == null) {
                    return AdType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestOrBuilder
            public int getAdTypeValue() {
                return this.adType_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_AdRequest_descriptor;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestOrBuilder
            public long getTimestamp() {
                return this.timestamp_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestOrBuilder
            public String getUserId() {
                Object obj = this.userId_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.userId_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestOrBuilder
            public ByteString getUserIdBytes() {
                Object obj = this.userId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.userId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_AdRequest_fieldAccessorTable.d(AdRequest.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setAdType(AdType adType) {
                adType.getClass();
                this.adType_ = adType.getNumber();
                onChanged();
                return this;
            }

            public Builder setAdTypeValue(int i10) {
                this.adType_ = i10;
                onChanged();
                return this;
            }

            public Builder setTimestamp(long j10) {
                this.timestamp_ = j10;
                onChanged();
                return this;
            }

            public Builder setUserId(String str) {
                str.getClass();
                this.userId_ = str;
                onChanged();
                return this;
            }

            public Builder setUserIdBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                this.userId_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.userId_ = "";
                this.adType_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdRequest build() {
                AdRequest buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdRequest buildPartial() {
                AdRequest adRequest = new AdRequest(this);
                adRequest.userId_ = this.userId_;
                adRequest.adType_ = this.adType_;
                adRequest.timestamp_ = this.timestamp_;
                onBuilt();
                return adRequest;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public AdRequest mo4630getDefaultInstanceForType() {
                return AdRequest.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(j2 j2Var) {
                return (Builder) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(j2 j2Var) {
                return (Builder) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.userId_ = "";
                this.adType_ = 0;
                this.timestamp_ = 0L;
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.userId_ = "";
                this.adType_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof AdRequest) {
                    return mergeFrom((AdRequest) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AdRequest adRequest) {
                if (adRequest == AdRequest.getDefaultInstance()) {
                    return this;
                }
                if (!adRequest.getUserId().isEmpty()) {
                    this.userId_ = adRequest.userId_;
                    onChanged();
                }
                if (adRequest.adType_ != 0) {
                    setAdTypeValue(adRequest.getAdTypeValue());
                }
                if (adRequest.getTimestamp() != 0) {
                    setTimestamp(adRequest.getTimestamp());
                }
                mergeUnknownFields(((GeneratedMessageV3) adRequest).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequest.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequest.access$21600()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$AdRequest r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequest) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$AdRequest r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequest) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequest.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$AdRequest$Builder");
            }
        }

        public static Builder newBuilder(AdRequest adRequest) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(adRequest);
        }

        public static AdRequest parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private AdRequest(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AdRequest parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (AdRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static AdRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public AdRequest mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static AdRequest parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private AdRequest() {
            this.memoizedIsInitialized = (byte) -1;
            this.userId_ = "";
            this.adType_ = 0;
        }

        public static AdRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static AdRequest parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static AdRequest parseFrom(InputStream inputStream) throws IOException {
            return (AdRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private AdRequest(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 10) {
                                this.userId_ = nVar.J();
                            } else if (K == 16) {
                                this.adType_ = nVar.t();
                            } else if (K != 24) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                this.timestamp_ = nVar.z();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static AdRequest parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (AdRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static AdRequest parseFrom(n nVar) throws IOException {
            return (AdRequest) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static AdRequest parseFrom(n nVar, y yVar) throws IOException {
            return (AdRequest) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public static final class AdRequestMetrics extends GeneratedMessageV3 implements AdRequestMetricsOrBuilder {
        public static final int AD_TYPE_FIELD_NUMBER = 1;
        public static final int LAST_TIMESTAMPS_FIELD_NUMBER = 3;
        public static final int WINDOW_METRICS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int adType_;
        private int lastTimestampsMemoizedSerializedSize;
        private i0.i lastTimestamps_;
        private byte memoizedIsInitialized;
        private WindowMetrics windowMetrics_;
        private static final AdRequestMetrics DEFAULT_INSTANCE = new AdRequestMetrics();
        private static final j1<AdRequestMetrics> PARSER = new b<AdRequestMetrics>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetrics.1
            @Override // com.explorestack.protobuf.j1
            public AdRequestMetrics parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new AdRequestMetrics(nVar, yVar);
            }
        };

        static /* synthetic */ i0.i access$16900() {
            return GeneratedMessageV3.emptyLongList();
        }

        static /* synthetic */ i0.i access$17600() {
            return GeneratedMessageV3.emptyLongList();
        }

        static /* synthetic */ i0.i access$17800() {
            return GeneratedMessageV3.emptyLongList();
        }

        public static AdRequestMetrics getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_AdRequestMetrics_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static AdRequestMetrics parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AdRequestMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AdRequestMetrics parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<AdRequestMetrics> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AdRequestMetrics)) {
                return super.equals(obj);
            }
            AdRequestMetrics adRequestMetrics = (AdRequestMetrics) obj;
            if (this.adType_ != adRequestMetrics.adType_ || hasWindowMetrics() != adRequestMetrics.hasWindowMetrics()) {
                return false;
            }
            if ((!hasWindowMetrics() || getWindowMetrics().equals(adRequestMetrics.getWindowMetrics())) && getLastTimestampsList().equals(adRequestMetrics.getLastTimestampsList()) && this.unknownFields.equals(adRequestMetrics.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
        public AdType getAdType() {
            AdType valueOf = AdType.valueOf(this.adType_);
            if (valueOf == null) {
                return AdType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
        public int getAdTypeValue() {
            return this.adType_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
        public long getLastTimestamps(int i10) {
            return this.lastTimestamps_.getLong(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
        public int getLastTimestampsCount() {
            return this.lastTimestamps_.size();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
        public List<Long> getLastTimestampsList() {
            return this.lastTimestamps_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<AdRequestMetrics> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (this.adType_ != AdType.UNKNOWN.getNumber()) {
                i10 = CodedOutputStream.l(1, this.adType_);
            } else {
                i10 = 0;
            }
            if (this.windowMetrics_ != null) {
                i10 += CodedOutputStream.G(2, getWindowMetrics());
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.lastTimestamps_.size(); i13++) {
                i12 += CodedOutputStream.A(this.lastTimestamps_.getLong(i13));
            }
            int i14 = i10 + i12;
            if (!getLastTimestampsList().isEmpty()) {
                i14 = i14 + 1 + CodedOutputStream.y(i12);
            }
            this.lastTimestampsMemoizedSerializedSize = i12;
            int serializedSize = i14 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
        public WindowMetrics getWindowMetrics() {
            WindowMetrics windowMetrics = this.windowMetrics_;
            if (windowMetrics == null) {
                return WindowMetrics.getDefaultInstance();
            }
            return windowMetrics;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
        public WindowMetricsOrBuilder getWindowMetricsOrBuilder() {
            return getWindowMetrics();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
        public boolean hasWindowMetrics() {
            if (this.windowMetrics_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.adType_;
            if (hasWindowMetrics()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getWindowMetrics().hashCode();
            }
            if (getLastTimestampsCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getLastTimestampsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_AdRequestMetrics_fieldAccessorTable.d(AdRequestMetrics.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new AdRequestMetrics();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if (this.adType_ != AdType.UNKNOWN.getNumber()) {
                codedOutputStream.v0(1, this.adType_);
            }
            if (this.windowMetrics_ != null) {
                codedOutputStream.L0(2, getWindowMetrics());
            }
            if (getLastTimestampsList().size() > 0) {
                codedOutputStream.d1(26);
                codedOutputStream.d1(this.lastTimestampsMemoizedSerializedSize);
            }
            for (int i10 = 0; i10 < this.lastTimestamps_.size(); i10++) {
                codedOutputStream.K0(this.lastTimestamps_.getLong(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements AdRequestMetricsOrBuilder {
            private int adType_;
            private int bitField0_;
            private i0.i lastTimestamps_;
            private t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> windowMetricsBuilder_;
            private WindowMetrics windowMetrics_;

            private void ensureLastTimestampsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.lastTimestamps_ = GeneratedMessageV3.mutableCopy(this.lastTimestamps_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_AdRequestMetrics_descriptor;
            }

            private t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> getWindowMetricsFieldBuilder() {
                if (this.windowMetricsBuilder_ == null) {
                    this.windowMetricsBuilder_ = new t1<>(getWindowMetrics(), getParentForChildren(), isClean());
                    this.windowMetrics_ = null;
                }
                return this.windowMetricsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder addAllLastTimestamps(Iterable<? extends Long> iterable) {
                ensureLastTimestampsIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.lastTimestamps_);
                onChanged();
                return this;
            }

            public Builder addLastTimestamps(long j10) {
                ensureLastTimestampsIsMutable();
                this.lastTimestamps_.addLong(j10);
                onChanged();
                return this;
            }

            public Builder clearAdType() {
                this.adType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLastTimestamps() {
                this.lastTimestamps_ = AdRequestMetrics.access$17800();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder clearWindowMetrics() {
                if (this.windowMetricsBuilder_ == null) {
                    this.windowMetrics_ = null;
                    onChanged();
                } else {
                    this.windowMetrics_ = null;
                    this.windowMetricsBuilder_ = null;
                }
                return this;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
            public AdType getAdType() {
                AdType valueOf = AdType.valueOf(this.adType_);
                if (valueOf == null) {
                    return AdType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
            public int getAdTypeValue() {
                return this.adType_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_AdRequestMetrics_descriptor;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
            public long getLastTimestamps(int i10) {
                return this.lastTimestamps_.getLong(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
            public int getLastTimestampsCount() {
                return this.lastTimestamps_.size();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
            public List<Long> getLastTimestampsList() {
                if ((this.bitField0_ & 1) != 0) {
                    return Collections.unmodifiableList(this.lastTimestamps_);
                }
                return this.lastTimestamps_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
            public WindowMetrics getWindowMetrics() {
                t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                if (t1Var == null) {
                    WindowMetrics windowMetrics = this.windowMetrics_;
                    if (windowMetrics == null) {
                        return WindowMetrics.getDefaultInstance();
                    }
                    return windowMetrics;
                }
                return t1Var.e();
            }

            public WindowMetrics.Builder getWindowMetricsBuilder() {
                onChanged();
                return getWindowMetricsFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
            public WindowMetricsOrBuilder getWindowMetricsOrBuilder() {
                t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                WindowMetrics windowMetrics = this.windowMetrics_;
                if (windowMetrics == null) {
                    return WindowMetrics.getDefaultInstance();
                }
                return windowMetrics;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetricsOrBuilder
            public boolean hasWindowMetrics() {
                if (this.windowMetricsBuilder_ == null && this.windowMetrics_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_AdRequestMetrics_fieldAccessorTable.d(AdRequestMetrics.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeWindowMetrics(WindowMetrics windowMetrics) {
                t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                if (t1Var == null) {
                    WindowMetrics windowMetrics2 = this.windowMetrics_;
                    if (windowMetrics2 != null) {
                        this.windowMetrics_ = WindowMetrics.newBuilder(windowMetrics2).mergeFrom(windowMetrics).buildPartial();
                    } else {
                        this.windowMetrics_ = windowMetrics;
                    }
                    onChanged();
                } else {
                    t1Var.g(windowMetrics);
                }
                return this;
            }

            public Builder setAdType(AdType adType) {
                adType.getClass();
                this.adType_ = adType.getNumber();
                onChanged();
                return this;
            }

            public Builder setAdTypeValue(int i10) {
                this.adType_ = i10;
                onChanged();
                return this;
            }

            public Builder setLastTimestamps(int i10, long j10) {
                ensureLastTimestampsIsMutable();
                this.lastTimestamps_.setLong(i10, j10);
                onChanged();
                return this;
            }

            public Builder setWindowMetrics(WindowMetrics windowMetrics) {
                t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                if (t1Var == null) {
                    windowMetrics.getClass();
                    this.windowMetrics_ = windowMetrics;
                    onChanged();
                } else {
                    t1Var.i(windowMetrics);
                }
                return this;
            }

            private Builder() {
                this.adType_ = 0;
                this.lastTimestamps_ = AdRequestMetrics.access$17600();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdRequestMetrics build() {
                AdRequestMetrics buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdRequestMetrics buildPartial() {
                AdRequestMetrics adRequestMetrics = new AdRequestMetrics(this);
                adRequestMetrics.adType_ = this.adType_;
                t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                if (t1Var == null) {
                    adRequestMetrics.windowMetrics_ = this.windowMetrics_;
                } else {
                    adRequestMetrics.windowMetrics_ = t1Var.a();
                }
                if ((this.bitField0_ & 1) != 0) {
                    this.lastTimestamps_.makeImmutable();
                    this.bitField0_ &= -2;
                }
                adRequestMetrics.lastTimestamps_ = this.lastTimestamps_;
                onBuilt();
                return adRequestMetrics;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public AdRequestMetrics mo4630getDefaultInstanceForType() {
                return AdRequestMetrics.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(j2 j2Var) {
                return (Builder) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(j2 j2Var) {
                return (Builder) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.adType_ = 0;
                if (this.windowMetricsBuilder_ == null) {
                    this.windowMetrics_ = null;
                } else {
                    this.windowMetrics_ = null;
                    this.windowMetricsBuilder_ = null;
                }
                this.lastTimestamps_ = AdRequestMetrics.access$16900();
                this.bitField0_ &= -2;
                return this;
            }

            public Builder setWindowMetrics(WindowMetrics.Builder builder) {
                t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                if (t1Var == null) {
                    this.windowMetrics_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.adType_ = 0;
                this.lastTimestamps_ = AdRequestMetrics.access$17600();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof AdRequestMetrics) {
                    return mergeFrom((AdRequestMetrics) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AdRequestMetrics adRequestMetrics) {
                if (adRequestMetrics == AdRequestMetrics.getDefaultInstance()) {
                    return this;
                }
                if (adRequestMetrics.adType_ != 0) {
                    setAdTypeValue(adRequestMetrics.getAdTypeValue());
                }
                if (adRequestMetrics.hasWindowMetrics()) {
                    mergeWindowMetrics(adRequestMetrics.getWindowMetrics());
                }
                if (!adRequestMetrics.lastTimestamps_.isEmpty()) {
                    if (this.lastTimestamps_.isEmpty()) {
                        this.lastTimestamps_ = adRequestMetrics.lastTimestamps_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureLastTimestampsIsMutable();
                        this.lastTimestamps_.addAll(adRequestMetrics.lastTimestamps_);
                    }
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) adRequestMetrics).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetrics.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetrics.access$17500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$AdRequestMetrics r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetrics) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$AdRequestMetrics r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetrics) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdRequestMetrics.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$AdRequestMetrics$Builder");
            }
        }

        public static Builder newBuilder(AdRequestMetrics adRequestMetrics) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(adRequestMetrics);
        }

        public static AdRequestMetrics parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private AdRequestMetrics(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.lastTimestampsMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AdRequestMetrics parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (AdRequestMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static AdRequestMetrics parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public AdRequestMetrics mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static AdRequestMetrics parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static AdRequestMetrics parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        private AdRequestMetrics() {
            this.lastTimestampsMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.adType_ = 0;
            this.lastTimestamps_ = GeneratedMessageV3.emptyLongList();
        }

        public static AdRequestMetrics parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static AdRequestMetrics parseFrom(InputStream inputStream) throws IOException {
            return (AdRequestMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static AdRequestMetrics parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (AdRequestMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        private AdRequestMetrics(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 8) {
                                this.adType_ = nVar.t();
                            } else if (K == 18) {
                                WindowMetrics windowMetrics = this.windowMetrics_;
                                WindowMetrics.Builder builder = windowMetrics != null ? windowMetrics.toBuilder() : null;
                                WindowMetrics windowMetrics2 = (WindowMetrics) nVar.A(WindowMetrics.parser(), yVar);
                                this.windowMetrics_ = windowMetrics2;
                                if (builder != null) {
                                    builder.mergeFrom(windowMetrics2);
                                    this.windowMetrics_ = builder.buildPartial();
                                }
                            } else if (K == 24) {
                                if (!z11) {
                                    this.lastTimestamps_ = GeneratedMessageV3.newLongList();
                                    z11 = true;
                                }
                                this.lastTimestamps_.addLong(nVar.z());
                            } else if (K != 26) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                int p10 = nVar.p(nVar.C());
                                if (!z11 && nVar.d() > 0) {
                                    this.lastTimestamps_ = GeneratedMessageV3.newLongList();
                                    z11 = true;
                                }
                                while (nVar.d() > 0) {
                                    this.lastTimestamps_.addLong(nVar.z());
                                }
                                nVar.o(p10);
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11) {
                        this.lastTimestamps_.makeImmutable();
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11) {
                this.lastTimestamps_.makeImmutable();
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static AdRequestMetrics parseFrom(n nVar) throws IOException {
            return (AdRequestMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static AdRequestMetrics parseFrom(n nVar, y yVar) throws IOException {
            return (AdRequestMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface AdRequestMetricsOrBuilder extends MessageOrBuilder {
        AdType getAdType();

        int getAdTypeValue();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        long getLastTimestamps(int i10);

        int getLastTimestampsCount();

        List<Long> getLastTimestampsList();

        WindowMetrics getWindowMetrics();

        WindowMetricsOrBuilder getWindowMetricsOrBuilder();

        boolean hasWindowMetrics();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public interface AdRequestOrBuilder extends MessageOrBuilder {
        AdType getAdType();

        int getAdTypeValue();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        long getTimestamp();

        String getUserId();

        ByteString getUserIdBytes();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public enum AdType implements i0.c {
        UNKNOWN(0),
        INTERSTITIAL(1),
        REWARDED(2),
        BANNER(3),
        UNRECOGNIZED(-1);
        
        public static final int BANNER_VALUE = 3;
        public static final int INTERSTITIAL_VALUE = 1;
        public static final int REWARDED_VALUE = 2;
        public static final int UNKNOWN_VALUE = 0;
        private final int value;
        private static final i0.d<AdType> internalValueMap = new i0.d<AdType>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.AdType.1
            @Override // com.explorestack.protobuf.i0.d
            public AdType findValueByNumber(int i10) {
                return AdType.forNumber(i10);
            }
        };
        private static final AdType[] VALUES = values();

        AdType(int i10) {
            this.value = i10;
        }

        public static AdType forNumber(int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return null;
                        }
                        return BANNER;
                    }
                    return REWARDED;
                }
                return INTERSTITIAL;
            }
            return UNKNOWN;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return SessionMetricsOuterClass.getDescriptor().getEnumTypes().get(0);
        }

        public static i0.d<AdType> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.explorestack.protobuf.i0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().getValues().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static AdType valueOf(int i10) {
            return forNumber(i10);
        }

        public static AdType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes8.dex */
    public static final class ImpressionMetrics extends GeneratedMessageV3 implements ImpressionMetricsOrBuilder {
        public static final int AD_TYPE_FIELD_NUMBER = 1;
        public static final int DOMAINS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int adType_;
        private List<DomainMetrics> domains_;
        private byte memoizedIsInitialized;
        private static final ImpressionMetrics DEFAULT_INSTANCE = new ImpressionMetrics();
        private static final j1<ImpressionMetrics> PARSER = new b<ImpressionMetrics>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.1
            @Override // com.explorestack.protobuf.j1
            public ImpressionMetrics parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new ImpressionMetrics(nVar, yVar);
            }
        };

        /* loaded from: classes8.dex */
        public static final class DomainMetrics extends GeneratedMessageV3 implements DomainMetricsOrBuilder {
            public static final int DOMAIN_FIELD_NUMBER = 1;
            public static final int WINDOW_METRICS_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private volatile Object domain_;
            private byte memoizedIsInitialized;
            private WindowMetrics windowMetrics_;
            private static final DomainMetrics DEFAULT_INSTANCE = new DomainMetrics();
            private static final j1<DomainMetrics> PARSER = new b<DomainMetrics>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetrics.1
                @Override // com.explorestack.protobuf.j1
                public DomainMetrics parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new DomainMetrics(nVar, yVar);
                }
            };

            public static DomainMetrics getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static DomainMetrics parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (DomainMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static DomainMetrics parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<DomainMetrics> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof DomainMetrics)) {
                    return super.equals(obj);
                }
                DomainMetrics domainMetrics = (DomainMetrics) obj;
                if (!getDomain().equals(domainMetrics.getDomain()) || hasWindowMetrics() != domainMetrics.hasWindowMetrics()) {
                    return false;
                }
                if ((!hasWindowMetrics() || getWindowMetrics().equals(domainMetrics.getWindowMetrics())) && this.unknownFields.equals(domainMetrics.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetricsOrBuilder
            public String getDomain() {
                Object obj = this.domain_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.domain_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetricsOrBuilder
            public ByteString getDomainBytes() {
                Object obj = this.domain_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.domain_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<DomainMetrics> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if (!getDomainBytes().isEmpty()) {
                    i10 = GeneratedMessageV3.computeStringSize(1, this.domain_);
                } else {
                    i10 = 0;
                }
                if (this.windowMetrics_ != null) {
                    i10 += CodedOutputStream.G(2, getWindowMetrics());
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetricsOrBuilder
            public WindowMetrics getWindowMetrics() {
                WindowMetrics windowMetrics = this.windowMetrics_;
                if (windowMetrics == null) {
                    return WindowMetrics.getDefaultInstance();
                }
                return windowMetrics;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetricsOrBuilder
            public WindowMetricsOrBuilder getWindowMetricsOrBuilder() {
                return getWindowMetrics();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetricsOrBuilder
            public boolean hasWindowMetrics() {
                if (this.windowMetrics_ != null) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getDomain().hashCode();
                if (hasWindowMetrics()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getWindowMetrics().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_fieldAccessorTable.d(DomainMetrics.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.memoizedIsInitialized;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new DomainMetrics();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getDomainBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.domain_);
                }
                if (this.windowMetrics_ != null) {
                    codedOutputStream.L0(2, getWindowMetrics());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements DomainMetricsOrBuilder {
                private Object domain_;
                private t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> windowMetricsBuilder_;
                private WindowMetrics windowMetrics_;

                public static final Descriptors.Descriptor getDescriptor() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_descriptor;
                }

                private t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> getWindowMetricsFieldBuilder() {
                    if (this.windowMetricsBuilder_ == null) {
                        this.windowMetricsBuilder_ = new t1<>(getWindowMetrics(), getParentForChildren(), isClean());
                        this.windowMetrics_ = null;
                    }
                    return this.windowMetricsBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                public Builder clearDomain() {
                    this.domain_ = DomainMetrics.getDefaultInstance().getDomain();
                    onChanged();
                    return this;
                }

                public Builder clearWindowMetrics() {
                    if (this.windowMetricsBuilder_ == null) {
                        this.windowMetrics_ = null;
                        onChanged();
                    } else {
                        this.windowMetrics_ = null;
                        this.windowMetricsBuilder_ = null;
                    }
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_descriptor;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetricsOrBuilder
                public String getDomain() {
                    Object obj = this.domain_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.domain_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetricsOrBuilder
                public ByteString getDomainBytes() {
                    Object obj = this.domain_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.domain_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetricsOrBuilder
                public WindowMetrics getWindowMetrics() {
                    t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                    if (t1Var == null) {
                        WindowMetrics windowMetrics = this.windowMetrics_;
                        if (windowMetrics == null) {
                            return WindowMetrics.getDefaultInstance();
                        }
                        return windowMetrics;
                    }
                    return t1Var.e();
                }

                public WindowMetrics.Builder getWindowMetricsBuilder() {
                    onChanged();
                    return getWindowMetricsFieldBuilder().d();
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetricsOrBuilder
                public WindowMetricsOrBuilder getWindowMetricsOrBuilder() {
                    t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    WindowMetrics windowMetrics = this.windowMetrics_;
                    if (windowMetrics == null) {
                        return WindowMetrics.getDefaultInstance();
                    }
                    return windowMetrics;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetricsOrBuilder
                public boolean hasWindowMetrics() {
                    if (this.windowMetricsBuilder_ == null && this.windowMetrics_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_fieldAccessorTable.d(DomainMetrics.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder mergeWindowMetrics(WindowMetrics windowMetrics) {
                    t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                    if (t1Var == null) {
                        WindowMetrics windowMetrics2 = this.windowMetrics_;
                        if (windowMetrics2 != null) {
                            this.windowMetrics_ = WindowMetrics.newBuilder(windowMetrics2).mergeFrom(windowMetrics).buildPartial();
                        } else {
                            this.windowMetrics_ = windowMetrics;
                        }
                        onChanged();
                    } else {
                        t1Var.g(windowMetrics);
                    }
                    return this;
                }

                public Builder setDomain(String str) {
                    str.getClass();
                    this.domain_ = str;
                    onChanged();
                    return this;
                }

                public Builder setDomainBytes(ByteString byteString) {
                    byteString.getClass();
                    a.checkByteStringIsUtf8(byteString);
                    this.domain_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setWindowMetrics(WindowMetrics windowMetrics) {
                    t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                    if (t1Var == null) {
                        windowMetrics.getClass();
                        this.windowMetrics_ = windowMetrics;
                        onChanged();
                    } else {
                        t1Var.i(windowMetrics);
                    }
                    return this;
                }

                private Builder() {
                    this.domain_ = "";
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public DomainMetrics build() {
                    DomainMetrics buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public DomainMetrics buildPartial() {
                    DomainMetrics domainMetrics = new DomainMetrics(this);
                    domainMetrics.domain_ = this.domain_;
                    t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                    if (t1Var == null) {
                        domainMetrics.windowMetrics_ = this.windowMetrics_;
                    } else {
                        domainMetrics.windowMetrics_ = t1Var.a();
                    }
                    onBuilt();
                    return domainMetrics;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public DomainMetrics mo4630getDefaultInstanceForType() {
                    return DomainMetrics.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.setField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public final Builder setUnknownFields(j2 j2Var) {
                    return (Builder) super.setUnknownFields(j2Var);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeUnknownFields(j2 j2Var) {
                    return (Builder) super.mergeUnknownFields(j2Var);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.domain_ = "";
                    if (this.windowMetricsBuilder_ == null) {
                        this.windowMetrics_ = null;
                    } else {
                        this.windowMetrics_ = null;
                        this.windowMetricsBuilder_ = null;
                    }
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.domain_ = "";
                    maybeForceBuilderInitialization();
                }

                public Builder setWindowMetrics(WindowMetrics.Builder builder) {
                    t1<WindowMetrics, WindowMetrics.Builder, WindowMetricsOrBuilder> t1Var = this.windowMetricsBuilder_;
                    if (t1Var == null) {
                        this.windowMetrics_ = builder.build();
                        onChanged();
                    } else {
                        t1Var.i(builder.build());
                    }
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: clone */
                public Builder mo4628clone() {
                    return (Builder) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof DomainMetrics) {
                        return mergeFrom((DomainMetrics) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(DomainMetrics domainMetrics) {
                    if (domainMetrics == DomainMetrics.getDefaultInstance()) {
                        return this;
                    }
                    if (!domainMetrics.getDomain().isEmpty()) {
                        this.domain_ = domainMetrics.domain_;
                        onChanged();
                    }
                    if (domainMetrics.hasWindowMetrics()) {
                        mergeWindowMetrics(domainMetrics.getWindowMetrics());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) domainMetrics).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetrics.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetrics.access$15100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$ImpressionMetrics$DomainMetrics r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetrics) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.mergeFrom(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$ImpressionMetrics$DomainMetrics r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetrics) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.mergeFrom(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.DomainMetrics.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$ImpressionMetrics$DomainMetrics$Builder");
                }
            }

            public static Builder newBuilder(DomainMetrics domainMetrics) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(domainMetrics);
            }

            public static DomainMetrics parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private DomainMetrics(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static DomainMetrics parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (DomainMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static DomainMetrics parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public DomainMetrics mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static DomainMetrics parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private DomainMetrics() {
                this.memoizedIsInitialized = (byte) -1;
                this.domain_ = "";
            }

            public static DomainMetrics parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static DomainMetrics parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static DomainMetrics parseFrom(InputStream inputStream) throws IOException {
                return (DomainMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private DomainMetrics(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 10) {
                                    this.domain_ = nVar.J();
                                } else if (K != 18) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    WindowMetrics windowMetrics = this.windowMetrics_;
                                    WindowMetrics.Builder builder = windowMetrics != null ? windowMetrics.toBuilder() : null;
                                    WindowMetrics windowMetrics2 = (WindowMetrics) nVar.A(WindowMetrics.parser(), yVar);
                                    this.windowMetrics_ = windowMetrics2;
                                    if (builder != null) {
                                        builder.mergeFrom(windowMetrics2);
                                        this.windowMetrics_ = builder.buildPartial();
                                    }
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static DomainMetrics parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (DomainMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static DomainMetrics parseFrom(n nVar) throws IOException {
                return (DomainMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static DomainMetrics parseFrom(n nVar, y yVar) throws IOException {
                return (DomainMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface DomainMetricsOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            String getDomain();

            ByteString getDomainBytes();

            WindowMetrics getWindowMetrics();

            WindowMetricsOrBuilder getWindowMetricsOrBuilder();

            boolean hasWindowMetrics();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public static ImpressionMetrics getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_ImpressionMetrics_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ImpressionMetrics parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ImpressionMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ImpressionMetrics parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<ImpressionMetrics> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ImpressionMetrics)) {
                return super.equals(obj);
            }
            ImpressionMetrics impressionMetrics = (ImpressionMetrics) obj;
            if (this.adType_ == impressionMetrics.adType_ && getDomainsList().equals(impressionMetrics.getDomainsList()) && this.unknownFields.equals(impressionMetrics.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
        public AdType getAdType() {
            AdType valueOf = AdType.valueOf(this.adType_);
            if (valueOf == null) {
                return AdType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
        public int getAdTypeValue() {
            return this.adType_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
        public DomainMetrics getDomains(int i10) {
            return this.domains_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
        public int getDomainsCount() {
            return this.domains_.size();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
        public List<DomainMetrics> getDomainsList() {
            return this.domains_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
        public DomainMetricsOrBuilder getDomainsOrBuilder(int i10) {
            return this.domains_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
        public List<? extends DomainMetricsOrBuilder> getDomainsOrBuilderList() {
            return this.domains_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<ImpressionMetrics> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (this.adType_ != AdType.UNKNOWN.getNumber()) {
                i10 = CodedOutputStream.l(1, this.adType_);
            } else {
                i10 = 0;
            }
            for (int i12 = 0; i12 < this.domains_.size(); i12++) {
                i10 += CodedOutputStream.G(2, this.domains_.get(i12));
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.adType_;
            if (getDomainsCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getDomainsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_ImpressionMetrics_fieldAccessorTable.d(ImpressionMetrics.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new ImpressionMetrics();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.adType_ != AdType.UNKNOWN.getNumber()) {
                codedOutputStream.v0(1, this.adType_);
            }
            for (int i10 = 0; i10 < this.domains_.size(); i10++) {
                codedOutputStream.L0(2, this.domains_.get(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements ImpressionMetricsOrBuilder {
            private int adType_;
            private int bitField0_;
            private p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> domainsBuilder_;
            private List<DomainMetrics> domains_;

            private void ensureDomainsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.domains_ = new ArrayList(this.domains_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_ImpressionMetrics_descriptor;
            }

            private p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> getDomainsFieldBuilder() {
                if (this.domainsBuilder_ == null) {
                    List<DomainMetrics> list = this.domains_;
                    boolean z10 = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z10 = false;
                    }
                    this.domainsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.domains_ = null;
                }
                return this.domainsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDomainsFieldBuilder();
                }
            }

            public Builder addAllDomains(Iterable<? extends DomainMetrics> iterable) {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    ensureDomainsIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.domains_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addDomains(DomainMetrics domainMetrics) {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    domainMetrics.getClass();
                    ensureDomainsIsMutable();
                    this.domains_.add(domainMetrics);
                    onChanged();
                } else {
                    p1Var.e(domainMetrics);
                }
                return this;
            }

            public DomainMetrics.Builder addDomainsBuilder() {
                return getDomainsFieldBuilder().c(DomainMetrics.getDefaultInstance());
            }

            public Builder clearAdType() {
                this.adType_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDomains() {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    this.domains_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
            public AdType getAdType() {
                AdType valueOf = AdType.valueOf(this.adType_);
                if (valueOf == null) {
                    return AdType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
            public int getAdTypeValue() {
                return this.adType_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_ImpressionMetrics_descriptor;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
            public DomainMetrics getDomains(int i10) {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    return this.domains_.get(i10);
                }
                return p1Var.n(i10);
            }

            public DomainMetrics.Builder getDomainsBuilder(int i10) {
                return getDomainsFieldBuilder().k(i10);
            }

            public List<DomainMetrics.Builder> getDomainsBuilderList() {
                return getDomainsFieldBuilder().l();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
            public int getDomainsCount() {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    return this.domains_.size();
                }
                return p1Var.m();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
            public List<DomainMetrics> getDomainsList() {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.domains_);
                }
                return p1Var.p();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
            public DomainMetricsOrBuilder getDomainsOrBuilder(int i10) {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    return this.domains_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetricsOrBuilder
            public List<? extends DomainMetricsOrBuilder> getDomainsOrBuilderList() {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.domains_);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_ImpressionMetrics_fieldAccessorTable.d(ImpressionMetrics.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeDomains(int i10) {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    ensureDomainsIsMutable();
                    this.domains_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
                }
                return this;
            }

            public Builder setAdType(AdType adType) {
                adType.getClass();
                this.adType_ = adType.getNumber();
                onChanged();
                return this;
            }

            public Builder setAdTypeValue(int i10) {
                this.adType_ = i10;
                onChanged();
                return this;
            }

            public Builder setDomains(int i10, DomainMetrics domainMetrics) {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    domainMetrics.getClass();
                    ensureDomainsIsMutable();
                    this.domains_.set(i10, domainMetrics);
                    onChanged();
                } else {
                    p1Var.w(i10, domainMetrics);
                }
                return this;
            }

            private Builder() {
                this.adType_ = 0;
                this.domains_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public ImpressionMetrics build() {
                ImpressionMetrics buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public ImpressionMetrics buildPartial() {
                ImpressionMetrics impressionMetrics = new ImpressionMetrics(this);
                impressionMetrics.adType_ = this.adType_;
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var != null) {
                    impressionMetrics.domains_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.domains_ = Collections.unmodifiableList(this.domains_);
                        this.bitField0_ &= -2;
                    }
                    impressionMetrics.domains_ = this.domains_;
                }
                onBuilt();
                return impressionMetrics;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public ImpressionMetrics mo4630getDefaultInstanceForType() {
                return ImpressionMetrics.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(j2 j2Var) {
                return (Builder) super.setUnknownFields(j2Var);
            }

            public DomainMetrics.Builder addDomainsBuilder(int i10) {
                return getDomainsFieldBuilder().b(i10, DomainMetrics.getDefaultInstance());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(j2 j2Var) {
                return (Builder) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.adType_ = 0;
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    this.domains_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    p1Var.g();
                }
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.adType_ = 0;
                this.domains_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addDomains(int i10, DomainMetrics domainMetrics) {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    domainMetrics.getClass();
                    ensureDomainsIsMutable();
                    this.domains_.add(i10, domainMetrics);
                    onChanged();
                } else {
                    p1Var.d(i10, domainMetrics);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ImpressionMetrics) {
                    return mergeFrom((ImpressionMetrics) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setDomains(int i10, DomainMetrics.Builder builder) {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    ensureDomainsIsMutable();
                    this.domains_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(ImpressionMetrics impressionMetrics) {
                if (impressionMetrics == ImpressionMetrics.getDefaultInstance()) {
                    return this;
                }
                if (impressionMetrics.adType_ != 0) {
                    setAdTypeValue(impressionMetrics.getAdTypeValue());
                }
                if (this.domainsBuilder_ == null) {
                    if (!impressionMetrics.domains_.isEmpty()) {
                        if (this.domains_.isEmpty()) {
                            this.domains_ = impressionMetrics.domains_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDomainsIsMutable();
                            this.domains_.addAll(impressionMetrics.domains_);
                        }
                        onChanged();
                    }
                } else if (!impressionMetrics.domains_.isEmpty()) {
                    if (!this.domainsBuilder_.t()) {
                        this.domainsBuilder_.a(impressionMetrics.domains_);
                    } else {
                        this.domainsBuilder_.h();
                        this.domainsBuilder_ = null;
                        this.domains_ = impressionMetrics.domains_;
                        this.bitField0_ &= -2;
                        this.domainsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDomainsFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) impressionMetrics).unknownFields);
                onChanged();
                return this;
            }

            public Builder addDomains(DomainMetrics.Builder builder) {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    ensureDomainsIsMutable();
                    this.domains_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addDomains(int i10, DomainMetrics.Builder builder) {
                p1<DomainMetrics, DomainMetrics.Builder, DomainMetricsOrBuilder> p1Var = this.domainsBuilder_;
                if (p1Var == null) {
                    ensureDomainsIsMutable();
                    this.domains_.add(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.d(i10, builder.build());
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.access$16200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$ImpressionMetrics r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$ImpressionMetrics r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.ImpressionMetrics.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$ImpressionMetrics$Builder");
            }
        }

        public static Builder newBuilder(ImpressionMetrics impressionMetrics) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(impressionMetrics);
        }

        public static ImpressionMetrics parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private ImpressionMetrics(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ImpressionMetrics parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (ImpressionMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static ImpressionMetrics parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public ImpressionMetrics mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ImpressionMetrics parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ImpressionMetrics() {
            this.memoizedIsInitialized = (byte) -1;
            this.adType_ = 0;
            this.domains_ = Collections.emptyList();
        }

        public static ImpressionMetrics parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static ImpressionMetrics parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static ImpressionMetrics parseFrom(InputStream inputStream) throws IOException {
            return (ImpressionMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private ImpressionMetrics(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 8) {
                                this.adType_ = nVar.t();
                            } else if (K != 18) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!z11) {
                                    this.domains_ = new ArrayList();
                                    z11 = true;
                                }
                                this.domains_.add(nVar.A(DomainMetrics.parser(), yVar));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11) {
                        this.domains_ = Collections.unmodifiableList(this.domains_);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11) {
                this.domains_ = Collections.unmodifiableList(this.domains_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static ImpressionMetrics parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (ImpressionMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static ImpressionMetrics parseFrom(n nVar) throws IOException {
            return (ImpressionMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static ImpressionMetrics parseFrom(n nVar, y yVar) throws IOException {
            return (ImpressionMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface ImpressionMetricsOrBuilder extends MessageOrBuilder {
        AdType getAdType();

        int getAdTypeValue();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        ImpressionMetrics.DomainMetrics getDomains(int i10);

        int getDomainsCount();

        List<ImpressionMetrics.DomainMetrics> getDomainsList();

        ImpressionMetrics.DomainMetricsOrBuilder getDomainsOrBuilder(int i10);

        List<? extends ImpressionMetrics.DomainMetricsOrBuilder> getDomainsOrBuilderList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public static final class SessionMetrics extends GeneratedMessageV3 implements SessionMetricsOrBuilder {
        public static final int AD_REQUESTS_FIELD_NUMBER = 2;
        public static final int CURRENT_SESSION_FIELD_NUMBER = 3;
        public static final int IMPRESSIONS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<AdRequestMetrics> adRequests_;
        private UserSession currentSession_;
        private List<ImpressionMetrics> impressions_;
        private byte memoizedIsInitialized;
        private static final SessionMetrics DEFAULT_INSTANCE = new SessionMetrics();
        private static final j1<SessionMetrics> PARSER = new b<SessionMetrics>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetrics.1
            @Override // com.explorestack.protobuf.j1
            public SessionMetrics parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new SessionMetrics(nVar, yVar);
            }
        };

        public static SessionMetrics getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_SessionMetrics_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static SessionMetrics parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SessionMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static SessionMetrics parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<SessionMetrics> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof SessionMetrics)) {
                return super.equals(obj);
            }
            SessionMetrics sessionMetrics = (SessionMetrics) obj;
            if (!getImpressionsList().equals(sessionMetrics.getImpressionsList()) || !getAdRequestsList().equals(sessionMetrics.getAdRequestsList()) || hasCurrentSession() != sessionMetrics.hasCurrentSession()) {
                return false;
            }
            if ((!hasCurrentSession() || getCurrentSession().equals(sessionMetrics.getCurrentSession())) && this.unknownFields.equals(sessionMetrics.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public AdRequestMetrics getAdRequests(int i10) {
            return this.adRequests_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public int getAdRequestsCount() {
            return this.adRequests_.size();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public List<AdRequestMetrics> getAdRequestsList() {
            return this.adRequests_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public AdRequestMetricsOrBuilder getAdRequestsOrBuilder(int i10) {
            return this.adRequests_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public List<? extends AdRequestMetricsOrBuilder> getAdRequestsOrBuilderList() {
            return this.adRequests_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public UserSession getCurrentSession() {
            UserSession userSession = this.currentSession_;
            if (userSession == null) {
                return UserSession.getDefaultInstance();
            }
            return userSession;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public UserSessionOrBuilder getCurrentSessionOrBuilder() {
            return getCurrentSession();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public ImpressionMetrics getImpressions(int i10) {
            return this.impressions_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public int getImpressionsCount() {
            return this.impressions_.size();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public List<ImpressionMetrics> getImpressionsList() {
            return this.impressions_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public ImpressionMetricsOrBuilder getImpressionsOrBuilder(int i10) {
            return this.impressions_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public List<? extends ImpressionMetricsOrBuilder> getImpressionsOrBuilderList() {
            return this.impressions_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<SessionMetrics> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.impressions_.size(); i12++) {
                i11 += CodedOutputStream.G(1, this.impressions_.get(i12));
            }
            for (int i13 = 0; i13 < this.adRequests_.size(); i13++) {
                i11 += CodedOutputStream.G(2, this.adRequests_.get(i13));
            }
            if (this.currentSession_ != null) {
                i11 += CodedOutputStream.G(3, getCurrentSession());
            }
            int serializedSize = i11 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
        public boolean hasCurrentSession() {
            if (this.currentSession_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (getImpressionsCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getImpressionsList().hashCode();
            }
            if (getAdRequestsCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getAdRequestsList().hashCode();
            }
            if (hasCurrentSession()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getCurrentSession().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_SessionMetrics_fieldAccessorTable.d(SessionMetrics.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new SessionMetrics();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i10 = 0; i10 < this.impressions_.size(); i10++) {
                codedOutputStream.L0(1, this.impressions_.get(i10));
            }
            for (int i11 = 0; i11 < this.adRequests_.size(); i11++) {
                codedOutputStream.L0(2, this.adRequests_.get(i11));
            }
            if (this.currentSession_ != null) {
                codedOutputStream.L0(3, getCurrentSession());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements SessionMetricsOrBuilder {
            private p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> adRequestsBuilder_;
            private List<AdRequestMetrics> adRequests_;
            private int bitField0_;
            private t1<UserSession, UserSession.Builder, UserSessionOrBuilder> currentSessionBuilder_;
            private UserSession currentSession_;
            private p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> impressionsBuilder_;
            private List<ImpressionMetrics> impressions_;

            private void ensureAdRequestsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.adRequests_ = new ArrayList(this.adRequests_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureImpressionsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.impressions_ = new ArrayList(this.impressions_);
                    this.bitField0_ |= 1;
                }
            }

            private p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> getAdRequestsFieldBuilder() {
                boolean z10;
                if (this.adRequestsBuilder_ == null) {
                    List<AdRequestMetrics> list = this.adRequests_;
                    if ((this.bitField0_ & 2) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.adRequestsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.adRequests_ = null;
                }
                return this.adRequestsBuilder_;
            }

            private t1<UserSession, UserSession.Builder, UserSessionOrBuilder> getCurrentSessionFieldBuilder() {
                if (this.currentSessionBuilder_ == null) {
                    this.currentSessionBuilder_ = new t1<>(getCurrentSession(), getParentForChildren(), isClean());
                    this.currentSession_ = null;
                }
                return this.currentSessionBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_SessionMetrics_descriptor;
            }

            private p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> getImpressionsFieldBuilder() {
                if (this.impressionsBuilder_ == null) {
                    List<ImpressionMetrics> list = this.impressions_;
                    boolean z10 = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z10 = false;
                    }
                    this.impressionsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.impressions_ = null;
                }
                return this.impressionsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getImpressionsFieldBuilder();
                    getAdRequestsFieldBuilder();
                }
            }

            public Builder addAdRequests(AdRequestMetrics adRequestMetrics) {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    adRequestMetrics.getClass();
                    ensureAdRequestsIsMutable();
                    this.adRequests_.add(adRequestMetrics);
                    onChanged();
                } else {
                    p1Var.e(adRequestMetrics);
                }
                return this;
            }

            public AdRequestMetrics.Builder addAdRequestsBuilder() {
                return getAdRequestsFieldBuilder().c(AdRequestMetrics.getDefaultInstance());
            }

            public Builder addAllAdRequests(Iterable<? extends AdRequestMetrics> iterable) {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    ensureAdRequestsIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.adRequests_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addAllImpressions(Iterable<? extends ImpressionMetrics> iterable) {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    ensureImpressionsIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.impressions_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addImpressions(ImpressionMetrics impressionMetrics) {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    impressionMetrics.getClass();
                    ensureImpressionsIsMutable();
                    this.impressions_.add(impressionMetrics);
                    onChanged();
                } else {
                    p1Var.e(impressionMetrics);
                }
                return this;
            }

            public ImpressionMetrics.Builder addImpressionsBuilder() {
                return getImpressionsFieldBuilder().c(ImpressionMetrics.getDefaultInstance());
            }

            public Builder clearAdRequests() {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    this.adRequests_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearCurrentSession() {
                if (this.currentSessionBuilder_ == null) {
                    this.currentSession_ = null;
                    onChanged();
                } else {
                    this.currentSession_ = null;
                    this.currentSessionBuilder_ = null;
                }
                return this;
            }

            public Builder clearImpressions() {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    this.impressions_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public AdRequestMetrics getAdRequests(int i10) {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    return this.adRequests_.get(i10);
                }
                return p1Var.n(i10);
            }

            public AdRequestMetrics.Builder getAdRequestsBuilder(int i10) {
                return getAdRequestsFieldBuilder().k(i10);
            }

            public List<AdRequestMetrics.Builder> getAdRequestsBuilderList() {
                return getAdRequestsFieldBuilder().l();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public int getAdRequestsCount() {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    return this.adRequests_.size();
                }
                return p1Var.m();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public List<AdRequestMetrics> getAdRequestsList() {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.adRequests_);
                }
                return p1Var.p();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public AdRequestMetricsOrBuilder getAdRequestsOrBuilder(int i10) {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    return this.adRequests_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public List<? extends AdRequestMetricsOrBuilder> getAdRequestsOrBuilderList() {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.adRequests_);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public UserSession getCurrentSession() {
                t1<UserSession, UserSession.Builder, UserSessionOrBuilder> t1Var = this.currentSessionBuilder_;
                if (t1Var == null) {
                    UserSession userSession = this.currentSession_;
                    if (userSession == null) {
                        return UserSession.getDefaultInstance();
                    }
                    return userSession;
                }
                return t1Var.e();
            }

            public UserSession.Builder getCurrentSessionBuilder() {
                onChanged();
                return getCurrentSessionFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public UserSessionOrBuilder getCurrentSessionOrBuilder() {
                t1<UserSession, UserSession.Builder, UserSessionOrBuilder> t1Var = this.currentSessionBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                UserSession userSession = this.currentSession_;
                if (userSession == null) {
                    return UserSession.getDefaultInstance();
                }
                return userSession;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_SessionMetrics_descriptor;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public ImpressionMetrics getImpressions(int i10) {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    return this.impressions_.get(i10);
                }
                return p1Var.n(i10);
            }

            public ImpressionMetrics.Builder getImpressionsBuilder(int i10) {
                return getImpressionsFieldBuilder().k(i10);
            }

            public List<ImpressionMetrics.Builder> getImpressionsBuilderList() {
                return getImpressionsFieldBuilder().l();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public int getImpressionsCount() {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    return this.impressions_.size();
                }
                return p1Var.m();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public List<ImpressionMetrics> getImpressionsList() {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.impressions_);
                }
                return p1Var.p();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public ImpressionMetricsOrBuilder getImpressionsOrBuilder(int i10) {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    return this.impressions_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public List<? extends ImpressionMetricsOrBuilder> getImpressionsOrBuilderList() {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.impressions_);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetricsOrBuilder
            public boolean hasCurrentSession() {
                if (this.currentSessionBuilder_ == null && this.currentSession_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_SessionMetrics_fieldAccessorTable.d(SessionMetrics.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeCurrentSession(UserSession userSession) {
                t1<UserSession, UserSession.Builder, UserSessionOrBuilder> t1Var = this.currentSessionBuilder_;
                if (t1Var == null) {
                    UserSession userSession2 = this.currentSession_;
                    if (userSession2 != null) {
                        this.currentSession_ = UserSession.newBuilder(userSession2).mergeFrom(userSession).buildPartial();
                    } else {
                        this.currentSession_ = userSession;
                    }
                    onChanged();
                } else {
                    t1Var.g(userSession);
                }
                return this;
            }

            public Builder removeAdRequests(int i10) {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    ensureAdRequestsIsMutable();
                    this.adRequests_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
                }
                return this;
            }

            public Builder removeImpressions(int i10) {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    ensureImpressionsIsMutable();
                    this.impressions_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
                }
                return this;
            }

            public Builder setAdRequests(int i10, AdRequestMetrics adRequestMetrics) {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    adRequestMetrics.getClass();
                    ensureAdRequestsIsMutable();
                    this.adRequests_.set(i10, adRequestMetrics);
                    onChanged();
                } else {
                    p1Var.w(i10, adRequestMetrics);
                }
                return this;
            }

            public Builder setCurrentSession(UserSession userSession) {
                t1<UserSession, UserSession.Builder, UserSessionOrBuilder> t1Var = this.currentSessionBuilder_;
                if (t1Var == null) {
                    userSession.getClass();
                    this.currentSession_ = userSession;
                    onChanged();
                } else {
                    t1Var.i(userSession);
                }
                return this;
            }

            public Builder setImpressions(int i10, ImpressionMetrics impressionMetrics) {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    impressionMetrics.getClass();
                    ensureImpressionsIsMutable();
                    this.impressions_.set(i10, impressionMetrics);
                    onChanged();
                } else {
                    p1Var.w(i10, impressionMetrics);
                }
                return this;
            }

            private Builder() {
                this.impressions_ = Collections.emptyList();
                this.adRequests_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public SessionMetrics build() {
                SessionMetrics buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public SessionMetrics buildPartial() {
                SessionMetrics sessionMetrics = new SessionMetrics(this);
                int i10 = this.bitField0_;
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    if ((i10 & 1) != 0) {
                        this.impressions_ = Collections.unmodifiableList(this.impressions_);
                        this.bitField0_ &= -2;
                    }
                    sessionMetrics.impressions_ = this.impressions_;
                } else {
                    sessionMetrics.impressions_ = p1Var.f();
                }
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var2 = this.adRequestsBuilder_;
                if (p1Var2 != null) {
                    sessionMetrics.adRequests_ = p1Var2.f();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.adRequests_ = Collections.unmodifiableList(this.adRequests_);
                        this.bitField0_ &= -3;
                    }
                    sessionMetrics.adRequests_ = this.adRequests_;
                }
                t1<UserSession, UserSession.Builder, UserSessionOrBuilder> t1Var = this.currentSessionBuilder_;
                if (t1Var == null) {
                    sessionMetrics.currentSession_ = this.currentSession_;
                } else {
                    sessionMetrics.currentSession_ = t1Var.a();
                }
                onBuilt();
                return sessionMetrics;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public SessionMetrics mo4630getDefaultInstanceForType() {
                return SessionMetrics.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(j2 j2Var) {
                return (Builder) super.setUnknownFields(j2Var);
            }

            public AdRequestMetrics.Builder addAdRequestsBuilder(int i10) {
                return getAdRequestsFieldBuilder().b(i10, AdRequestMetrics.getDefaultInstance());
            }

            public ImpressionMetrics.Builder addImpressionsBuilder(int i10) {
                return getImpressionsFieldBuilder().b(i10, ImpressionMetrics.getDefaultInstance());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(j2 j2Var) {
                return (Builder) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    this.impressions_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    p1Var.g();
                }
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var2 = this.adRequestsBuilder_;
                if (p1Var2 == null) {
                    this.adRequests_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    p1Var2.g();
                }
                if (this.currentSessionBuilder_ == null) {
                    this.currentSession_ = null;
                } else {
                    this.currentSession_ = null;
                    this.currentSessionBuilder_ = null;
                }
                return this;
            }

            public Builder setCurrentSession(UserSession.Builder builder) {
                t1<UserSession, UserSession.Builder, UserSessionOrBuilder> t1Var = this.currentSessionBuilder_;
                if (t1Var == null) {
                    this.currentSession_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.impressions_ = Collections.emptyList();
                this.adRequests_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addAdRequests(int i10, AdRequestMetrics adRequestMetrics) {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    adRequestMetrics.getClass();
                    ensureAdRequestsIsMutable();
                    this.adRequests_.add(i10, adRequestMetrics);
                    onChanged();
                } else {
                    p1Var.d(i10, adRequestMetrics);
                }
                return this;
            }

            public Builder addImpressions(int i10, ImpressionMetrics impressionMetrics) {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    impressionMetrics.getClass();
                    ensureImpressionsIsMutable();
                    this.impressions_.add(i10, impressionMetrics);
                    onChanged();
                } else {
                    p1Var.d(i10, impressionMetrics);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof SessionMetrics) {
                    return mergeFrom((SessionMetrics) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setAdRequests(int i10, AdRequestMetrics.Builder builder) {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    ensureAdRequestsIsMutable();
                    this.adRequests_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder setImpressions(int i10, ImpressionMetrics.Builder builder) {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    ensureImpressionsIsMutable();
                    this.impressions_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(SessionMetrics sessionMetrics) {
                if (sessionMetrics == SessionMetrics.getDefaultInstance()) {
                    return this;
                }
                if (this.impressionsBuilder_ == null) {
                    if (!sessionMetrics.impressions_.isEmpty()) {
                        if (this.impressions_.isEmpty()) {
                            this.impressions_ = sessionMetrics.impressions_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureImpressionsIsMutable();
                            this.impressions_.addAll(sessionMetrics.impressions_);
                        }
                        onChanged();
                    }
                } else if (!sessionMetrics.impressions_.isEmpty()) {
                    if (!this.impressionsBuilder_.t()) {
                        this.impressionsBuilder_.a(sessionMetrics.impressions_);
                    } else {
                        this.impressionsBuilder_.h();
                        this.impressionsBuilder_ = null;
                        this.impressions_ = sessionMetrics.impressions_;
                        this.bitField0_ &= -2;
                        this.impressionsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getImpressionsFieldBuilder() : null;
                    }
                }
                if (this.adRequestsBuilder_ == null) {
                    if (!sessionMetrics.adRequests_.isEmpty()) {
                        if (this.adRequests_.isEmpty()) {
                            this.adRequests_ = sessionMetrics.adRequests_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureAdRequestsIsMutable();
                            this.adRequests_.addAll(sessionMetrics.adRequests_);
                        }
                        onChanged();
                    }
                } else if (!sessionMetrics.adRequests_.isEmpty()) {
                    if (!this.adRequestsBuilder_.t()) {
                        this.adRequestsBuilder_.a(sessionMetrics.adRequests_);
                    } else {
                        this.adRequestsBuilder_.h();
                        this.adRequestsBuilder_ = null;
                        this.adRequests_ = sessionMetrics.adRequests_;
                        this.bitField0_ &= -3;
                        this.adRequestsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getAdRequestsFieldBuilder() : null;
                    }
                }
                if (sessionMetrics.hasCurrentSession()) {
                    mergeCurrentSession(sessionMetrics.getCurrentSession());
                }
                mergeUnknownFields(((GeneratedMessageV3) sessionMetrics).unknownFields);
                onChanged();
                return this;
            }

            public Builder addAdRequests(AdRequestMetrics.Builder builder) {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    ensureAdRequestsIsMutable();
                    this.adRequests_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addImpressions(ImpressionMetrics.Builder builder) {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    ensureImpressionsIsMutable();
                    this.impressions_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addAdRequests(int i10, AdRequestMetrics.Builder builder) {
                p1<AdRequestMetrics, AdRequestMetrics.Builder, AdRequestMetricsOrBuilder> p1Var = this.adRequestsBuilder_;
                if (p1Var == null) {
                    ensureAdRequestsIsMutable();
                    this.adRequests_.add(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.d(i10, builder.build());
                }
                return this;
            }

            public Builder addImpressions(int i10, ImpressionMetrics.Builder builder) {
                p1<ImpressionMetrics, ImpressionMetrics.Builder, ImpressionMetricsOrBuilder> p1Var = this.impressionsBuilder_;
                if (p1Var == null) {
                    ensureImpressionsIsMutable();
                    this.impressions_.add(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.d(i10, builder.build());
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetrics.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetrics.access$19200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$SessionMetrics r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetrics) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$SessionMetrics r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetrics) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.SessionMetrics.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$SessionMetrics$Builder");
            }
        }

        public static Builder newBuilder(SessionMetrics sessionMetrics) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(sessionMetrics);
        }

        public static SessionMetrics parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private SessionMetrics(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static SessionMetrics parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (SessionMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static SessionMetrics parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public SessionMetrics mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static SessionMetrics parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private SessionMetrics() {
            this.memoizedIsInitialized = (byte) -1;
            this.impressions_ = Collections.emptyList();
            this.adRequests_ = Collections.emptyList();
        }

        public static SessionMetrics parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static SessionMetrics parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static SessionMetrics parseFrom(InputStream inputStream) throws IOException {
            return (SessionMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private SessionMetrics(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 10) {
                                    if (!(z11 & true)) {
                                        this.impressions_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.impressions_.add(nVar.A(ImpressionMetrics.parser(), yVar));
                                } else if (K == 18) {
                                    if (!(z11 & true)) {
                                        this.adRequests_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.adRequests_.add(nVar.A(AdRequestMetrics.parser(), yVar));
                                } else if (K != 26) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    UserSession userSession = this.currentSession_;
                                    UserSession.Builder builder = userSession != null ? userSession.toBuilder() : null;
                                    UserSession userSession2 = (UserSession) nVar.A(UserSession.parser(), yVar);
                                    this.currentSession_ = userSession2;
                                    if (builder != null) {
                                        builder.mergeFrom(userSession2);
                                        this.currentSession_ = builder.buildPartial();
                                    }
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11 & true) {
                        this.impressions_ = Collections.unmodifiableList(this.impressions_);
                    }
                    if (z11 & true) {
                        this.adRequests_ = Collections.unmodifiableList(this.adRequests_);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.impressions_ = Collections.unmodifiableList(this.impressions_);
            }
            if (z11 & true) {
                this.adRequests_ = Collections.unmodifiableList(this.adRequests_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static SessionMetrics parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (SessionMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static SessionMetrics parseFrom(n nVar) throws IOException {
            return (SessionMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static SessionMetrics parseFrom(n nVar, y yVar) throws IOException {
            return (SessionMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface SessionMetricsOrBuilder extends MessageOrBuilder {
        AdRequestMetrics getAdRequests(int i10);

        int getAdRequestsCount();

        List<AdRequestMetrics> getAdRequestsList();

        AdRequestMetricsOrBuilder getAdRequestsOrBuilder(int i10);

        List<? extends AdRequestMetricsOrBuilder> getAdRequestsOrBuilderList();

        UserSession getCurrentSession();

        UserSessionOrBuilder getCurrentSessionOrBuilder();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        ImpressionMetrics getImpressions(int i10);

        int getImpressionsCount();

        List<ImpressionMetrics> getImpressionsList();

        ImpressionMetricsOrBuilder getImpressionsOrBuilder(int i10);

        List<? extends ImpressionMetricsOrBuilder> getImpressionsOrBuilderList();

        boolean hasCurrentSession();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public static final class Timestamps extends GeneratedMessageV3 implements TimestampsOrBuilder {
        public static final int DAY_BUCKETS_FIELD_NUMBER = 3;
        public static final int DELTAS_FIELD_NUMBER = 2;
        public static final int LAST_TIMESTAMP_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<DayBucket> dayBuckets_;
        private int deltasMemoizedSerializedSize;
        private i0.g deltas_;
        private long lastTimestamp_;
        private byte memoizedIsInitialized;
        private static final Timestamps DEFAULT_INSTANCE = new Timestamps();
        private static final j1<Timestamps> PARSER = new b<Timestamps>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.1
            @Override // com.explorestack.protobuf.j1
            public Timestamps parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Timestamps(nVar, yVar);
            }
        };

        /* loaded from: classes8.dex */
        public static final class DayBucket extends GeneratedMessageV3 implements DayBucketOrBuilder {
            public static final int COUNT_FIELD_NUMBER = 2;
            private static final DayBucket DEFAULT_INSTANCE = new DayBucket();
            private static final j1<DayBucket> PARSER = new b<DayBucket>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.DayBucket.1
                @Override // com.explorestack.protobuf.j1
                public DayBucket parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new DayBucket(nVar, yVar);
                }
            };
            public static final int START_TIME_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int count_;
            private byte memoizedIsInitialized;
            private long startTime_;

            public static DayBucket getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_Timestamps_DayBucket_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static DayBucket parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (DayBucket) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static DayBucket parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<DayBucket> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof DayBucket)) {
                    return super.equals(obj);
                }
                DayBucket dayBucket = (DayBucket) obj;
                if (getStartTime() == dayBucket.getStartTime() && getCount() == dayBucket.getCount() && this.unknownFields.equals(dayBucket.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.DayBucketOrBuilder
            public int getCount() {
                return this.count_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<DayBucket> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                long j10 = this.startTime_;
                if (j10 != 0) {
                    i10 = CodedOutputStream.z(1, j10);
                } else {
                    i10 = 0;
                }
                int i12 = this.count_;
                if (i12 != 0) {
                    i10 += CodedOutputStream.x(2, i12);
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.DayBucketOrBuilder
            public long getStartTime() {
                return this.startTime_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + i0.i(getStartTime())) * 37) + 2) * 53) + getCount()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_Timestamps_DayBucket_fieldAccessorTable.d(DayBucket.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.memoizedIsInitialized;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new DayBucket();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                long j10 = this.startTime_;
                if (j10 != 0) {
                    codedOutputStream.J0(1, j10);
                }
                int i10 = this.count_;
                if (i10 != 0) {
                    codedOutputStream.H0(2, i10);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements DayBucketOrBuilder {
                private int count_;
                private long startTime_;

                public static final Descriptors.Descriptor getDescriptor() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_Timestamps_DayBucket_descriptor;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                public Builder clearCount() {
                    this.count_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearStartTime() {
                    this.startTime_ = 0L;
                    onChanged();
                    return this;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.DayBucketOrBuilder
                public int getCount() {
                    return this.count_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_Timestamps_DayBucket_descriptor;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.DayBucketOrBuilder
                public long getStartTime() {
                    return this.startTime_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_Timestamps_DayBucket_fieldAccessorTable.d(DayBucket.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder setCount(int i10) {
                    this.count_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setStartTime(long j10) {
                    this.startTime_ = j10;
                    onChanged();
                    return this;
                }

                private Builder() {
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public DayBucket build() {
                    DayBucket buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public DayBucket buildPartial() {
                    DayBucket dayBucket = new DayBucket(this);
                    dayBucket.startTime_ = this.startTime_;
                    dayBucket.count_ = this.count_;
                    onBuilt();
                    return dayBucket;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public DayBucket mo4630getDefaultInstanceForType() {
                    return DayBucket.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.setField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public final Builder setUnknownFields(j2 j2Var) {
                    return (Builder) super.setUnknownFields(j2Var);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeUnknownFields(j2 j2Var) {
                    return (Builder) super.mergeUnknownFields(j2Var);
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.startTime_ = 0L;
                    this.count_ = 0;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: clone */
                public Builder mo4628clone() {
                    return (Builder) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof DayBucket) {
                        return mergeFrom((DayBucket) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(DayBucket dayBucket) {
                    if (dayBucket == DayBucket.getDefaultInstance()) {
                        return this;
                    }
                    if (dayBucket.getStartTime() != 0) {
                        setStartTime(dayBucket.getStartTime());
                    }
                    if (dayBucket.getCount() != 0) {
                        setCount(dayBucket.getCount());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) dayBucket).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.DayBucket.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.DayBucket.access$9900()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$Timestamps$DayBucket r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.DayBucket) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.mergeFrom(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$Timestamps$DayBucket r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.DayBucket) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.mergeFrom(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.DayBucket.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$Timestamps$DayBucket$Builder");
                }
            }

            public static Builder newBuilder(DayBucket dayBucket) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(dayBucket);
            }

            public static DayBucket parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private DayBucket(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static DayBucket parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (DayBucket) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static DayBucket parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public DayBucket mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static DayBucket parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private DayBucket() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static DayBucket parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static DayBucket parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            private DayBucket(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 8) {
                                    this.startTime_ = nVar.z();
                                } else if (K != 16) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    this.count_ = nVar.y();
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static DayBucket parseFrom(InputStream inputStream) throws IOException {
                return (DayBucket) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static DayBucket parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (DayBucket) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static DayBucket parseFrom(n nVar) throws IOException {
                return (DayBucket) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static DayBucket parseFrom(n nVar, y yVar) throws IOException {
                return (DayBucket) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface DayBucketOrBuilder extends MessageOrBuilder {
            int getCount();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            long getStartTime();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        static /* synthetic */ i0.g access$10400() {
            return GeneratedMessageV3.emptyIntList();
        }

        static /* synthetic */ i0.g access$11200() {
            return GeneratedMessageV3.emptyIntList();
        }

        static /* synthetic */ i0.g access$11400() {
            return GeneratedMessageV3.emptyIntList();
        }

        public static Timestamps getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_Timestamps_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Timestamps parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Timestamps) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Timestamps parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Timestamps> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Timestamps)) {
                return super.equals(obj);
            }
            Timestamps timestamps = (Timestamps) obj;
            if (getLastTimestamp() == timestamps.getLastTimestamp() && getDeltasList().equals(timestamps.getDeltasList()) && getDayBucketsList().equals(timestamps.getDayBucketsList()) && this.unknownFields.equals(timestamps.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
        public DayBucket getDayBuckets(int i10) {
            return this.dayBuckets_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
        public int getDayBucketsCount() {
            return this.dayBuckets_.size();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
        public List<DayBucket> getDayBucketsList() {
            return this.dayBuckets_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
        public DayBucketOrBuilder getDayBucketsOrBuilder(int i10) {
            return this.dayBuckets_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
        public List<? extends DayBucketOrBuilder> getDayBucketsOrBuilderList() {
            return this.dayBuckets_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
        public int getDeltas(int i10) {
            return this.deltas_.getInt(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
        public int getDeltasCount() {
            return this.deltas_.size();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
        public List<Integer> getDeltasList() {
            return this.deltas_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
        public long getLastTimestamp() {
            return this.lastTimestamp_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Timestamps> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            long j10 = this.lastTimestamp_;
            if (j10 != 0) {
                i10 = CodedOutputStream.z(1, j10);
            } else {
                i10 = 0;
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.deltas_.size(); i13++) {
                i12 += CodedOutputStream.Z(this.deltas_.getInt(i13));
            }
            int i14 = i10 + i12;
            if (!getDeltasList().isEmpty()) {
                i14 = i14 + 1 + CodedOutputStream.y(i12);
            }
            this.deltasMemoizedSerializedSize = i12;
            for (int i15 = 0; i15 < this.dayBuckets_.size(); i15++) {
                i14 += CodedOutputStream.G(3, this.dayBuckets_.get(i15));
            }
            int serializedSize = i14 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + i0.i(getLastTimestamp());
            if (getDeltasCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getDeltasList().hashCode();
            }
            if (getDayBucketsCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getDayBucketsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_Timestamps_fieldAccessorTable.d(Timestamps.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new Timestamps();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            long j10 = this.lastTimestamp_;
            if (j10 != 0) {
                codedOutputStream.J0(1, j10);
            }
            if (getDeltasList().size() > 0) {
                codedOutputStream.d1(18);
                codedOutputStream.d1(this.deltasMemoizedSerializedSize);
            }
            for (int i10 = 0; i10 < this.deltas_.size(); i10++) {
                codedOutputStream.d1(this.deltas_.getInt(i10));
            }
            for (int i11 = 0; i11 < this.dayBuckets_.size(); i11++) {
                codedOutputStream.L0(3, this.dayBuckets_.get(i11));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements TimestampsOrBuilder {
            private int bitField0_;
            private p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> dayBucketsBuilder_;
            private List<DayBucket> dayBuckets_;
            private i0.g deltas_;
            private long lastTimestamp_;

            private void ensureDayBucketsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.dayBuckets_ = new ArrayList(this.dayBuckets_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureDeltasIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.deltas_ = GeneratedMessageV3.mutableCopy(this.deltas_);
                    this.bitField0_ |= 1;
                }
            }

            private p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> getDayBucketsFieldBuilder() {
                boolean z10;
                if (this.dayBucketsBuilder_ == null) {
                    List<DayBucket> list = this.dayBuckets_;
                    if ((this.bitField0_ & 2) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.dayBucketsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.dayBuckets_ = null;
                }
                return this.dayBucketsBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_Timestamps_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDayBucketsFieldBuilder();
                }
            }

            public Builder addAllDayBuckets(Iterable<? extends DayBucket> iterable) {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    ensureDayBucketsIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.dayBuckets_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addAllDeltas(Iterable<? extends Integer> iterable) {
                ensureDeltasIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.deltas_);
                onChanged();
                return this;
            }

            public Builder addDayBuckets(DayBucket dayBucket) {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    dayBucket.getClass();
                    ensureDayBucketsIsMutable();
                    this.dayBuckets_.add(dayBucket);
                    onChanged();
                } else {
                    p1Var.e(dayBucket);
                }
                return this;
            }

            public DayBucket.Builder addDayBucketsBuilder() {
                return getDayBucketsFieldBuilder().c(DayBucket.getDefaultInstance());
            }

            public Builder addDeltas(int i10) {
                ensureDeltasIsMutable();
                this.deltas_.addInt(i10);
                onChanged();
                return this;
            }

            public Builder clearDayBuckets() {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    this.dayBuckets_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearDeltas() {
                this.deltas_ = Timestamps.access$11400();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder clearLastTimestamp() {
                this.lastTimestamp_ = 0L;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
            public DayBucket getDayBuckets(int i10) {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    return this.dayBuckets_.get(i10);
                }
                return p1Var.n(i10);
            }

            public DayBucket.Builder getDayBucketsBuilder(int i10) {
                return getDayBucketsFieldBuilder().k(i10);
            }

            public List<DayBucket.Builder> getDayBucketsBuilderList() {
                return getDayBucketsFieldBuilder().l();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
            public int getDayBucketsCount() {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    return this.dayBuckets_.size();
                }
                return p1Var.m();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
            public List<DayBucket> getDayBucketsList() {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.dayBuckets_);
                }
                return p1Var.p();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
            public DayBucketOrBuilder getDayBucketsOrBuilder(int i10) {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    return this.dayBuckets_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
            public List<? extends DayBucketOrBuilder> getDayBucketsOrBuilderList() {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.dayBuckets_);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
            public int getDeltas(int i10) {
                return this.deltas_.getInt(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
            public int getDeltasCount() {
                return this.deltas_.size();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
            public List<Integer> getDeltasList() {
                if ((this.bitField0_ & 1) != 0) {
                    return Collections.unmodifiableList(this.deltas_);
                }
                return this.deltas_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_Timestamps_descriptor;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.TimestampsOrBuilder
            public long getLastTimestamp() {
                return this.lastTimestamp_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_Timestamps_fieldAccessorTable.d(Timestamps.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeDayBuckets(int i10) {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    ensureDayBucketsIsMutable();
                    this.dayBuckets_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
                }
                return this;
            }

            public Builder setDayBuckets(int i10, DayBucket dayBucket) {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    dayBucket.getClass();
                    ensureDayBucketsIsMutable();
                    this.dayBuckets_.set(i10, dayBucket);
                    onChanged();
                } else {
                    p1Var.w(i10, dayBucket);
                }
                return this;
            }

            public Builder setDeltas(int i10, int i11) {
                ensureDeltasIsMutable();
                this.deltas_.setInt(i10, i11);
                onChanged();
                return this;
            }

            public Builder setLastTimestamp(long j10) {
                this.lastTimestamp_ = j10;
                onChanged();
                return this;
            }

            private Builder() {
                this.deltas_ = Timestamps.access$11200();
                this.dayBuckets_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Timestamps build() {
                Timestamps buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Timestamps buildPartial() {
                Timestamps timestamps = new Timestamps(this);
                timestamps.lastTimestamp_ = this.lastTimestamp_;
                if ((this.bitField0_ & 1) != 0) {
                    this.deltas_.makeImmutable();
                    this.bitField0_ &= -2;
                }
                timestamps.deltas_ = this.deltas_;
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var != null) {
                    timestamps.dayBuckets_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.dayBuckets_ = Collections.unmodifiableList(this.dayBuckets_);
                        this.bitField0_ &= -3;
                    }
                    timestamps.dayBuckets_ = this.dayBuckets_;
                }
                onBuilt();
                return timestamps;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Timestamps mo4630getDefaultInstanceForType() {
                return Timestamps.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(j2 j2Var) {
                return (Builder) super.setUnknownFields(j2Var);
            }

            public DayBucket.Builder addDayBucketsBuilder(int i10) {
                return getDayBucketsFieldBuilder().b(i10, DayBucket.getDefaultInstance());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(j2 j2Var) {
                return (Builder) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.lastTimestamp_ = 0L;
                this.deltas_ = Timestamps.access$10400();
                this.bitField0_ &= -2;
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    this.dayBuckets_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    p1Var.g();
                }
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.deltas_ = Timestamps.access$11200();
                this.dayBuckets_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addDayBuckets(int i10, DayBucket dayBucket) {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    dayBucket.getClass();
                    ensureDayBucketsIsMutable();
                    this.dayBuckets_.add(i10, dayBucket);
                    onChanged();
                } else {
                    p1Var.d(i10, dayBucket);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof Timestamps) {
                    return mergeFrom((Timestamps) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setDayBuckets(int i10, DayBucket.Builder builder) {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    ensureDayBucketsIsMutable();
                    this.dayBuckets_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(Timestamps timestamps) {
                if (timestamps == Timestamps.getDefaultInstance()) {
                    return this;
                }
                if (timestamps.getLastTimestamp() != 0) {
                    setLastTimestamp(timestamps.getLastTimestamp());
                }
                if (!timestamps.deltas_.isEmpty()) {
                    if (this.deltas_.isEmpty()) {
                        this.deltas_ = timestamps.deltas_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureDeltasIsMutable();
                        this.deltas_.addAll(timestamps.deltas_);
                    }
                    onChanged();
                }
                if (this.dayBucketsBuilder_ == null) {
                    if (!timestamps.dayBuckets_.isEmpty()) {
                        if (this.dayBuckets_.isEmpty()) {
                            this.dayBuckets_ = timestamps.dayBuckets_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureDayBucketsIsMutable();
                            this.dayBuckets_.addAll(timestamps.dayBuckets_);
                        }
                        onChanged();
                    }
                } else if (!timestamps.dayBuckets_.isEmpty()) {
                    if (!this.dayBucketsBuilder_.t()) {
                        this.dayBucketsBuilder_.a(timestamps.dayBuckets_);
                    } else {
                        this.dayBucketsBuilder_.h();
                        this.dayBucketsBuilder_ = null;
                        this.dayBuckets_ = timestamps.dayBuckets_;
                        this.bitField0_ &= -3;
                        this.dayBucketsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDayBucketsFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) timestamps).unknownFields);
                onChanged();
                return this;
            }

            public Builder addDayBuckets(DayBucket.Builder builder) {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    ensureDayBucketsIsMutable();
                    this.dayBuckets_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addDayBuckets(int i10, DayBucket.Builder builder) {
                p1<DayBucket, DayBucket.Builder, DayBucketOrBuilder> p1Var = this.dayBucketsBuilder_;
                if (p1Var == null) {
                    ensureDayBucketsIsMutable();
                    this.dayBuckets_.add(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.d(i10, builder.build());
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.access$11100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$Timestamps r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$Timestamps r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.Timestamps.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$Timestamps$Builder");
            }
        }

        public static Builder newBuilder(Timestamps timestamps) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(timestamps);
        }

        public static Timestamps parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Timestamps(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.deltasMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Timestamps parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Timestamps) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Timestamps parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Timestamps mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Timestamps parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Timestamps parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        private Timestamps() {
            this.deltasMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.deltas_ = GeneratedMessageV3.emptyIntList();
            this.dayBuckets_ = Collections.emptyList();
        }

        public static Timestamps parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Timestamps parseFrom(InputStream inputStream) throws IOException {
            return (Timestamps) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Timestamps parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Timestamps) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Timestamps(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 8) {
                                this.lastTimestamp_ = nVar.z();
                            } else if (K == 16) {
                                if (!(z11 & true)) {
                                    this.deltas_ = GeneratedMessageV3.newIntList();
                                    z11 |= true;
                                }
                                this.deltas_.addInt(nVar.L());
                            } else if (K == 18) {
                                int p10 = nVar.p(nVar.C());
                                if (!(z11 & true) && nVar.d() > 0) {
                                    this.deltas_ = GeneratedMessageV3.newIntList();
                                    z11 |= true;
                                }
                                while (nVar.d() > 0) {
                                    this.deltas_.addInt(nVar.L());
                                }
                                nVar.o(p10);
                            } else if (K != 26) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.dayBuckets_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.dayBuckets_.add(nVar.A(DayBucket.parser(), yVar));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11 & true) {
                        this.deltas_.makeImmutable();
                    }
                    if (z11 & true) {
                        this.dayBuckets_ = Collections.unmodifiableList(this.dayBuckets_);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.deltas_.makeImmutable();
            }
            if (z11 & true) {
                this.dayBuckets_ = Collections.unmodifiableList(this.dayBuckets_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static Timestamps parseFrom(n nVar) throws IOException {
            return (Timestamps) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static Timestamps parseFrom(n nVar, y yVar) throws IOException {
            return (Timestamps) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface TimestampsOrBuilder extends MessageOrBuilder {
        Timestamps.DayBucket getDayBuckets(int i10);

        int getDayBucketsCount();

        List<Timestamps.DayBucket> getDayBucketsList();

        Timestamps.DayBucketOrBuilder getDayBucketsOrBuilder(int i10);

        List<? extends Timestamps.DayBucketOrBuilder> getDayBucketsOrBuilderList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        int getDeltas(int i10);

        int getDeltasCount();

        List<Integer> getDeltasList();

        long getLastTimestamp();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public static final class UserIdQuery extends GeneratedMessageV3 implements UserIdQueryOrBuilder {
        private static final UserIdQuery DEFAULT_INSTANCE = new UserIdQuery();
        private static final j1<UserIdQuery> PARSER = new b<UserIdQuery>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQuery.1
            @Override // com.explorestack.protobuf.j1
            public UserIdQuery parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new UserIdQuery(nVar, yVar);
            }
        };
        public static final int TIMESTAMP_FIELD_NUMBER = 2;
        public static final int USER_ID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private long timestamp_;
        private volatile Object userId_;

        public static UserIdQuery getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_UserIdQuery_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static UserIdQuery parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UserIdQuery) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static UserIdQuery parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<UserIdQuery> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof UserIdQuery)) {
                return super.equals(obj);
            }
            UserIdQuery userIdQuery = (UserIdQuery) obj;
            if (getUserId().equals(userIdQuery.getUserId()) && getTimestamp() == userIdQuery.getTimestamp() && this.unknownFields.equals(userIdQuery.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<UserIdQuery> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (!getUserIdBytes().isEmpty()) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.userId_);
            } else {
                i10 = 0;
            }
            long j10 = this.timestamp_;
            if (j10 != 0) {
                i10 += CodedOutputStream.z(2, j10);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQueryOrBuilder
        public long getTimestamp() {
            return this.timestamp_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQueryOrBuilder
        public String getUserId() {
            Object obj = this.userId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.userId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQueryOrBuilder
        public ByteString getUserIdBytes() {
            Object obj = this.userId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.userId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUserId().hashCode()) * 37) + 2) * 53) + i0.i(getTimestamp())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_UserIdQuery_fieldAccessorTable.d(UserIdQuery.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new UserIdQuery();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getUserIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.userId_);
            }
            long j10 = this.timestamp_;
            if (j10 != 0) {
                codedOutputStream.J0(2, j10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements UserIdQueryOrBuilder {
            private long timestamp_;
            private Object userId_;

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserIdQuery_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearTimestamp() {
                this.timestamp_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearUserId() {
                this.userId_ = UserIdQuery.getDefaultInstance().getUserId();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserIdQuery_descriptor;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQueryOrBuilder
            public long getTimestamp() {
                return this.timestamp_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQueryOrBuilder
            public String getUserId() {
                Object obj = this.userId_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.userId_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQueryOrBuilder
            public ByteString getUserIdBytes() {
                Object obj = this.userId_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.userId_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserIdQuery_fieldAccessorTable.d(UserIdQuery.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setTimestamp(long j10) {
                this.timestamp_ = j10;
                onChanged();
                return this;
            }

            public Builder setUserId(String str) {
                str.getClass();
                this.userId_ = str;
                onChanged();
                return this;
            }

            public Builder setUserIdBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                this.userId_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.userId_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public UserIdQuery build() {
                UserIdQuery buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public UserIdQuery buildPartial() {
                UserIdQuery userIdQuery = new UserIdQuery(this);
                userIdQuery.userId_ = this.userId_;
                userIdQuery.timestamp_ = this.timestamp_;
                onBuilt();
                return userIdQuery;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public UserIdQuery mo4630getDefaultInstanceForType() {
                return UserIdQuery.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(j2 j2Var) {
                return (Builder) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(j2 j2Var) {
                return (Builder) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.userId_ = "";
                this.timestamp_ = 0L;
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.userId_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof UserIdQuery) {
                    return mergeFrom((UserIdQuery) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(UserIdQuery userIdQuery) {
                if (userIdQuery == UserIdQuery.getDefaultInstance()) {
                    return this;
                }
                if (!userIdQuery.getUserId().isEmpty()) {
                    this.userId_ = userIdQuery.userId_;
                    onChanged();
                }
                if (userIdQuery.getTimestamp() != 0) {
                    setTimestamp(userIdQuery.getTimestamp());
                }
                mergeUnknownFields(((GeneratedMessageV3) userIdQuery).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQuery.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQuery.access$20300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserIdQuery r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQuery) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserIdQuery r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQuery) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserIdQuery.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserIdQuery$Builder");
            }
        }

        public static Builder newBuilder(UserIdQuery userIdQuery) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(userIdQuery);
        }

        public static UserIdQuery parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private UserIdQuery(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static UserIdQuery parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (UserIdQuery) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static UserIdQuery parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public UserIdQuery mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static UserIdQuery parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private UserIdQuery() {
            this.memoizedIsInitialized = (byte) -1;
            this.userId_ = "";
        }

        public static UserIdQuery parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static UserIdQuery parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static UserIdQuery parseFrom(InputStream inputStream) throws IOException {
            return (UserIdQuery) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private UserIdQuery(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 10) {
                                this.userId_ = nVar.J();
                            } else if (K != 16) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                this.timestamp_ = nVar.z();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static UserIdQuery parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (UserIdQuery) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static UserIdQuery parseFrom(n nVar) throws IOException {
            return (UserIdQuery) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static UserIdQuery parseFrom(n nVar, y yVar) throws IOException {
            return (UserIdQuery) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface UserIdQueryOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        long getTimestamp();

        String getUserId();

        ByteString getUserIdBytes();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public static final class UserSession extends GeneratedMessageV3 implements UserSessionOrBuilder {
        public static final int LAST_ACTIVITY_FIELD_NUMBER = 1;
        public static final int METRICS_BY_AD_TYPE_FIELD_NUMBER = 3;
        public static final int SESSION_START_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private long lastActivity_;
        private byte memoizedIsInitialized;
        private List<AdTypeMetrics> metricsByAdType_;
        private long sessionStart_;
        private static final UserSession DEFAULT_INSTANCE = new UserSession();
        private static final j1<UserSession> PARSER = new b<UserSession>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.1
            @Override // com.explorestack.protobuf.j1
            public UserSession parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new UserSession(nVar, yVar);
            }
        };

        /* loaded from: classes8.dex */
        public static final class AdTypeMetrics extends GeneratedMessageV3 implements AdTypeMetricsOrBuilder {
            public static final int AD_REQUESTS_FIELD_NUMBER = 3;
            public static final int AD_TYPE_FIELD_NUMBER = 1;
            public static final int AUCTIONS_FIELD_NUMBER = 13;
            public static final int BIDS_FIELD_NUMBER = 4;
            public static final int CUMULATIVE_BID_PRICE_FIELD_NUMBER = 9;
            public static final int CUMULATIVE_LURL_PRICE_FIELD_NUMBER = 10;
            public static final int CUMULATIVE_NURL_PRICE_FIELD_NUMBER = 11;
            public static final int ECPM_FIELD_NUMBER = 12;
            public static final int IMPRESSIONS_FIELD_NUMBER = 2;
            public static final int LOSSES_FIELD_NUMBER = 6;
            public static final int LURLS_FIELD_NUMBER = 7;
            public static final int NURLS_FIELD_NUMBER = 8;
            public static final int WINS_FIELD_NUMBER = 5;
            private static final long serialVersionUID = 0;
            private int adRequests_;
            private int adType_;
            private List<Auction> auctions_;
            private int bids_;
            private float cumulativeBidPrice_;
            private float cumulativeLurlPrice_;
            private float cumulativeNurlPrice_;
            private Ecpm ecpm_;
            private int impressions_;
            private int losses_;
            private int lurls_;
            private byte memoizedIsInitialized;
            private int nurls_;
            private int wins_;
            private static final AdTypeMetrics DEFAULT_INSTANCE = new AdTypeMetrics();
            private static final j1<AdTypeMetrics> PARSER = new b<AdTypeMetrics>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetrics.1
                @Override // com.explorestack.protobuf.j1
                public AdTypeMetrics parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new AdTypeMetrics(nVar, yVar);
                }
            };

            public static AdTypeMetrics getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_AdTypeMetrics_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static AdTypeMetrics parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (AdTypeMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static AdTypeMetrics parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<AdTypeMetrics> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof AdTypeMetrics)) {
                    return super.equals(obj);
                }
                AdTypeMetrics adTypeMetrics = (AdTypeMetrics) obj;
                if (this.adType_ != adTypeMetrics.adType_ || getImpressions() != adTypeMetrics.getImpressions() || getAdRequests() != adTypeMetrics.getAdRequests() || getBids() != adTypeMetrics.getBids() || getWins() != adTypeMetrics.getWins() || getLosses() != adTypeMetrics.getLosses() || getLurls() != adTypeMetrics.getLurls() || getNurls() != adTypeMetrics.getNurls() || Float.floatToIntBits(getCumulativeBidPrice()) != Float.floatToIntBits(adTypeMetrics.getCumulativeBidPrice()) || Float.floatToIntBits(getCumulativeLurlPrice()) != Float.floatToIntBits(adTypeMetrics.getCumulativeLurlPrice()) || Float.floatToIntBits(getCumulativeNurlPrice()) != Float.floatToIntBits(adTypeMetrics.getCumulativeNurlPrice()) || hasEcpm() != adTypeMetrics.hasEcpm()) {
                    return false;
                }
                if ((!hasEcpm() || getEcpm().equals(adTypeMetrics.getEcpm())) && getAuctionsList().equals(adTypeMetrics.getAuctionsList()) && this.unknownFields.equals(adTypeMetrics.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public int getAdRequests() {
                return this.adRequests_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public AdType getAdType() {
                AdType valueOf = AdType.valueOf(this.adType_);
                if (valueOf == null) {
                    return AdType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public int getAdTypeValue() {
                return this.adType_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public Auction getAuctions(int i10) {
                return this.auctions_.get(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public int getAuctionsCount() {
                return this.auctions_.size();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public List<Auction> getAuctionsList() {
                return this.auctions_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public AuctionOrBuilder getAuctionsOrBuilder(int i10) {
                return this.auctions_.get(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public List<? extends AuctionOrBuilder> getAuctionsOrBuilderList() {
                return this.auctions_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public int getBids() {
                return this.bids_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public float getCumulativeBidPrice() {
                return this.cumulativeBidPrice_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public float getCumulativeLurlPrice() {
                return this.cumulativeLurlPrice_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public float getCumulativeNurlPrice() {
                return this.cumulativeNurlPrice_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public Ecpm getEcpm() {
                Ecpm ecpm = this.ecpm_;
                if (ecpm == null) {
                    return Ecpm.getDefaultInstance();
                }
                return ecpm;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public EcpmOrBuilder getEcpmOrBuilder() {
                return getEcpm();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public int getImpressions() {
                return this.impressions_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public int getLosses() {
                return this.losses_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public int getLurls() {
                return this.lurls_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public int getNurls() {
                return this.nurls_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<AdTypeMetrics> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if (this.adType_ != AdType.UNKNOWN.getNumber()) {
                    i10 = CodedOutputStream.l(1, this.adType_);
                } else {
                    i10 = 0;
                }
                int i12 = this.impressions_;
                if (i12 != 0) {
                    i10 += CodedOutputStream.x(2, i12);
                }
                int i13 = this.adRequests_;
                if (i13 != 0) {
                    i10 += CodedOutputStream.x(3, i13);
                }
                int i14 = this.bids_;
                if (i14 != 0) {
                    i10 += CodedOutputStream.x(4, i14);
                }
                int i15 = this.wins_;
                if (i15 != 0) {
                    i10 += CodedOutputStream.x(5, i15);
                }
                int i16 = this.losses_;
                if (i16 != 0) {
                    i10 += CodedOutputStream.x(6, i16);
                }
                int i17 = this.lurls_;
                if (i17 != 0) {
                    i10 += CodedOutputStream.x(7, i17);
                }
                int i18 = this.nurls_;
                if (i18 != 0) {
                    i10 += CodedOutputStream.x(8, i18);
                }
                float f10 = this.cumulativeBidPrice_;
                if (f10 != 0.0f) {
                    i10 += CodedOutputStream.r(9, f10);
                }
                float f11 = this.cumulativeLurlPrice_;
                if (f11 != 0.0f) {
                    i10 += CodedOutputStream.r(10, f11);
                }
                float f12 = this.cumulativeNurlPrice_;
                if (f12 != 0.0f) {
                    i10 += CodedOutputStream.r(11, f12);
                }
                if (this.ecpm_ != null) {
                    i10 += CodedOutputStream.G(12, getEcpm());
                }
                for (int i19 = 0; i19 < this.auctions_.size(); i19++) {
                    i10 += CodedOutputStream.G(13, this.auctions_.get(i19));
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public int getWins() {
                return this.wins_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
            public boolean hasEcpm() {
                if (this.ecpm_ != null) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = ((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.adType_) * 37) + 2) * 53) + getImpressions()) * 37) + 3) * 53) + getAdRequests()) * 37) + 4) * 53) + getBids()) * 37) + 5) * 53) + getWins()) * 37) + 6) * 53) + getLosses()) * 37) + 7) * 53) + getLurls()) * 37) + 8) * 53) + getNurls()) * 37) + 9) * 53) + Float.floatToIntBits(getCumulativeBidPrice())) * 37) + 10) * 53) + Float.floatToIntBits(getCumulativeLurlPrice())) * 37) + 11) * 53) + Float.floatToIntBits(getCumulativeNurlPrice());
                if (hasEcpm()) {
                    hashCode = (((hashCode * 37) + 12) * 53) + getEcpm().hashCode();
                }
                if (getAuctionsCount() > 0) {
                    hashCode = (((hashCode * 37) + 13) * 53) + getAuctionsList().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_AdTypeMetrics_fieldAccessorTable.d(AdTypeMetrics.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.memoizedIsInitialized;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new AdTypeMetrics();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.adType_ != AdType.UNKNOWN.getNumber()) {
                    codedOutputStream.v0(1, this.adType_);
                }
                int i10 = this.impressions_;
                if (i10 != 0) {
                    codedOutputStream.H0(2, i10);
                }
                int i11 = this.adRequests_;
                if (i11 != 0) {
                    codedOutputStream.H0(3, i11);
                }
                int i12 = this.bids_;
                if (i12 != 0) {
                    codedOutputStream.H0(4, i12);
                }
                int i13 = this.wins_;
                if (i13 != 0) {
                    codedOutputStream.H0(5, i13);
                }
                int i14 = this.losses_;
                if (i14 != 0) {
                    codedOutputStream.H0(6, i14);
                }
                int i15 = this.lurls_;
                if (i15 != 0) {
                    codedOutputStream.H0(7, i15);
                }
                int i16 = this.nurls_;
                if (i16 != 0) {
                    codedOutputStream.H0(8, i16);
                }
                float f10 = this.cumulativeBidPrice_;
                if (f10 != 0.0f) {
                    codedOutputStream.B0(9, f10);
                }
                float f11 = this.cumulativeLurlPrice_;
                if (f11 != 0.0f) {
                    codedOutputStream.B0(10, f11);
                }
                float f12 = this.cumulativeNurlPrice_;
                if (f12 != 0.0f) {
                    codedOutputStream.B0(11, f12);
                }
                if (this.ecpm_ != null) {
                    codedOutputStream.L0(12, getEcpm());
                }
                for (int i17 = 0; i17 < this.auctions_.size(); i17++) {
                    codedOutputStream.L0(13, this.auctions_.get(i17));
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements AdTypeMetricsOrBuilder {
                private int adRequests_;
                private int adType_;
                private p1<Auction, Auction.Builder, AuctionOrBuilder> auctionsBuilder_;
                private List<Auction> auctions_;
                private int bids_;
                private int bitField0_;
                private float cumulativeBidPrice_;
                private float cumulativeLurlPrice_;
                private float cumulativeNurlPrice_;
                private t1<Ecpm, Ecpm.Builder, EcpmOrBuilder> ecpmBuilder_;
                private Ecpm ecpm_;
                private int impressions_;
                private int losses_;
                private int lurls_;
                private int nurls_;
                private int wins_;

                private void ensureAuctionsIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.auctions_ = new ArrayList(this.auctions_);
                        this.bitField0_ |= 1;
                    }
                }

                private p1<Auction, Auction.Builder, AuctionOrBuilder> getAuctionsFieldBuilder() {
                    if (this.auctionsBuilder_ == null) {
                        List<Auction> list = this.auctions_;
                        boolean z10 = true;
                        if ((this.bitField0_ & 1) == 0) {
                            z10 = false;
                        }
                        this.auctionsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                        this.auctions_ = null;
                    }
                    return this.auctionsBuilder_;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_AdTypeMetrics_descriptor;
                }

                private t1<Ecpm, Ecpm.Builder, EcpmOrBuilder> getEcpmFieldBuilder() {
                    if (this.ecpmBuilder_ == null) {
                        this.ecpmBuilder_ = new t1<>(getEcpm(), getParentForChildren(), isClean());
                        this.ecpm_ = null;
                    }
                    return this.ecpmBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        getAuctionsFieldBuilder();
                    }
                }

                public Builder addAllAuctions(Iterable<? extends Auction> iterable) {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        ensureAuctionsIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.auctions_);
                        onChanged();
                    } else {
                        p1Var.a(iterable);
                    }
                    return this;
                }

                public Builder addAuctions(Auction auction) {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        auction.getClass();
                        ensureAuctionsIsMutable();
                        this.auctions_.add(auction);
                        onChanged();
                    } else {
                        p1Var.e(auction);
                    }
                    return this;
                }

                public Auction.Builder addAuctionsBuilder() {
                    return getAuctionsFieldBuilder().c(Auction.getDefaultInstance());
                }

                public Builder clearAdRequests() {
                    this.adRequests_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearAdType() {
                    this.adType_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearAuctions() {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        this.auctions_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder clearBids() {
                    this.bids_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearCumulativeBidPrice() {
                    this.cumulativeBidPrice_ = 0.0f;
                    onChanged();
                    return this;
                }

                public Builder clearCumulativeLurlPrice() {
                    this.cumulativeLurlPrice_ = 0.0f;
                    onChanged();
                    return this;
                }

                public Builder clearCumulativeNurlPrice() {
                    this.cumulativeNurlPrice_ = 0.0f;
                    onChanged();
                    return this;
                }

                public Builder clearEcpm() {
                    if (this.ecpmBuilder_ == null) {
                        this.ecpm_ = null;
                        onChanged();
                    } else {
                        this.ecpm_ = null;
                        this.ecpmBuilder_ = null;
                    }
                    return this;
                }

                public Builder clearImpressions() {
                    this.impressions_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearLosses() {
                    this.losses_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearLurls() {
                    this.lurls_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearNurls() {
                    this.nurls_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearWins() {
                    this.wins_ = 0;
                    onChanged();
                    return this;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public int getAdRequests() {
                    return this.adRequests_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public AdType getAdType() {
                    AdType valueOf = AdType.valueOf(this.adType_);
                    if (valueOf == null) {
                        return AdType.UNRECOGNIZED;
                    }
                    return valueOf;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public int getAdTypeValue() {
                    return this.adType_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public Auction getAuctions(int i10) {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        return this.auctions_.get(i10);
                    }
                    return p1Var.n(i10);
                }

                public Auction.Builder getAuctionsBuilder(int i10) {
                    return getAuctionsFieldBuilder().k(i10);
                }

                public List<Auction.Builder> getAuctionsBuilderList() {
                    return getAuctionsFieldBuilder().l();
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public int getAuctionsCount() {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        return this.auctions_.size();
                    }
                    return p1Var.m();
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public List<Auction> getAuctionsList() {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.auctions_);
                    }
                    return p1Var.p();
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public AuctionOrBuilder getAuctionsOrBuilder(int i10) {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        return this.auctions_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public List<? extends AuctionOrBuilder> getAuctionsOrBuilderList() {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.auctions_);
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public int getBids() {
                    return this.bids_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public float getCumulativeBidPrice() {
                    return this.cumulativeBidPrice_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public float getCumulativeLurlPrice() {
                    return this.cumulativeLurlPrice_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public float getCumulativeNurlPrice() {
                    return this.cumulativeNurlPrice_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_AdTypeMetrics_descriptor;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public Ecpm getEcpm() {
                    t1<Ecpm, Ecpm.Builder, EcpmOrBuilder> t1Var = this.ecpmBuilder_;
                    if (t1Var == null) {
                        Ecpm ecpm = this.ecpm_;
                        if (ecpm == null) {
                            return Ecpm.getDefaultInstance();
                        }
                        return ecpm;
                    }
                    return t1Var.e();
                }

                public Ecpm.Builder getEcpmBuilder() {
                    onChanged();
                    return getEcpmFieldBuilder().d();
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public EcpmOrBuilder getEcpmOrBuilder() {
                    t1<Ecpm, Ecpm.Builder, EcpmOrBuilder> t1Var = this.ecpmBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    Ecpm ecpm = this.ecpm_;
                    if (ecpm == null) {
                        return Ecpm.getDefaultInstance();
                    }
                    return ecpm;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public int getImpressions() {
                    return this.impressions_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public int getLosses() {
                    return this.losses_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public int getLurls() {
                    return this.lurls_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public int getNurls() {
                    return this.nurls_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public int getWins() {
                    return this.wins_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetricsOrBuilder
                public boolean hasEcpm() {
                    if (this.ecpmBuilder_ == null && this.ecpm_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_AdTypeMetrics_fieldAccessorTable.d(AdTypeMetrics.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder mergeEcpm(Ecpm ecpm) {
                    t1<Ecpm, Ecpm.Builder, EcpmOrBuilder> t1Var = this.ecpmBuilder_;
                    if (t1Var == null) {
                        Ecpm ecpm2 = this.ecpm_;
                        if (ecpm2 != null) {
                            this.ecpm_ = Ecpm.newBuilder(ecpm2).mergeFrom(ecpm).buildPartial();
                        } else {
                            this.ecpm_ = ecpm;
                        }
                        onChanged();
                    } else {
                        t1Var.g(ecpm);
                    }
                    return this;
                }

                public Builder removeAuctions(int i10) {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        ensureAuctionsIsMutable();
                        this.auctions_.remove(i10);
                        onChanged();
                    } else {
                        p1Var.v(i10);
                    }
                    return this;
                }

                public Builder setAdRequests(int i10) {
                    this.adRequests_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setAdType(AdType adType) {
                    adType.getClass();
                    this.adType_ = adType.getNumber();
                    onChanged();
                    return this;
                }

                public Builder setAdTypeValue(int i10) {
                    this.adType_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setAuctions(int i10, Auction auction) {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        auction.getClass();
                        ensureAuctionsIsMutable();
                        this.auctions_.set(i10, auction);
                        onChanged();
                    } else {
                        p1Var.w(i10, auction);
                    }
                    return this;
                }

                public Builder setBids(int i10) {
                    this.bids_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setCumulativeBidPrice(float f10) {
                    this.cumulativeBidPrice_ = f10;
                    onChanged();
                    return this;
                }

                public Builder setCumulativeLurlPrice(float f10) {
                    this.cumulativeLurlPrice_ = f10;
                    onChanged();
                    return this;
                }

                public Builder setCumulativeNurlPrice(float f10) {
                    this.cumulativeNurlPrice_ = f10;
                    onChanged();
                    return this;
                }

                public Builder setEcpm(Ecpm ecpm) {
                    t1<Ecpm, Ecpm.Builder, EcpmOrBuilder> t1Var = this.ecpmBuilder_;
                    if (t1Var == null) {
                        ecpm.getClass();
                        this.ecpm_ = ecpm;
                        onChanged();
                    } else {
                        t1Var.i(ecpm);
                    }
                    return this;
                }

                public Builder setImpressions(int i10) {
                    this.impressions_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setLosses(int i10) {
                    this.losses_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setLurls(int i10) {
                    this.lurls_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setNurls(int i10) {
                    this.nurls_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setWins(int i10) {
                    this.wins_ = i10;
                    onChanged();
                    return this;
                }

                private Builder() {
                    this.adType_ = 0;
                    this.auctions_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public AdTypeMetrics build() {
                    AdTypeMetrics buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public AdTypeMetrics buildPartial() {
                    AdTypeMetrics adTypeMetrics = new AdTypeMetrics(this);
                    adTypeMetrics.adType_ = this.adType_;
                    adTypeMetrics.impressions_ = this.impressions_;
                    adTypeMetrics.adRequests_ = this.adRequests_;
                    adTypeMetrics.bids_ = this.bids_;
                    adTypeMetrics.wins_ = this.wins_;
                    adTypeMetrics.losses_ = this.losses_;
                    adTypeMetrics.lurls_ = this.lurls_;
                    adTypeMetrics.nurls_ = this.nurls_;
                    adTypeMetrics.cumulativeBidPrice_ = this.cumulativeBidPrice_;
                    adTypeMetrics.cumulativeLurlPrice_ = this.cumulativeLurlPrice_;
                    adTypeMetrics.cumulativeNurlPrice_ = this.cumulativeNurlPrice_;
                    t1<Ecpm, Ecpm.Builder, EcpmOrBuilder> t1Var = this.ecpmBuilder_;
                    if (t1Var == null) {
                        adTypeMetrics.ecpm_ = this.ecpm_;
                    } else {
                        adTypeMetrics.ecpm_ = t1Var.a();
                    }
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var != null) {
                        adTypeMetrics.auctions_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 1) != 0) {
                            this.auctions_ = Collections.unmodifiableList(this.auctions_);
                            this.bitField0_ &= -2;
                        }
                        adTypeMetrics.auctions_ = this.auctions_;
                    }
                    onBuilt();
                    return adTypeMetrics;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public AdTypeMetrics mo4630getDefaultInstanceForType() {
                    return AdTypeMetrics.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.setField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public final Builder setUnknownFields(j2 j2Var) {
                    return (Builder) super.setUnknownFields(j2Var);
                }

                public Auction.Builder addAuctionsBuilder(int i10) {
                    return getAuctionsFieldBuilder().b(i10, Auction.getDefaultInstance());
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeUnknownFields(j2 j2Var) {
                    return (Builder) super.mergeUnknownFields(j2Var);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.adType_ = 0;
                    this.impressions_ = 0;
                    this.adRequests_ = 0;
                    this.bids_ = 0;
                    this.wins_ = 0;
                    this.losses_ = 0;
                    this.lurls_ = 0;
                    this.nurls_ = 0;
                    this.cumulativeBidPrice_ = 0.0f;
                    this.cumulativeLurlPrice_ = 0.0f;
                    this.cumulativeNurlPrice_ = 0.0f;
                    if (this.ecpmBuilder_ == null) {
                        this.ecpm_ = null;
                    } else {
                        this.ecpm_ = null;
                        this.ecpmBuilder_ = null;
                    }
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        this.auctions_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder setEcpm(Ecpm.Builder builder) {
                    t1<Ecpm, Ecpm.Builder, EcpmOrBuilder> t1Var = this.ecpmBuilder_;
                    if (t1Var == null) {
                        this.ecpm_ = builder.build();
                        onChanged();
                    } else {
                        t1Var.i(builder.build());
                    }
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.adType_ = 0;
                    this.auctions_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                public Builder addAuctions(int i10, Auction auction) {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        auction.getClass();
                        ensureAuctionsIsMutable();
                        this.auctions_.add(i10, auction);
                        onChanged();
                    } else {
                        p1Var.d(i10, auction);
                    }
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: clone */
                public Builder mo4628clone() {
                    return (Builder) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof AdTypeMetrics) {
                        return mergeFrom((AdTypeMetrics) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder setAuctions(int i10, Auction.Builder builder) {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        ensureAuctionsIsMutable();
                        this.auctions_.set(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.w(i10, builder.build());
                    }
                    return this;
                }

                public Builder mergeFrom(AdTypeMetrics adTypeMetrics) {
                    if (adTypeMetrics == AdTypeMetrics.getDefaultInstance()) {
                        return this;
                    }
                    if (adTypeMetrics.adType_ != 0) {
                        setAdTypeValue(adTypeMetrics.getAdTypeValue());
                    }
                    if (adTypeMetrics.getImpressions() != 0) {
                        setImpressions(adTypeMetrics.getImpressions());
                    }
                    if (adTypeMetrics.getAdRequests() != 0) {
                        setAdRequests(adTypeMetrics.getAdRequests());
                    }
                    if (adTypeMetrics.getBids() != 0) {
                        setBids(adTypeMetrics.getBids());
                    }
                    if (adTypeMetrics.getWins() != 0) {
                        setWins(adTypeMetrics.getWins());
                    }
                    if (adTypeMetrics.getLosses() != 0) {
                        setLosses(adTypeMetrics.getLosses());
                    }
                    if (adTypeMetrics.getLurls() != 0) {
                        setLurls(adTypeMetrics.getLurls());
                    }
                    if (adTypeMetrics.getNurls() != 0) {
                        setNurls(adTypeMetrics.getNurls());
                    }
                    if (adTypeMetrics.getCumulativeBidPrice() != 0.0f) {
                        setCumulativeBidPrice(adTypeMetrics.getCumulativeBidPrice());
                    }
                    if (adTypeMetrics.getCumulativeLurlPrice() != 0.0f) {
                        setCumulativeLurlPrice(adTypeMetrics.getCumulativeLurlPrice());
                    }
                    if (adTypeMetrics.getCumulativeNurlPrice() != 0.0f) {
                        setCumulativeNurlPrice(adTypeMetrics.getCumulativeNurlPrice());
                    }
                    if (adTypeMetrics.hasEcpm()) {
                        mergeEcpm(adTypeMetrics.getEcpm());
                    }
                    if (this.auctionsBuilder_ == null) {
                        if (!adTypeMetrics.auctions_.isEmpty()) {
                            if (this.auctions_.isEmpty()) {
                                this.auctions_ = adTypeMetrics.auctions_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureAuctionsIsMutable();
                                this.auctions_.addAll(adTypeMetrics.auctions_);
                            }
                            onChanged();
                        }
                    } else if (!adTypeMetrics.auctions_.isEmpty()) {
                        if (!this.auctionsBuilder_.t()) {
                            this.auctionsBuilder_.a(adTypeMetrics.auctions_);
                        } else {
                            this.auctionsBuilder_.h();
                            this.auctionsBuilder_ = null;
                            this.auctions_ = adTypeMetrics.auctions_;
                            this.bitField0_ &= -2;
                            this.auctionsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getAuctionsFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) adTypeMetrics).unknownFields);
                    onChanged();
                    return this;
                }

                public Builder addAuctions(Auction.Builder builder) {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        ensureAuctionsIsMutable();
                        this.auctions_.add(builder.build());
                        onChanged();
                    } else {
                        p1Var.e(builder.build());
                    }
                    return this;
                }

                public Builder addAuctions(int i10, Auction.Builder builder) {
                    p1<Auction, Auction.Builder, AuctionOrBuilder> p1Var = this.auctionsBuilder_;
                    if (p1Var == null) {
                        ensureAuctionsIsMutable();
                        this.auctions_.add(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.d(i10, builder.build());
                    }
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetrics.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetrics.access$7500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession$AdTypeMetrics r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetrics) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.mergeFrom(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession$AdTypeMetrics r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetrics) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.mergeFrom(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AdTypeMetrics.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession$AdTypeMetrics$Builder");
                }
            }

            public static Builder newBuilder(AdTypeMetrics adTypeMetrics) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(adTypeMetrics);
            }

            public static AdTypeMetrics parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private AdTypeMetrics(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static AdTypeMetrics parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (AdTypeMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static AdTypeMetrics parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public AdTypeMetrics mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static AdTypeMetrics parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private AdTypeMetrics() {
                this.memoizedIsInitialized = (byte) -1;
                this.adType_ = 0;
                this.auctions_ = Collections.emptyList();
            }

            public static AdTypeMetrics parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static AdTypeMetrics parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static AdTypeMetrics parseFrom(InputStream inputStream) throws IOException {
                return (AdTypeMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private AdTypeMetrics(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                boolean z11 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            switch (K) {
                                case 0:
                                    break;
                                case 8:
                                    this.adType_ = nVar.t();
                                    continue;
                                case 16:
                                    this.impressions_ = nVar.y();
                                    continue;
                                case 24:
                                    this.adRequests_ = nVar.y();
                                    continue;
                                case 32:
                                    this.bids_ = nVar.y();
                                    continue;
                                case 40:
                                    this.wins_ = nVar.y();
                                    continue;
                                case 48:
                                    this.losses_ = nVar.y();
                                    continue;
                                case 56:
                                    this.lurls_ = nVar.y();
                                    continue;
                                case 64:
                                    this.nurls_ = nVar.y();
                                    continue;
                                case 77:
                                    this.cumulativeBidPrice_ = nVar.w();
                                    continue;
                                case 85:
                                    this.cumulativeLurlPrice_ = nVar.w();
                                    continue;
                                case 93:
                                    this.cumulativeNurlPrice_ = nVar.w();
                                    continue;
                                case 98:
                                    Ecpm ecpm = this.ecpm_;
                                    Ecpm.Builder builder = ecpm != null ? ecpm.toBuilder() : null;
                                    Ecpm ecpm2 = (Ecpm) nVar.A(Ecpm.parser(), yVar);
                                    this.ecpm_ = ecpm2;
                                    if (builder != null) {
                                        builder.mergeFrom(ecpm2);
                                        this.ecpm_ = builder.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 106:
                                    if (!z11) {
                                        this.auctions_ = new ArrayList();
                                        z11 = true;
                                    }
                                    this.auctions_.add(nVar.A(Auction.parser(), yVar));
                                    continue;
                                default:
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                        break;
                                    } else {
                                        continue;
                                    }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        if (z11) {
                            this.auctions_ = Collections.unmodifiableList(this.auctions_);
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if (z11) {
                    this.auctions_ = Collections.unmodifiableList(this.auctions_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static AdTypeMetrics parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (AdTypeMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static AdTypeMetrics parseFrom(n nVar) throws IOException {
                return (AdTypeMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static AdTypeMetrics parseFrom(n nVar, y yVar) throws IOException {
                return (AdTypeMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface AdTypeMetricsOrBuilder extends MessageOrBuilder {
            int getAdRequests();

            AdType getAdType();

            int getAdTypeValue();

            Auction getAuctions(int i10);

            int getAuctionsCount();

            List<Auction> getAuctionsList();

            AuctionOrBuilder getAuctionsOrBuilder(int i10);

            List<? extends AuctionOrBuilder> getAuctionsOrBuilderList();

            int getBids();

            float getCumulativeBidPrice();

            float getCumulativeLurlPrice();

            float getCumulativeNurlPrice();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            Ecpm getEcpm();

            EcpmOrBuilder getEcpmOrBuilder();

            int getImpressions();

            int getLosses();

            int getLurls();

            int getNurls();

            int getWins();

            boolean hasEcpm();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes8.dex */
        public static final class Auction extends GeneratedMessageV3 implements AuctionOrBuilder {
            public static final int LOSERS_BIDDER_ID_FIELD_NUMBER = 3;
            public static final int SOURCE_REQUEST_ID_FIELD_NUMBER = 1;
            public static final int WINNER_BIDDER_ID_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int losersBidderIdMemoizedSerializedSize;
            private i0.g losersBidderId_;
            private byte memoizedIsInitialized;
            private ByteString sourceRequestId_;
            private int winnerBidderId_;
            private static final Auction DEFAULT_INSTANCE = new Auction();
            private static final j1<Auction> PARSER = new b<Auction>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Auction.1
                @Override // com.explorestack.protobuf.j1
                public Auction parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Auction(nVar, yVar);
                }
            };

            static /* synthetic */ i0.g access$4300() {
                return GeneratedMessageV3.emptyIntList();
            }

            static /* synthetic */ i0.g access$5000() {
                return GeneratedMessageV3.emptyIntList();
            }

            static /* synthetic */ i0.g access$5200() {
                return GeneratedMessageV3.emptyIntList();
            }

            public static Auction getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_Auction_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Auction parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Auction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Auction parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Auction> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Auction)) {
                    return super.equals(obj);
                }
                Auction auction = (Auction) obj;
                if (getSourceRequestId().equals(auction.getSourceRequestId()) && getWinnerBidderId() == auction.getWinnerBidderId() && getLosersBidderIdList().equals(auction.getLosersBidderIdList()) && this.unknownFields.equals(auction.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AuctionOrBuilder
            public int getLosersBidderId(int i10) {
                return this.losersBidderId_.getInt(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AuctionOrBuilder
            public int getLosersBidderIdCount() {
                return this.losersBidderId_.size();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AuctionOrBuilder
            public List<Integer> getLosersBidderIdList() {
                return this.losersBidderId_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Auction> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if (!this.sourceRequestId_.isEmpty()) {
                    i10 = CodedOutputStream.h(1, this.sourceRequestId_);
                } else {
                    i10 = 0;
                }
                int i12 = this.winnerBidderId_;
                if (i12 != 0) {
                    i10 += CodedOutputStream.Y(2, i12);
                }
                int i13 = 0;
                for (int i14 = 0; i14 < this.losersBidderId_.size(); i14++) {
                    i13 += CodedOutputStream.Z(this.losersBidderId_.getInt(i14));
                }
                int i15 = i10 + i13;
                if (!getLosersBidderIdList().isEmpty()) {
                    i15 = i15 + 1 + CodedOutputStream.y(i13);
                }
                this.losersBidderIdMemoizedSerializedSize = i13;
                int serializedSize = i15 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AuctionOrBuilder
            public ByteString getSourceRequestId() {
                return this.sourceRequestId_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AuctionOrBuilder
            public int getWinnerBidderId() {
                return this.winnerBidderId_;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSourceRequestId().hashCode()) * 37) + 2) * 53) + getWinnerBidderId();
                if (getLosersBidderIdCount() > 0) {
                    hashCode = (((hashCode * 37) + 3) * 53) + getLosersBidderIdList().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_Auction_fieldAccessorTable.d(Auction.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.memoizedIsInitialized;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new Auction();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                if (!this.sourceRequestId_.isEmpty()) {
                    codedOutputStream.r0(1, this.sourceRequestId_);
                }
                int i10 = this.winnerBidderId_;
                if (i10 != 0) {
                    codedOutputStream.c1(2, i10);
                }
                if (getLosersBidderIdList().size() > 0) {
                    codedOutputStream.d1(26);
                    codedOutputStream.d1(this.losersBidderIdMemoizedSerializedSize);
                }
                for (int i11 = 0; i11 < this.losersBidderId_.size(); i11++) {
                    codedOutputStream.d1(this.losersBidderId_.getInt(i11));
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements AuctionOrBuilder {
                private int bitField0_;
                private i0.g losersBidderId_;
                private ByteString sourceRequestId_;
                private int winnerBidderId_;

                private void ensureLosersBidderIdIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.losersBidderId_ = GeneratedMessageV3.mutableCopy(this.losersBidderId_);
                        this.bitField0_ |= 1;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_Auction_descriptor;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                public Builder addAllLosersBidderId(Iterable<? extends Integer> iterable) {
                    ensureLosersBidderIdIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.losersBidderId_);
                    onChanged();
                    return this;
                }

                public Builder addLosersBidderId(int i10) {
                    ensureLosersBidderIdIsMutable();
                    this.losersBidderId_.addInt(i10);
                    onChanged();
                    return this;
                }

                public Builder clearLosersBidderId() {
                    this.losersBidderId_ = Auction.access$5200();
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public Builder clearSourceRequestId() {
                    this.sourceRequestId_ = Auction.getDefaultInstance().getSourceRequestId();
                    onChanged();
                    return this;
                }

                public Builder clearWinnerBidderId() {
                    this.winnerBidderId_ = 0;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_Auction_descriptor;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AuctionOrBuilder
                public int getLosersBidderId(int i10) {
                    return this.losersBidderId_.getInt(i10);
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AuctionOrBuilder
                public int getLosersBidderIdCount() {
                    return this.losersBidderId_.size();
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AuctionOrBuilder
                public List<Integer> getLosersBidderIdList() {
                    if ((this.bitField0_ & 1) != 0) {
                        return Collections.unmodifiableList(this.losersBidderId_);
                    }
                    return this.losersBidderId_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AuctionOrBuilder
                public ByteString getSourceRequestId() {
                    return this.sourceRequestId_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.AuctionOrBuilder
                public int getWinnerBidderId() {
                    return this.winnerBidderId_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_Auction_fieldAccessorTable.d(Auction.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder setLosersBidderId(int i10, int i11) {
                    ensureLosersBidderIdIsMutable();
                    this.losersBidderId_.setInt(i10, i11);
                    onChanged();
                    return this;
                }

                public Builder setSourceRequestId(ByteString byteString) {
                    byteString.getClass();
                    this.sourceRequestId_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setWinnerBidderId(int i10) {
                    this.winnerBidderId_ = i10;
                    onChanged();
                    return this;
                }

                private Builder() {
                    this.sourceRequestId_ = ByteString.EMPTY;
                    this.losersBidderId_ = Auction.access$5000();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Auction build() {
                    Auction buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Auction buildPartial() {
                    Auction auction = new Auction(this);
                    auction.sourceRequestId_ = this.sourceRequestId_;
                    auction.winnerBidderId_ = this.winnerBidderId_;
                    if ((this.bitField0_ & 1) != 0) {
                        this.losersBidderId_.makeImmutable();
                        this.bitField0_ &= -2;
                    }
                    auction.losersBidderId_ = this.losersBidderId_;
                    onBuilt();
                    return auction;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Auction mo4630getDefaultInstanceForType() {
                    return Auction.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.setField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public final Builder setUnknownFields(j2 j2Var) {
                    return (Builder) super.setUnknownFields(j2Var);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeUnknownFields(j2 j2Var) {
                    return (Builder) super.mergeUnknownFields(j2Var);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.sourceRequestId_ = ByteString.EMPTY;
                    this.winnerBidderId_ = 0;
                    this.losersBidderId_ = Auction.access$4300();
                    this.bitField0_ &= -2;
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.sourceRequestId_ = ByteString.EMPTY;
                    this.losersBidderId_ = Auction.access$5000();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: clone */
                public Builder mo4628clone() {
                    return (Builder) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Auction) {
                        return mergeFrom((Auction) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Auction auction) {
                    if (auction == Auction.getDefaultInstance()) {
                        return this;
                    }
                    if (auction.getSourceRequestId() != ByteString.EMPTY) {
                        setSourceRequestId(auction.getSourceRequestId());
                    }
                    if (auction.getWinnerBidderId() != 0) {
                        setWinnerBidderId(auction.getWinnerBidderId());
                    }
                    if (!auction.losersBidderId_.isEmpty()) {
                        if (this.losersBidderId_.isEmpty()) {
                            this.losersBidderId_ = auction.losersBidderId_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureLosersBidderIdIsMutable();
                            this.losersBidderId_.addAll(auction.losersBidderId_);
                        }
                        onChanged();
                    }
                    mergeUnknownFields(((GeneratedMessageV3) auction).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Auction.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Auction.access$4900()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession$Auction r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Auction) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.mergeFrom(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession$Auction r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Auction) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.mergeFrom(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Auction.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession$Auction$Builder");
                }
            }

            public static Builder newBuilder(Auction auction) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(auction);
            }

            public static Auction parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private Auction(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.losersBidderIdMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Auction parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Auction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Auction parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Auction mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Auction parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Auction parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            private Auction() {
                this.losersBidderIdMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.sourceRequestId_ = ByteString.EMPTY;
                this.losersBidderId_ = GeneratedMessageV3.emptyIntList();
            }

            public static Auction parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Auction parseFrom(InputStream inputStream) throws IOException {
                return (Auction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Auction parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Auction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            private Auction(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                boolean z11 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 10) {
                                    this.sourceRequestId_ = nVar.r();
                                } else if (K == 16) {
                                    this.winnerBidderId_ = nVar.L();
                                } else if (K == 24) {
                                    if (!z11) {
                                        this.losersBidderId_ = GeneratedMessageV3.newIntList();
                                        z11 = true;
                                    }
                                    this.losersBidderId_.addInt(nVar.L());
                                } else if (K != 26) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    int p10 = nVar.p(nVar.C());
                                    if (!z11 && nVar.d() > 0) {
                                        this.losersBidderId_ = GeneratedMessageV3.newIntList();
                                        z11 = true;
                                    }
                                    while (nVar.d() > 0) {
                                        this.losersBidderId_.addInt(nVar.L());
                                    }
                                    nVar.o(p10);
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        if (z11) {
                            this.losersBidderId_.makeImmutable();
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if (z11) {
                    this.losersBidderId_.makeImmutable();
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static Auction parseFrom(n nVar) throws IOException {
                return (Auction) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static Auction parseFrom(n nVar, y yVar) throws IOException {
                return (Auction) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface AuctionOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            int getLosersBidderId(int i10);

            int getLosersBidderIdCount();

            List<Integer> getLosersBidderIdList();

            ByteString getSourceRequestId();

            int getWinnerBidderId();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes8.dex */
        public static final class Ecpm extends GeneratedMessageV3 implements EcpmOrBuilder {
            public static final int COUNT_FIELD_NUMBER = 3;
            public static final int FIRST_PRICES_FIELD_NUMBER = 1;
            public static final int LAST_PRICES_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int count_;
            private int firstPricesMemoizedSerializedSize;
            private i0.b firstPrices_;
            private int lastPricesMemoizedSerializedSize;
            private i0.b lastPrices_;
            private byte memoizedIsInitialized;
            private static final Ecpm DEFAULT_INSTANCE = new Ecpm();
            private static final j1<Ecpm> PARSER = new b<Ecpm>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Ecpm.1
                @Override // com.explorestack.protobuf.j1
                public Ecpm parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Ecpm(nVar, yVar);
                }
            };

            static /* synthetic */ i0.b access$2300() {
                return GeneratedMessageV3.emptyDoubleList();
            }

            static /* synthetic */ i0.b access$2400() {
                return GeneratedMessageV3.emptyDoubleList();
            }

            static /* synthetic */ i0.b access$3100() {
                return GeneratedMessageV3.emptyDoubleList();
            }

            static /* synthetic */ i0.b access$3300() {
                return GeneratedMessageV3.emptyDoubleList();
            }

            static /* synthetic */ i0.b access$3400() {
                return GeneratedMessageV3.emptyDoubleList();
            }

            static /* synthetic */ i0.b access$3600() {
                return GeneratedMessageV3.emptyDoubleList();
            }

            public static Ecpm getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_Ecpm_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Ecpm parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Ecpm) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Ecpm parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Ecpm> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Ecpm)) {
                    return super.equals(obj);
                }
                Ecpm ecpm = (Ecpm) obj;
                if (getFirstPricesList().equals(ecpm.getFirstPricesList()) && getLastPricesList().equals(ecpm.getLastPricesList()) && getCount() == ecpm.getCount() && this.unknownFields.equals(ecpm.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
            public int getCount() {
                return this.count_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
            public double getFirstPrices(int i10) {
                return this.firstPrices_.getDouble(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
            public int getFirstPricesCount() {
                return this.firstPrices_.size();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
            public List<Double> getFirstPricesList() {
                return this.firstPrices_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
            public double getLastPrices(int i10) {
                return this.lastPrices_.getDouble(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
            public int getLastPricesCount() {
                return this.lastPrices_.size();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
            public List<Double> getLastPricesList() {
                return this.lastPrices_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Ecpm> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                int size = getFirstPricesList().size() * 8;
                if (!getFirstPricesList().isEmpty()) {
                    i10 = size + 1 + CodedOutputStream.y(size);
                } else {
                    i10 = size;
                }
                this.firstPricesMemoizedSerializedSize = size;
                int size2 = getLastPricesList().size() * 8;
                int i12 = i10 + size2;
                if (!getLastPricesList().isEmpty()) {
                    i12 = i12 + 1 + CodedOutputStream.y(size2);
                }
                this.lastPricesMemoizedSerializedSize = size2;
                int i13 = this.count_;
                if (i13 != 0) {
                    i12 += CodedOutputStream.x(3, i13);
                }
                int serializedSize = i12 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (getFirstPricesCount() > 0) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getFirstPricesList().hashCode();
                }
                if (getLastPricesCount() > 0) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getLastPricesList().hashCode();
                }
                int count = (((((hashCode * 37) + 3) * 53) + getCount()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = count;
                return count;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_Ecpm_fieldAccessorTable.d(Ecpm.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.memoizedIsInitialized;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new Ecpm();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                if (getFirstPricesList().size() > 0) {
                    codedOutputStream.d1(10);
                    codedOutputStream.d1(this.firstPricesMemoizedSerializedSize);
                }
                for (int i10 = 0; i10 < this.firstPrices_.size(); i10++) {
                    codedOutputStream.u0(this.firstPrices_.getDouble(i10));
                }
                if (getLastPricesList().size() > 0) {
                    codedOutputStream.d1(18);
                    codedOutputStream.d1(this.lastPricesMemoizedSerializedSize);
                }
                for (int i11 = 0; i11 < this.lastPrices_.size(); i11++) {
                    codedOutputStream.u0(this.lastPrices_.getDouble(i11));
                }
                int i12 = this.count_;
                if (i12 != 0) {
                    codedOutputStream.H0(3, i12);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements EcpmOrBuilder {
                private int bitField0_;
                private int count_;
                private i0.b firstPrices_;
                private i0.b lastPrices_;

                private void ensureFirstPricesIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.firstPrices_ = GeneratedMessageV3.mutableCopy(this.firstPrices_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensureLastPricesIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.lastPrices_ = GeneratedMessageV3.mutableCopy(this.lastPrices_);
                        this.bitField0_ |= 2;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_Ecpm_descriptor;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                public Builder addAllFirstPrices(Iterable<? extends Double> iterable) {
                    ensureFirstPricesIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.firstPrices_);
                    onChanged();
                    return this;
                }

                public Builder addAllLastPrices(Iterable<? extends Double> iterable) {
                    ensureLastPricesIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.lastPrices_);
                    onChanged();
                    return this;
                }

                public Builder addFirstPrices(double d10) {
                    ensureFirstPricesIsMutable();
                    this.firstPrices_.addDouble(d10);
                    onChanged();
                    return this;
                }

                public Builder addLastPrices(double d10) {
                    ensureLastPricesIsMutable();
                    this.lastPrices_.addDouble(d10);
                    onChanged();
                    return this;
                }

                public Builder clearCount() {
                    this.count_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearFirstPrices() {
                    this.firstPrices_ = Ecpm.access$3300();
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public Builder clearLastPrices() {
                    this.lastPrices_ = Ecpm.access$3600();
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
                public int getCount() {
                    return this.count_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_Ecpm_descriptor;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
                public double getFirstPrices(int i10) {
                    return this.firstPrices_.getDouble(i10);
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
                public int getFirstPricesCount() {
                    return this.firstPrices_.size();
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
                public List<Double> getFirstPricesList() {
                    if ((this.bitField0_ & 1) != 0) {
                        return Collections.unmodifiableList(this.firstPrices_);
                    }
                    return this.firstPrices_;
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
                public double getLastPrices(int i10) {
                    return this.lastPrices_.getDouble(i10);
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
                public int getLastPricesCount() {
                    return this.lastPrices_.size();
                }

                @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.EcpmOrBuilder
                public List<Double> getLastPricesList() {
                    if ((this.bitField0_ & 2) != 0) {
                        return Collections.unmodifiableList(this.lastPrices_);
                    }
                    return this.lastPrices_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_Ecpm_fieldAccessorTable.d(Ecpm.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder setCount(int i10) {
                    this.count_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setFirstPrices(int i10, double d10) {
                    ensureFirstPricesIsMutable();
                    this.firstPrices_.setDouble(i10, d10);
                    onChanged();
                    return this;
                }

                public Builder setLastPrices(int i10, double d10) {
                    ensureLastPricesIsMutable();
                    this.lastPrices_.setDouble(i10, d10);
                    onChanged();
                    return this;
                }

                private Builder() {
                    this.firstPrices_ = Ecpm.access$3100();
                    this.lastPrices_ = Ecpm.access$3400();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Ecpm build() {
                    Ecpm buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Ecpm buildPartial() {
                    Ecpm ecpm = new Ecpm(this);
                    if ((this.bitField0_ & 1) != 0) {
                        this.firstPrices_.makeImmutable();
                        this.bitField0_ &= -2;
                    }
                    ecpm.firstPrices_ = this.firstPrices_;
                    if ((this.bitField0_ & 2) != 0) {
                        this.lastPrices_.makeImmutable();
                        this.bitField0_ &= -3;
                    }
                    ecpm.lastPrices_ = this.lastPrices_;
                    ecpm.count_ = this.count_;
                    onBuilt();
                    return ecpm;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Ecpm mo4630getDefaultInstanceForType() {
                    return Ecpm.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.setField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public final Builder setUnknownFields(j2 j2Var) {
                    return (Builder) super.setUnknownFields(j2Var);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeUnknownFields(j2 j2Var) {
                    return (Builder) super.mergeUnknownFields(j2Var);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.firstPrices_ = Ecpm.access$2300();
                    this.bitField0_ &= -2;
                    this.lastPrices_ = Ecpm.access$2400();
                    this.bitField0_ &= -3;
                    this.count_ = 0;
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.firstPrices_ = Ecpm.access$3100();
                    this.lastPrices_ = Ecpm.access$3400();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: clone */
                public Builder mo4628clone() {
                    return (Builder) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Ecpm) {
                        return mergeFrom((Ecpm) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Ecpm ecpm) {
                    if (ecpm == Ecpm.getDefaultInstance()) {
                        return this;
                    }
                    if (!ecpm.firstPrices_.isEmpty()) {
                        if (this.firstPrices_.isEmpty()) {
                            this.firstPrices_ = ecpm.firstPrices_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureFirstPricesIsMutable();
                            this.firstPrices_.addAll(ecpm.firstPrices_);
                        }
                        onChanged();
                    }
                    if (!ecpm.lastPrices_.isEmpty()) {
                        if (this.lastPrices_.isEmpty()) {
                            this.lastPrices_ = ecpm.lastPrices_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureLastPricesIsMutable();
                            this.lastPrices_.addAll(ecpm.lastPrices_);
                        }
                        onChanged();
                    }
                    if (ecpm.getCount() != 0) {
                        setCount(ecpm.getCount());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) ecpm).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Ecpm.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Ecpm.access$3000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession$Ecpm r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Ecpm) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        if (r3 == 0) goto L10
                        r2.mergeFrom(r3)
                    L10:
                        return r2
                    L11:
                        r3 = move-exception
                        goto L21
                    L13:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                        io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession$Ecpm r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Ecpm) r4     // Catch: java.lang.Throwable -> L11
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                        throw r3     // Catch: java.lang.Throwable -> L1f
                    L1f:
                        r3 = move-exception
                        r0 = r4
                    L21:
                        if (r0 == 0) goto L26
                        r2.mergeFrom(r0)
                    L26:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Ecpm.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession$Ecpm$Builder");
                }
            }

            public static Builder newBuilder(Ecpm ecpm) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(ecpm);
            }

            public static Ecpm parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private Ecpm(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.firstPricesMemoizedSerializedSize = -1;
                this.lastPricesMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Ecpm parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Ecpm) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Ecpm parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Ecpm mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Ecpm parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            public static Ecpm parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Ecpm parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            private Ecpm() {
                this.firstPricesMemoizedSerializedSize = -1;
                this.lastPricesMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.firstPrices_ = GeneratedMessageV3.emptyDoubleList();
                this.lastPrices_ = GeneratedMessageV3.emptyDoubleList();
            }

            public static Ecpm parseFrom(InputStream inputStream) throws IOException {
                return (Ecpm) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Ecpm parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Ecpm) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static Ecpm parseFrom(n nVar) throws IOException {
                return (Ecpm) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            private Ecpm(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                boolean z11 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 24) {
                                    this.count_ = nVar.y();
                                } else if (K == 9) {
                                    if (!(z11 & true)) {
                                        this.firstPrices_ = GeneratedMessageV3.newDoubleList();
                                        z11 |= true;
                                    }
                                    this.firstPrices_.addDouble(nVar.s());
                                } else if (K == 10) {
                                    int p10 = nVar.p(nVar.C());
                                    if (!(z11 & true) && nVar.d() > 0) {
                                        this.firstPrices_ = GeneratedMessageV3.newDoubleList();
                                        z11 |= true;
                                    }
                                    while (nVar.d() > 0) {
                                        this.firstPrices_.addDouble(nVar.s());
                                    }
                                    nVar.o(p10);
                                } else if (K == 17) {
                                    if (!(z11 & true)) {
                                        this.lastPrices_ = GeneratedMessageV3.newDoubleList();
                                        z11 |= true;
                                    }
                                    this.lastPrices_.addDouble(nVar.s());
                                } else if (K != 18) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    int p11 = nVar.p(nVar.C());
                                    if (!(z11 & true) && nVar.d() > 0) {
                                        this.lastPrices_ = GeneratedMessageV3.newDoubleList();
                                        z11 |= true;
                                    }
                                    while (nVar.d() > 0) {
                                        this.lastPrices_.addDouble(nVar.s());
                                    }
                                    nVar.o(p11);
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        if (z11 & true) {
                            this.firstPrices_.makeImmutable();
                        }
                        if (z11 & true) {
                            this.lastPrices_.makeImmutable();
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if (z11 & true) {
                    this.firstPrices_.makeImmutable();
                }
                if (z11 & true) {
                    this.lastPrices_.makeImmutable();
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static Ecpm parseFrom(n nVar, y yVar) throws IOException {
                return (Ecpm) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface EcpmOrBuilder extends MessageOrBuilder {
            int getCount();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            double getFirstPrices(int i10);

            int getFirstPricesCount();

            List<Double> getFirstPricesList();

            double getLastPrices(int i10);

            int getLastPricesCount();

            List<Double> getLastPricesList();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public static UserSession getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static UserSession parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UserSession) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static UserSession parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<UserSession> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof UserSession)) {
                return super.equals(obj);
            }
            UserSession userSession = (UserSession) obj;
            if (getLastActivity() == userSession.getLastActivity() && getMetricsByAdTypeList().equals(userSession.getMetricsByAdTypeList()) && getSessionStart() == userSession.getSessionStart() && this.unknownFields.equals(userSession.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
        public long getLastActivity() {
            return this.lastActivity_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
        public AdTypeMetrics getMetricsByAdType(int i10) {
            return this.metricsByAdType_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
        public int getMetricsByAdTypeCount() {
            return this.metricsByAdType_.size();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
        public List<AdTypeMetrics> getMetricsByAdTypeList() {
            return this.metricsByAdType_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
        public AdTypeMetricsOrBuilder getMetricsByAdTypeOrBuilder(int i10) {
            return this.metricsByAdType_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
        public List<? extends AdTypeMetricsOrBuilder> getMetricsByAdTypeOrBuilderList() {
            return this.metricsByAdType_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<UserSession> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            long j10 = this.lastActivity_;
            if (j10 != 0) {
                i10 = CodedOutputStream.z(1, j10);
            } else {
                i10 = 0;
            }
            for (int i12 = 0; i12 < this.metricsByAdType_.size(); i12++) {
                i10 += CodedOutputStream.G(3, this.metricsByAdType_.get(i12));
            }
            long j11 = this.sessionStart_;
            if (j11 != 0) {
                i10 += CodedOutputStream.z(4, j11);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
        public long getSessionStart() {
            return this.sessionStart_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + i0.i(getLastActivity());
            if (getMetricsByAdTypeCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getMetricsByAdTypeList().hashCode();
            }
            int i11 = (((((hashCode * 37) + 4) * 53) + i0.i(getSessionStart())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = i11;
            return i11;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_fieldAccessorTable.d(UserSession.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new UserSession();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            long j10 = this.lastActivity_;
            if (j10 != 0) {
                codedOutputStream.J0(1, j10);
            }
            for (int i10 = 0; i10 < this.metricsByAdType_.size(); i10++) {
                codedOutputStream.L0(3, this.metricsByAdType_.get(i10));
            }
            long j11 = this.sessionStart_;
            if (j11 != 0) {
                codedOutputStream.J0(4, j11);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements UserSessionOrBuilder {
            private int bitField0_;
            private long lastActivity_;
            private p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> metricsByAdTypeBuilder_;
            private List<AdTypeMetrics> metricsByAdType_;
            private long sessionStart_;

            private void ensureMetricsByAdTypeIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.metricsByAdType_ = new ArrayList(this.metricsByAdType_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_descriptor;
            }

            private p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> getMetricsByAdTypeFieldBuilder() {
                if (this.metricsByAdTypeBuilder_ == null) {
                    List<AdTypeMetrics> list = this.metricsByAdType_;
                    boolean z10 = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z10 = false;
                    }
                    this.metricsByAdTypeBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.metricsByAdType_ = null;
                }
                return this.metricsByAdTypeBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getMetricsByAdTypeFieldBuilder();
                }
            }

            public Builder addAllMetricsByAdType(Iterable<? extends AdTypeMetrics> iterable) {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    ensureMetricsByAdTypeIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.metricsByAdType_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addMetricsByAdType(AdTypeMetrics adTypeMetrics) {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    adTypeMetrics.getClass();
                    ensureMetricsByAdTypeIsMutable();
                    this.metricsByAdType_.add(adTypeMetrics);
                    onChanged();
                } else {
                    p1Var.e(adTypeMetrics);
                }
                return this;
            }

            public AdTypeMetrics.Builder addMetricsByAdTypeBuilder() {
                return getMetricsByAdTypeFieldBuilder().c(AdTypeMetrics.getDefaultInstance());
            }

            public Builder clearLastActivity() {
                this.lastActivity_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearMetricsByAdType() {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    this.metricsByAdType_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearSessionStart() {
                this.sessionStart_ = 0L;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_descriptor;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
            public long getLastActivity() {
                return this.lastActivity_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
            public AdTypeMetrics getMetricsByAdType(int i10) {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    return this.metricsByAdType_.get(i10);
                }
                return p1Var.n(i10);
            }

            public AdTypeMetrics.Builder getMetricsByAdTypeBuilder(int i10) {
                return getMetricsByAdTypeFieldBuilder().k(i10);
            }

            public List<AdTypeMetrics.Builder> getMetricsByAdTypeBuilderList() {
                return getMetricsByAdTypeFieldBuilder().l();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
            public int getMetricsByAdTypeCount() {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    return this.metricsByAdType_.size();
                }
                return p1Var.m();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
            public List<AdTypeMetrics> getMetricsByAdTypeList() {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.metricsByAdType_);
                }
                return p1Var.p();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
            public AdTypeMetricsOrBuilder getMetricsByAdTypeOrBuilder(int i10) {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    return this.metricsByAdType_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
            public List<? extends AdTypeMetricsOrBuilder> getMetricsByAdTypeOrBuilderList() {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.metricsByAdType_);
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSessionOrBuilder
            public long getSessionStart() {
                return this.sessionStart_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserSession_fieldAccessorTable.d(UserSession.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeMetricsByAdType(int i10) {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    ensureMetricsByAdTypeIsMutable();
                    this.metricsByAdType_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
                }
                return this;
            }

            public Builder setLastActivity(long j10) {
                this.lastActivity_ = j10;
                onChanged();
                return this;
            }

            public Builder setMetricsByAdType(int i10, AdTypeMetrics adTypeMetrics) {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    adTypeMetrics.getClass();
                    ensureMetricsByAdTypeIsMutable();
                    this.metricsByAdType_.set(i10, adTypeMetrics);
                    onChanged();
                } else {
                    p1Var.w(i10, adTypeMetrics);
                }
                return this;
            }

            public Builder setSessionStart(long j10) {
                this.sessionStart_ = j10;
                onChanged();
                return this;
            }

            private Builder() {
                this.metricsByAdType_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public UserSession build() {
                UserSession buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public UserSession buildPartial() {
                UserSession userSession = new UserSession(this);
                userSession.lastActivity_ = this.lastActivity_;
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var != null) {
                    userSession.metricsByAdType_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.metricsByAdType_ = Collections.unmodifiableList(this.metricsByAdType_);
                        this.bitField0_ &= -2;
                    }
                    userSession.metricsByAdType_ = this.metricsByAdType_;
                }
                userSession.sessionStart_ = this.sessionStart_;
                onBuilt();
                return userSession;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public UserSession mo4630getDefaultInstanceForType() {
                return UserSession.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(j2 j2Var) {
                return (Builder) super.setUnknownFields(j2Var);
            }

            public AdTypeMetrics.Builder addMetricsByAdTypeBuilder(int i10) {
                return getMetricsByAdTypeFieldBuilder().b(i10, AdTypeMetrics.getDefaultInstance());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(j2 j2Var) {
                return (Builder) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.lastActivity_ = 0L;
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    this.metricsByAdType_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    p1Var.g();
                }
                this.sessionStart_ = 0L;
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.metricsByAdType_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addMetricsByAdType(int i10, AdTypeMetrics adTypeMetrics) {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    adTypeMetrics.getClass();
                    ensureMetricsByAdTypeIsMutable();
                    this.metricsByAdType_.add(i10, adTypeMetrics);
                    onChanged();
                } else {
                    p1Var.d(i10, adTypeMetrics);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof UserSession) {
                    return mergeFrom((UserSession) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setMetricsByAdType(int i10, AdTypeMetrics.Builder builder) {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    ensureMetricsByAdTypeIsMutable();
                    this.metricsByAdType_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(UserSession userSession) {
                if (userSession == UserSession.getDefaultInstance()) {
                    return this;
                }
                if (userSession.getLastActivity() != 0) {
                    setLastActivity(userSession.getLastActivity());
                }
                if (this.metricsByAdTypeBuilder_ == null) {
                    if (!userSession.metricsByAdType_.isEmpty()) {
                        if (this.metricsByAdType_.isEmpty()) {
                            this.metricsByAdType_ = userSession.metricsByAdType_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureMetricsByAdTypeIsMutable();
                            this.metricsByAdType_.addAll(userSession.metricsByAdType_);
                        }
                        onChanged();
                    }
                } else if (!userSession.metricsByAdType_.isEmpty()) {
                    if (!this.metricsByAdTypeBuilder_.t()) {
                        this.metricsByAdTypeBuilder_.a(userSession.metricsByAdType_);
                    } else {
                        this.metricsByAdTypeBuilder_.h();
                        this.metricsByAdTypeBuilder_ = null;
                        this.metricsByAdType_ = userSession.metricsByAdType_;
                        this.bitField0_ &= -2;
                        this.metricsByAdTypeBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getMetricsByAdTypeFieldBuilder() : null;
                    }
                }
                if (userSession.getSessionStart() != 0) {
                    setSessionStart(userSession.getSessionStart());
                }
                mergeUnknownFields(((GeneratedMessageV3) userSession).unknownFields);
                onChanged();
                return this;
            }

            public Builder addMetricsByAdType(AdTypeMetrics.Builder builder) {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    ensureMetricsByAdTypeIsMutable();
                    this.metricsByAdType_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addMetricsByAdType(int i10, AdTypeMetrics.Builder builder) {
                p1<AdTypeMetrics, AdTypeMetrics.Builder, AdTypeMetricsOrBuilder> p1Var = this.metricsByAdTypeBuilder_;
                if (p1Var == null) {
                    ensureMetricsByAdTypeIsMutable();
                    this.metricsByAdType_.add(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.d(i10, builder.build());
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.access$8600()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserSession.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserSession$Builder");
            }
        }

        public static Builder newBuilder(UserSession userSession) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(userSession);
        }

        public static UserSession parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private UserSession(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static UserSession parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (UserSession) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static UserSession parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public UserSession mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static UserSession parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private UserSession() {
            this.memoizedIsInitialized = (byte) -1;
            this.metricsByAdType_ = Collections.emptyList();
        }

        public static UserSession parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static UserSession parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static UserSession parseFrom(InputStream inputStream) throws IOException {
            return (UserSession) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private UserSession(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 8) {
                                    this.lastActivity_ = nVar.z();
                                } else if (K == 26) {
                                    if (!z11) {
                                        this.metricsByAdType_ = new ArrayList();
                                        z11 = true;
                                    }
                                    this.metricsByAdType_.add(nVar.A(AdTypeMetrics.parser(), yVar));
                                } else if (K != 32) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    this.sessionStart_ = nVar.z();
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11) {
                        this.metricsByAdType_ = Collections.unmodifiableList(this.metricsByAdType_);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11) {
                this.metricsByAdType_ = Collections.unmodifiableList(this.metricsByAdType_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static UserSession parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (UserSession) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static UserSession parseFrom(n nVar) throws IOException {
            return (UserSession) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static UserSession parseFrom(n nVar, y yVar) throws IOException {
            return (UserSession) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface UserSessionOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        long getLastActivity();

        UserSession.AdTypeMetrics getMetricsByAdType(int i10);

        int getMetricsByAdTypeCount();

        List<UserSession.AdTypeMetrics> getMetricsByAdTypeList();

        UserSession.AdTypeMetricsOrBuilder getMetricsByAdTypeOrBuilder(int i10);

        List<? extends UserSession.AdTypeMetricsOrBuilder> getMetricsByAdTypeOrBuilderList();

        long getSessionStart();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public static final class UserState extends GeneratedMessageV3 implements UserStateOrBuilder {
        public static final int AD_REQUESTS_FIELD_NUMBER = 3;
        public static final int IMPRESSIONS_FIELD_NUMBER = 2;
        public static final int LAST_PROCESSED_TIMESTAMP_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private MapField<Integer, Timestamps> adRequests_;
        private MapField<Integer, AdDomainTimestamps> impressions_;
        private long lastProcessedTimestamp_;
        private byte memoizedIsInitialized;
        private static final UserState DEFAULT_INSTANCE = new UserState();
        private static final j1<UserState> PARSER = new b<UserState>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserState.1
            @Override // com.explorestack.protobuf.j1
            public UserState parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new UserState(nVar, yVar);
            }
        };

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes8.dex */
        public static final class AdRequestsDefaultEntryHolder {
            static final s0<Integer, Timestamps> defaultEntry = s0.q(SessionMetricsOuterClass.internal_static_sessionmetrics_UserState_AdRequestsEntry_descriptor, WireFormat.FieldType.INT32, 0, WireFormat.FieldType.MESSAGE, Timestamps.getDefaultInstance());

            private AdRequestsDefaultEntryHolder() {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes8.dex */
        public static final class ImpressionsDefaultEntryHolder {
            static final s0<Integer, AdDomainTimestamps> defaultEntry = s0.q(SessionMetricsOuterClass.internal_static_sessionmetrics_UserState_ImpressionsEntry_descriptor, WireFormat.FieldType.INT32, 0, WireFormat.FieldType.MESSAGE, AdDomainTimestamps.getDefaultInstance());

            private ImpressionsDefaultEntryHolder() {
            }
        }

        public static UserState getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_UserState_descriptor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<Integer, Timestamps> internalGetAdRequests() {
            MapField<Integer, Timestamps> mapField = this.adRequests_;
            if (mapField == null) {
                return MapField.g(AdRequestsDefaultEntryHolder.defaultEntry);
            }
            return mapField;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<Integer, AdDomainTimestamps> internalGetImpressions() {
            MapField<Integer, AdDomainTimestamps> mapField = this.impressions_;
            if (mapField == null) {
                return MapField.g(ImpressionsDefaultEntryHolder.defaultEntry);
            }
            return mapField;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static UserState parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (UserState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static UserState parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<UserState> parser() {
            return PARSER;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        public boolean containsAdRequests(int i10) {
            return internalGetAdRequests().i().containsKey(Integer.valueOf(i10));
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        public boolean containsImpressions(int i10) {
            return internalGetImpressions().i().containsKey(Integer.valueOf(i10));
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof UserState)) {
                return super.equals(obj);
            }
            UserState userState = (UserState) obj;
            if (getLastProcessedTimestamp() == userState.getLastProcessedTimestamp() && internalGetImpressions().equals(userState.internalGetImpressions()) && internalGetAdRequests().equals(userState.internalGetAdRequests()) && this.unknownFields.equals(userState.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        @Deprecated
        public Map<Integer, Timestamps> getAdRequests() {
            return getAdRequestsMap();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        public int getAdRequestsCount() {
            return internalGetAdRequests().i().size();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        public Map<Integer, Timestamps> getAdRequestsMap() {
            return internalGetAdRequests().i();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        public Timestamps getAdRequestsOrDefault(int i10, Timestamps timestamps) {
            Map<Integer, Timestamps> i11 = internalGetAdRequests().i();
            if (i11.containsKey(Integer.valueOf(i10))) {
                return i11.get(Integer.valueOf(i10));
            }
            return timestamps;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        public Timestamps getAdRequestsOrThrow(int i10) {
            Map<Integer, Timestamps> i11 = internalGetAdRequests().i();
            if (i11.containsKey(Integer.valueOf(i10))) {
                return i11.get(Integer.valueOf(i10));
            }
            throw new IllegalArgumentException();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        @Deprecated
        public Map<Integer, AdDomainTimestamps> getImpressions() {
            return getImpressionsMap();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        public int getImpressionsCount() {
            return internalGetImpressions().i().size();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        public Map<Integer, AdDomainTimestamps> getImpressionsMap() {
            return internalGetImpressions().i();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        public AdDomainTimestamps getImpressionsOrDefault(int i10, AdDomainTimestamps adDomainTimestamps) {
            Map<Integer, AdDomainTimestamps> i11 = internalGetImpressions().i();
            if (i11.containsKey(Integer.valueOf(i10))) {
                return i11.get(Integer.valueOf(i10));
            }
            return adDomainTimestamps;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        public AdDomainTimestamps getImpressionsOrThrow(int i10) {
            Map<Integer, AdDomainTimestamps> i11 = internalGetImpressions().i();
            if (i11.containsKey(Integer.valueOf(i10))) {
                return i11.get(Integer.valueOf(i10));
            }
            throw new IllegalArgumentException();
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
        public long getLastProcessedTimestamp() {
            return this.lastProcessedTimestamp_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<UserState> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            long j10 = this.lastProcessedTimestamp_;
            if (j10 != 0) {
                i10 = CodedOutputStream.z(1, j10);
            } else {
                i10 = 0;
            }
            for (Map.Entry<Integer, AdDomainTimestamps> entry : internalGetImpressions().i().entrySet()) {
                i10 += CodedOutputStream.G(2, ImpressionsDefaultEntryHolder.defaultEntry.newBuilderForType().o(entry.getKey()).r(entry.getValue()).build());
            }
            for (Map.Entry<Integer, Timestamps> entry2 : internalGetAdRequests().i().entrySet()) {
                i10 += CodedOutputStream.G(3, AdRequestsDefaultEntryHolder.defaultEntry.newBuilderForType().o(entry2.getKey()).r(entry2.getValue()).build());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + i0.i(getLastProcessedTimestamp());
            if (!internalGetImpressions().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 2) * 53) + internalGetImpressions().hashCode();
            }
            if (!internalGetAdRequests().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 3) * 53) + internalGetAdRequests().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_UserState_fieldAccessorTable.d(UserState.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected MapField internalGetMapField(int i10) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return internalGetAdRequests();
                }
                throw new RuntimeException("Invalid map field number: " + i10);
            }
            return internalGetImpressions();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new UserState();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            long j10 = this.lastProcessedTimestamp_;
            if (j10 != 0) {
                codedOutputStream.J0(1, j10);
            }
            GeneratedMessageV3.serializeIntegerMapTo(codedOutputStream, internalGetImpressions(), ImpressionsDefaultEntryHolder.defaultEntry, 2);
            GeneratedMessageV3.serializeIntegerMapTo(codedOutputStream, internalGetAdRequests(), AdRequestsDefaultEntryHolder.defaultEntry, 3);
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements UserStateOrBuilder {
            private MapField<Integer, Timestamps> adRequests_;
            private int bitField0_;
            private MapField<Integer, AdDomainTimestamps> impressions_;
            private long lastProcessedTimestamp_;

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserState_descriptor;
            }

            private MapField<Integer, Timestamps> internalGetAdRequests() {
                MapField<Integer, Timestamps> mapField = this.adRequests_;
                if (mapField == null) {
                    return MapField.g(AdRequestsDefaultEntryHolder.defaultEntry);
                }
                return mapField;
            }

            private MapField<Integer, AdDomainTimestamps> internalGetImpressions() {
                MapField<Integer, AdDomainTimestamps> mapField = this.impressions_;
                if (mapField == null) {
                    return MapField.g(ImpressionsDefaultEntryHolder.defaultEntry);
                }
                return mapField;
            }

            private MapField<Integer, Timestamps> internalGetMutableAdRequests() {
                onChanged();
                if (this.adRequests_ == null) {
                    this.adRequests_ = MapField.p(AdRequestsDefaultEntryHolder.defaultEntry);
                }
                if (!this.adRequests_.m()) {
                    this.adRequests_ = this.adRequests_.f();
                }
                return this.adRequests_;
            }

            private MapField<Integer, AdDomainTimestamps> internalGetMutableImpressions() {
                onChanged();
                if (this.impressions_ == null) {
                    this.impressions_ = MapField.p(ImpressionsDefaultEntryHolder.defaultEntry);
                }
                if (!this.impressions_.m()) {
                    this.impressions_ = this.impressions_.f();
                }
                return this.impressions_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearAdRequests() {
                internalGetMutableAdRequests().l().clear();
                return this;
            }

            public Builder clearImpressions() {
                internalGetMutableImpressions().l().clear();
                return this;
            }

            public Builder clearLastProcessedTimestamp() {
                this.lastProcessedTimestamp_ = 0L;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            public boolean containsAdRequests(int i10) {
                return internalGetAdRequests().i().containsKey(Integer.valueOf(i10));
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            public boolean containsImpressions(int i10) {
                return internalGetImpressions().i().containsKey(Integer.valueOf(i10));
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            @Deprecated
            public Map<Integer, Timestamps> getAdRequests() {
                return getAdRequestsMap();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            public int getAdRequestsCount() {
                return internalGetAdRequests().i().size();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            public Map<Integer, Timestamps> getAdRequestsMap() {
                return internalGetAdRequests().i();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            public Timestamps getAdRequestsOrDefault(int i10, Timestamps timestamps) {
                Map<Integer, Timestamps> i11 = internalGetAdRequests().i();
                if (i11.containsKey(Integer.valueOf(i10))) {
                    return i11.get(Integer.valueOf(i10));
                }
                return timestamps;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            public Timestamps getAdRequestsOrThrow(int i10) {
                Map<Integer, Timestamps> i11 = internalGetAdRequests().i();
                if (i11.containsKey(Integer.valueOf(i10))) {
                    return i11.get(Integer.valueOf(i10));
                }
                throw new IllegalArgumentException();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserState_descriptor;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            @Deprecated
            public Map<Integer, AdDomainTimestamps> getImpressions() {
                return getImpressionsMap();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            public int getImpressionsCount() {
                return internalGetImpressions().i().size();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            public Map<Integer, AdDomainTimestamps> getImpressionsMap() {
                return internalGetImpressions().i();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            public AdDomainTimestamps getImpressionsOrDefault(int i10, AdDomainTimestamps adDomainTimestamps) {
                Map<Integer, AdDomainTimestamps> i11 = internalGetImpressions().i();
                if (i11.containsKey(Integer.valueOf(i10))) {
                    return i11.get(Integer.valueOf(i10));
                }
                return adDomainTimestamps;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            public AdDomainTimestamps getImpressionsOrThrow(int i10) {
                Map<Integer, AdDomainTimestamps> i11 = internalGetImpressions().i();
                if (i11.containsKey(Integer.valueOf(i10))) {
                    return i11.get(Integer.valueOf(i10));
                }
                throw new IllegalArgumentException();
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserStateOrBuilder
            public long getLastProcessedTimestamp() {
                return this.lastProcessedTimestamp_;
            }

            @Deprecated
            public Map<Integer, Timestamps> getMutableAdRequests() {
                return internalGetMutableAdRequests().l();
            }

            @Deprecated
            public Map<Integer, AdDomainTimestamps> getMutableImpressions() {
                return internalGetMutableImpressions().l();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_UserState_fieldAccessorTable.d(UserState.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected MapField internalGetMapField(int i10) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return internalGetAdRequests();
                    }
                    throw new RuntimeException("Invalid map field number: " + i10);
                }
                return internalGetImpressions();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected MapField internalGetMutableMapField(int i10) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return internalGetMutableAdRequests();
                    }
                    throw new RuntimeException("Invalid map field number: " + i10);
                }
                return internalGetMutableImpressions();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder putAdRequests(int i10, Timestamps timestamps) {
                timestamps.getClass();
                internalGetMutableAdRequests().l().put(Integer.valueOf(i10), timestamps);
                return this;
            }

            public Builder putAllAdRequests(Map<Integer, Timestamps> map) {
                internalGetMutableAdRequests().l().putAll(map);
                return this;
            }

            public Builder putAllImpressions(Map<Integer, AdDomainTimestamps> map) {
                internalGetMutableImpressions().l().putAll(map);
                return this;
            }

            public Builder putImpressions(int i10, AdDomainTimestamps adDomainTimestamps) {
                adDomainTimestamps.getClass();
                internalGetMutableImpressions().l().put(Integer.valueOf(i10), adDomainTimestamps);
                return this;
            }

            public Builder removeAdRequests(int i10) {
                internalGetMutableAdRequests().l().remove(Integer.valueOf(i10));
                return this;
            }

            public Builder removeImpressions(int i10) {
                internalGetMutableImpressions().l().remove(Integer.valueOf(i10));
                return this;
            }

            public Builder setLastProcessedTimestamp(long j10) {
                this.lastProcessedTimestamp_ = j10;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public UserState build() {
                UserState buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public UserState buildPartial() {
                UserState userState = new UserState(this);
                userState.lastProcessedTimestamp_ = this.lastProcessedTimestamp_;
                userState.impressions_ = internalGetImpressions();
                userState.impressions_.n();
                userState.adRequests_ = internalGetAdRequests();
                userState.adRequests_.n();
                onBuilt();
                return userState;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public UserState mo4630getDefaultInstanceForType() {
                return UserState.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(j2 j2Var) {
                return (Builder) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(j2 j2Var) {
                return (Builder) super.mergeUnknownFields(j2Var);
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.lastProcessedTimestamp_ = 0L;
                internalGetMutableImpressions().a();
                internalGetMutableAdRequests().a();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof UserState) {
                    return mergeFrom((UserState) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(UserState userState) {
                if (userState == UserState.getDefaultInstance()) {
                    return this;
                }
                if (userState.getLastProcessedTimestamp() != 0) {
                    setLastProcessedTimestamp(userState.getLastProcessedTimestamp());
                }
                internalGetMutableImpressions().o(userState.internalGetImpressions());
                internalGetMutableAdRequests().o(userState.internalGetAdRequests());
                mergeUnknownFields(((GeneratedMessageV3) userState).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserState.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserState.access$1400()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserState r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserState) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserState r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserState) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.UserState.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$UserState$Builder");
            }
        }

        public static Builder newBuilder(UserState userState) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(userState);
        }

        public static UserState parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private UserState(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static UserState parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (UserState) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static UserState parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public UserState mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static UserState parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private UserState() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static UserState parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static UserState parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        /* JADX WARN: Type inference failed for: r3v15, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object] */
        private UserState(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 8) {
                                    this.lastProcessedTimestamp_ = nVar.z();
                                } else if (K == 18) {
                                    if (!(z11 & true)) {
                                        this.impressions_ = MapField.p(ImpressionsDefaultEntryHolder.defaultEntry);
                                        z11 |= true;
                                    }
                                    s0 s0Var = (s0) nVar.A(ImpressionsDefaultEntryHolder.defaultEntry.getParserForType(), yVar);
                                    this.impressions_.l().put(s0Var.h(), s0Var.j());
                                } else if (K != 26) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.adRequests_ = MapField.p(AdRequestsDefaultEntryHolder.defaultEntry);
                                        z11 |= true;
                                    }
                                    s0 s0Var2 = (s0) nVar.A(AdRequestsDefaultEntryHolder.defaultEntry.getParserForType(), yVar);
                                    this.adRequests_.l().put(s0Var2.h(), s0Var2.j());
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static UserState parseFrom(InputStream inputStream) throws IOException {
            return (UserState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static UserState parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (UserState) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static UserState parseFrom(n nVar) throws IOException {
            return (UserState) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static UserState parseFrom(n nVar, y yVar) throws IOException {
            return (UserState) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface UserStateOrBuilder extends MessageOrBuilder {
        boolean containsAdRequests(int i10);

        boolean containsImpressions(int i10);

        @Deprecated
        Map<Integer, Timestamps> getAdRequests();

        int getAdRequestsCount();

        Map<Integer, Timestamps> getAdRequestsMap();

        Timestamps getAdRequestsOrDefault(int i10, Timestamps timestamps);

        Timestamps getAdRequestsOrThrow(int i10);

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        @Deprecated
        Map<Integer, AdDomainTimestamps> getImpressions();

        int getImpressionsCount();

        Map<Integer, AdDomainTimestamps> getImpressionsMap();

        AdDomainTimestamps getImpressionsOrDefault(int i10, AdDomainTimestamps adDomainTimestamps);

        AdDomainTimestamps getImpressionsOrThrow(int i10);

        long getLastProcessedTimestamp();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public static final class WindowMetrics extends GeneratedMessageV3 implements WindowMetricsOrBuilder {
        public static final int LAST_1D_FIELD_NUMBER = 2;
        public static final int LAST_1H_FIELD_NUMBER = 1;
        public static final int LAST_7D_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int last1D_;
        private int last1H_;
        private int last7D_;
        private byte memoizedIsInitialized;
        private static final WindowMetrics DEFAULT_INSTANCE = new WindowMetrics();
        private static final j1<WindowMetrics> PARSER = new b<WindowMetrics>() { // from class: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetrics.1
            @Override // com.explorestack.protobuf.j1
            public WindowMetrics parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new WindowMetrics(nVar, yVar);
            }
        };

        public static WindowMetrics getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_WindowMetrics_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WindowMetrics parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (WindowMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WindowMetrics parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<WindowMetrics> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WindowMetrics)) {
                return super.equals(obj);
            }
            WindowMetrics windowMetrics = (WindowMetrics) obj;
            if (getLast1H() == windowMetrics.getLast1H() && getLast1D() == windowMetrics.getLast1D() && getLast7D() == windowMetrics.getLast7D() && this.unknownFields.equals(windowMetrics.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetricsOrBuilder
        public int getLast1D() {
            return this.last1D_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetricsOrBuilder
        public int getLast1H() {
            return this.last1H_;
        }

        @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetricsOrBuilder
        public int getLast7D() {
            return this.last7D_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<WindowMetrics> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            int i12 = this.last1H_;
            if (i12 != 0) {
                i10 = CodedOutputStream.x(1, i12);
            } else {
                i10 = 0;
            }
            int i13 = this.last1D_;
            if (i13 != 0) {
                i10 += CodedOutputStream.x(2, i13);
            }
            int i14 = this.last7D_;
            if (i14 != 0) {
                i10 += CodedOutputStream.x(3, i14);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getLast1H()) * 37) + 2) * 53) + getLast1D()) * 37) + 3) * 53) + getLast7D()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SessionMetricsOuterClass.internal_static_sessionmetrics_WindowMetrics_fieldAccessorTable.d(WindowMetrics.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new WindowMetrics();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            int i10 = this.last1H_;
            if (i10 != 0) {
                codedOutputStream.H0(1, i10);
            }
            int i11 = this.last1D_;
            if (i11 != 0) {
                codedOutputStream.H0(2, i11);
            }
            int i12 = this.last7D_;
            if (i12 != 0) {
                codedOutputStream.H0(3, i12);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements WindowMetricsOrBuilder {
            private int last1D_;
            private int last1H_;
            private int last7D_;

            public static final Descriptors.Descriptor getDescriptor() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_WindowMetrics_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearLast1D() {
                this.last1D_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLast1H() {
                this.last1H_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLast7D() {
                this.last7D_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_WindowMetrics_descriptor;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetricsOrBuilder
            public int getLast1D() {
                return this.last1D_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetricsOrBuilder
            public int getLast1H() {
                return this.last1H_;
            }

            @Override // io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetricsOrBuilder
            public int getLast7D() {
                return this.last7D_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SessionMetricsOuterClass.internal_static_sessionmetrics_WindowMetrics_fieldAccessorTable.d(WindowMetrics.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setLast1D(int i10) {
                this.last1D_ = i10;
                onChanged();
                return this;
            }

            public Builder setLast1H(int i10) {
                this.last1H_ = i10;
                onChanged();
                return this;
            }

            public Builder setLast7D(int i10) {
                this.last7D_ = i10;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public WindowMetrics build() {
                WindowMetrics buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public WindowMetrics buildPartial() {
                WindowMetrics windowMetrics = new WindowMetrics(this);
                windowMetrics.last1H_ = this.last1H_;
                windowMetrics.last1D_ = this.last1D_;
                windowMetrics.last7D_ = this.last7D_;
                onBuilt();
                return windowMetrics;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public WindowMetrics mo4630getDefaultInstanceForType() {
                return WindowMetrics.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(j2 j2Var) {
                return (Builder) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(j2 j2Var) {
                return (Builder) super.mergeUnknownFields(j2Var);
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.last1H_ = 0;
                this.last1D_ = 0;
                this.last7D_ = 0;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof WindowMetrics) {
                    return mergeFrom((WindowMetrics) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(WindowMetrics windowMetrics) {
                if (windowMetrics == WindowMetrics.getDefaultInstance()) {
                    return this;
                }
                if (windowMetrics.getLast1H() != 0) {
                    setLast1H(windowMetrics.getLast1H());
                }
                if (windowMetrics.getLast1D() != 0) {
                    setLast1D(windowMetrics.getLast1D());
                }
                if (windowMetrics.getLast7D() != 0) {
                    setLast7D(windowMetrics.getLast7D());
                }
                mergeUnknownFields(((GeneratedMessageV3) windowMetrics).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetrics.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetrics.access$13800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$WindowMetrics r3 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetrics) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$WindowMetrics r4 = (io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetrics) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass.WindowMetrics.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sessionmetrics.SessionMetricsOuterClass$WindowMetrics$Builder");
            }
        }

        public static Builder newBuilder(WindowMetrics windowMetrics) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(windowMetrics);
        }

        public static WindowMetrics parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private WindowMetrics(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WindowMetrics parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (WindowMetrics) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static WindowMetrics parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public WindowMetrics mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static WindowMetrics parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private WindowMetrics() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WindowMetrics parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static WindowMetrics parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        private WindowMetrics(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 8) {
                                this.last1H_ = nVar.y();
                            } else if (K == 16) {
                                this.last1D_ = nVar.y();
                            } else if (K != 24) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                this.last7D_ = nVar.y();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static WindowMetrics parseFrom(InputStream inputStream) throws IOException {
            return (WindowMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static WindowMetrics parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (WindowMetrics) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static WindowMetrics parseFrom(n nVar) throws IOException {
            return (WindowMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static WindowMetrics parseFrom(n nVar, y yVar) throws IOException {
            return (WindowMetrics) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface WindowMetricsOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        int getLast1D();

        int getLast1H();

        int getLast7D();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_sessionmetrics_UserState_descriptor = descriptor2;
        internal_static_sessionmetrics_UserState_fieldAccessorTable = new GeneratedMessageV3.e(descriptor2, new String[]{"LastProcessedTimestamp", "Impressions", "AdRequests"});
        Descriptors.Descriptor descriptor3 = descriptor2.getNestedTypes().get(0);
        internal_static_sessionmetrics_UserState_ImpressionsEntry_descriptor = descriptor3;
        internal_static_sessionmetrics_UserState_ImpressionsEntry_fieldAccessorTable = new GeneratedMessageV3.e(descriptor3, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor4 = descriptor2.getNestedTypes().get(1);
        internal_static_sessionmetrics_UserState_AdRequestsEntry_descriptor = descriptor4;
        internal_static_sessionmetrics_UserState_AdRequestsEntry_fieldAccessorTable = new GeneratedMessageV3.e(descriptor4, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(1);
        internal_static_sessionmetrics_UserSession_descriptor = descriptor5;
        internal_static_sessionmetrics_UserSession_fieldAccessorTable = new GeneratedMessageV3.e(descriptor5, new String[]{"LastActivity", "MetricsByAdType", "SessionStart"});
        Descriptors.Descriptor descriptor6 = descriptor5.getNestedTypes().get(0);
        internal_static_sessionmetrics_UserSession_Ecpm_descriptor = descriptor6;
        internal_static_sessionmetrics_UserSession_Ecpm_fieldAccessorTable = new GeneratedMessageV3.e(descriptor6, new String[]{"FirstPrices", "LastPrices", "Count"});
        Descriptors.Descriptor descriptor7 = descriptor5.getNestedTypes().get(1);
        internal_static_sessionmetrics_UserSession_Auction_descriptor = descriptor7;
        internal_static_sessionmetrics_UserSession_Auction_fieldAccessorTable = new GeneratedMessageV3.e(descriptor7, new String[]{"SourceRequestId", "WinnerBidderId", "LosersBidderId"});
        Descriptors.Descriptor descriptor8 = descriptor5.getNestedTypes().get(2);
        internal_static_sessionmetrics_UserSession_AdTypeMetrics_descriptor = descriptor8;
        internal_static_sessionmetrics_UserSession_AdTypeMetrics_fieldAccessorTable = new GeneratedMessageV3.e(descriptor8, new String[]{"AdType", "Impressions", "AdRequests", "Bids", "Wins", "Losses", "Lurls", "Nurls", "CumulativeBidPrice", "CumulativeLurlPrice", "CumulativeNurlPrice", "Ecpm", "Auctions"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(2);
        internal_static_sessionmetrics_Timestamps_descriptor = descriptor9;
        internal_static_sessionmetrics_Timestamps_fieldAccessorTable = new GeneratedMessageV3.e(descriptor9, new String[]{"LastTimestamp", "Deltas", "DayBuckets"});
        Descriptors.Descriptor descriptor10 = descriptor9.getNestedTypes().get(0);
        internal_static_sessionmetrics_Timestamps_DayBucket_descriptor = descriptor10;
        internal_static_sessionmetrics_Timestamps_DayBucket_fieldAccessorTable = new GeneratedMessageV3.e(descriptor10, new String[]{"StartTime", "Count"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(3);
        internal_static_sessionmetrics_AdDomainTimestamps_descriptor = descriptor11;
        internal_static_sessionmetrics_AdDomainTimestamps_fieldAccessorTable = new GeneratedMessageV3.e(descriptor11, new String[]{"AdDomains"});
        Descriptors.Descriptor descriptor12 = descriptor11.getNestedTypes().get(0);
        internal_static_sessionmetrics_AdDomainTimestamps_AdDomainsEntry_descriptor = descriptor12;
        internal_static_sessionmetrics_AdDomainTimestamps_AdDomainsEntry_fieldAccessorTable = new GeneratedMessageV3.e(descriptor12, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(4);
        internal_static_sessionmetrics_WindowMetrics_descriptor = descriptor13;
        internal_static_sessionmetrics_WindowMetrics_fieldAccessorTable = new GeneratedMessageV3.e(descriptor13, new String[]{"Last1H", "Last1D", "Last7D"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(5);
        internal_static_sessionmetrics_ImpressionMetrics_descriptor = descriptor14;
        internal_static_sessionmetrics_ImpressionMetrics_fieldAccessorTable = new GeneratedMessageV3.e(descriptor14, new String[]{"AdType", "Domains"});
        Descriptors.Descriptor descriptor15 = descriptor14.getNestedTypes().get(0);
        internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_descriptor = descriptor15;
        internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_fieldAccessorTable = new GeneratedMessageV3.e(descriptor15, new String[]{"Domain", "WindowMetrics"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(6);
        internal_static_sessionmetrics_AdRequestMetrics_descriptor = descriptor16;
        internal_static_sessionmetrics_AdRequestMetrics_fieldAccessorTable = new GeneratedMessageV3.e(descriptor16, new String[]{"AdType", "WindowMetrics", "LastTimestamps"});
        Descriptors.Descriptor descriptor17 = getDescriptor().getMessageTypes().get(7);
        internal_static_sessionmetrics_SessionMetrics_descriptor = descriptor17;
        internal_static_sessionmetrics_SessionMetrics_fieldAccessorTable = new GeneratedMessageV3.e(descriptor17, new String[]{"Impressions", "AdRequests", "CurrentSession"});
        Descriptors.Descriptor descriptor18 = getDescriptor().getMessageTypes().get(8);
        internal_static_sessionmetrics_UserIdQuery_descriptor = descriptor18;
        internal_static_sessionmetrics_UserIdQuery_fieldAccessorTable = new GeneratedMessageV3.e(descriptor18, new String[]{"UserId", "Timestamp"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(9);
        internal_static_sessionmetrics_AdRequest_descriptor = descriptor19;
        internal_static_sessionmetrics_AdRequest_fieldAccessorTable = new GeneratedMessageV3.e(descriptor19, new String[]{"UserId", "AdType", "Timestamp"});
    }

    private SessionMetricsOuterClass() {
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(y yVar) {
    }

    public static void registerAllExtensions(w wVar) {
        registerAllExtensions((y) wVar);
    }
}
