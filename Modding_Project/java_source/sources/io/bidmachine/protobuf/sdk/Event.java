package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.x1;
import com.explorestack.protobuf.y;
import io.bidmachine.protobuf.sdk.Monitor;
import io.bidmachine.protobuf.sdk.Reader;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public final class Event extends GeneratedMessageV3 implements EventOrBuilder {
    public static final int EXTRAS_PRIVATE_FIELD_NUMBER = 3;
    public static final int MONITOR_FIELD_NUMBER = 1;
    public static final int READER_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Struct extrasPrivate_;
    private byte memoizedIsInitialized;
    private int payloadCase_;
    private Object payload_;
    private static final Event DEFAULT_INSTANCE = new Event();
    private static final j1<Event> PARSER = new b<Event>() { // from class: io.bidmachine.protobuf.sdk.Event.1
        @Override // com.explorestack.protobuf.j1
        public Event parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Event(nVar, yVar);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.protobuf.sdk.Event$2  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$sdk$Event$PayloadCase;

        static {
            int[] iArr = new int[PayloadCase.values().length];
            $SwitchMap$io$bidmachine$protobuf$sdk$Event$PayloadCase = iArr;
            try {
                iArr[PayloadCase.MONITOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Event$PayloadCase[PayloadCase.READER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Event$PayloadCase[PayloadCase.PAYLOAD_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes8.dex */
    public enum PayloadCase implements i0.c {
        MONITOR(1),
        READER(2),
        PAYLOAD_NOT_SET(0);
        
        private final int value;

        PayloadCase(int i10) {
            this.value = i10;
        }

        public static PayloadCase forNumber(int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return null;
                    }
                    return READER;
                }
                return MONITOR;
            }
            return PAYLOAD_NOT_SET;
        }

        @Override // com.explorestack.protobuf.i0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static PayloadCase valueOf(int i10) {
            return forNumber(i10);
        }
    }

    public static Event getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Event parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Event) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Event parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Event> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Event)) {
            return super.equals(obj);
        }
        Event event = (Event) obj;
        if (hasExtrasPrivate() != event.hasExtrasPrivate()) {
            return false;
        }
        if ((hasExtrasPrivate() && !getExtrasPrivate().equals(event.getExtrasPrivate())) || !getPayloadCase().equals(event.getPayloadCase())) {
            return false;
        }
        int i10 = this.payloadCase_;
        if (i10 != 1) {
            if (i10 == 2 && !getReader().equals(event.getReader())) {
                return false;
            }
        } else if (!getMonitor().equals(event.getMonitor())) {
            return false;
        }
        if (this.unknownFields.equals(event.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
    public Struct getExtrasPrivate() {
        Struct struct = this.extrasPrivate_;
        if (struct == null) {
            return Struct.getDefaultInstance();
        }
        return struct;
    }

    @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
    public x1 getExtrasPrivateOrBuilder() {
        return getExtrasPrivate();
    }

    @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
    public Monitor getMonitor() {
        if (this.payloadCase_ == 1) {
            return (Monitor) this.payload_;
        }
        return Monitor.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
    public MonitorOrBuilder getMonitorOrBuilder() {
        if (this.payloadCase_ == 1) {
            return (Monitor) this.payload_;
        }
        return Monitor.getDefaultInstance();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Event> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
    public PayloadCase getPayloadCase() {
        return PayloadCase.forNumber(this.payloadCase_);
    }

    @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
    public Reader getReader() {
        if (this.payloadCase_ == 2) {
            return (Reader) this.payload_;
        }
        return Reader.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
    public ReaderOrBuilder getReaderOrBuilder() {
        if (this.payloadCase_ == 2) {
            return (Reader) this.payload_;
        }
        return Reader.getDefaultInstance();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (this.payloadCase_ == 1) {
            i10 = CodedOutputStream.G(1, (Monitor) this.payload_);
        } else {
            i10 = 0;
        }
        if (this.payloadCase_ == 2) {
            i10 += CodedOutputStream.G(2, (Reader) this.payload_);
        }
        if (this.extrasPrivate_ != null) {
            i10 += CodedOutputStream.G(3, getExtrasPrivate());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
    public boolean hasExtrasPrivate() {
        if (this.extrasPrivate_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
    public boolean hasMonitor() {
        if (this.payloadCase_ == 1) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
    public boolean hasReader() {
        if (this.payloadCase_ == 2) {
            return true;
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i10;
        int hashCode;
        int i11 = this.memoizedHashCode;
        if (i11 != 0) {
            return i11;
        }
        int hashCode2 = 779 + getDescriptor().hashCode();
        if (hasExtrasPrivate()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getExtrasPrivate().hashCode();
        }
        int i12 = this.payloadCase_;
        if (i12 != 1) {
            if (i12 == 2) {
                i10 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getReader().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        i10 = ((hashCode2 * 37) + 1) * 53;
        hashCode = getMonitor().hashCode();
        hashCode2 = i10 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_fieldAccessorTable.d(Event.class, Builder.class);
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
        return new Event();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.payloadCase_ == 1) {
            codedOutputStream.L0(1, (Monitor) this.payload_);
        }
        if (this.payloadCase_ == 2) {
            codedOutputStream.L0(2, (Reader) this.payload_);
        }
        if (this.extrasPrivate_ != null) {
            codedOutputStream.L0(3, getExtrasPrivate());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements EventOrBuilder {
        private t1<Struct, Struct.Builder, x1> extrasPrivateBuilder_;
        private Struct extrasPrivate_;
        private t1<Monitor, Monitor.Builder, MonitorOrBuilder> monitorBuilder_;
        private int payloadCase_;
        private Object payload_;
        private t1<Reader, Reader.Builder, ReaderOrBuilder> readerBuilder_;

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_descriptor;
        }

        private t1<Struct, Struct.Builder, x1> getExtrasPrivateFieldBuilder() {
            if (this.extrasPrivateBuilder_ == null) {
                this.extrasPrivateBuilder_ = new t1<>(getExtrasPrivate(), getParentForChildren(), isClean());
                this.extrasPrivate_ = null;
            }
            return this.extrasPrivateBuilder_;
        }

        private t1<Monitor, Monitor.Builder, MonitorOrBuilder> getMonitorFieldBuilder() {
            if (this.monitorBuilder_ == null) {
                if (this.payloadCase_ != 1) {
                    this.payload_ = Monitor.getDefaultInstance();
                }
                this.monitorBuilder_ = new t1<>((Monitor) this.payload_, getParentForChildren(), isClean());
                this.payload_ = null;
            }
            this.payloadCase_ = 1;
            onChanged();
            return this.monitorBuilder_;
        }

        private t1<Reader, Reader.Builder, ReaderOrBuilder> getReaderFieldBuilder() {
            if (this.readerBuilder_ == null) {
                if (this.payloadCase_ != 2) {
                    this.payload_ = Reader.getDefaultInstance();
                }
                this.readerBuilder_ = new t1<>((Reader) this.payload_, getParentForChildren(), isClean());
                this.payload_ = null;
            }
            this.payloadCase_ = 2;
            onChanged();
            return this.readerBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearExtrasPrivate() {
            if (this.extrasPrivateBuilder_ == null) {
                this.extrasPrivate_ = null;
                onChanged();
            } else {
                this.extrasPrivate_ = null;
                this.extrasPrivateBuilder_ = null;
            }
            return this;
        }

        public Builder clearMonitor() {
            t1<Monitor, Monitor.Builder, MonitorOrBuilder> t1Var = this.monitorBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 1) {
                    this.payloadCase_ = 0;
                    this.payload_ = null;
                    onChanged();
                }
            } else {
                if (this.payloadCase_ == 1) {
                    this.payloadCase_ = 0;
                    this.payload_ = null;
                }
                t1Var.b();
            }
            return this;
        }

        public Builder clearPayload() {
            this.payloadCase_ = 0;
            this.payload_ = null;
            onChanged();
            return this;
        }

        public Builder clearReader() {
            t1<Reader, Reader.Builder, ReaderOrBuilder> t1Var = this.readerBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 2) {
                    this.payloadCase_ = 0;
                    this.payload_ = null;
                    onChanged();
                }
            } else {
                if (this.payloadCase_ == 2) {
                    this.payloadCase_ = 0;
                    this.payload_ = null;
                }
                t1Var.b();
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_descriptor;
        }

        @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
        public Struct getExtrasPrivate() {
            t1<Struct, Struct.Builder, x1> t1Var = this.extrasPrivateBuilder_;
            if (t1Var == null) {
                Struct struct = this.extrasPrivate_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }
            return t1Var.e();
        }

        public Struct.Builder getExtrasPrivateBuilder() {
            onChanged();
            return getExtrasPrivateFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
        public x1 getExtrasPrivateOrBuilder() {
            t1<Struct, Struct.Builder, x1> t1Var = this.extrasPrivateBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Struct struct = this.extrasPrivate_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
        public Monitor getMonitor() {
            t1<Monitor, Monitor.Builder, MonitorOrBuilder> t1Var = this.monitorBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 1) {
                    return (Monitor) this.payload_;
                }
                return Monitor.getDefaultInstance();
            } else if (this.payloadCase_ == 1) {
                return t1Var.e();
            } else {
                return Monitor.getDefaultInstance();
            }
        }

        public Monitor.Builder getMonitorBuilder() {
            return getMonitorFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
        public MonitorOrBuilder getMonitorOrBuilder() {
            t1<Monitor, Monitor.Builder, MonitorOrBuilder> t1Var;
            int i10 = this.payloadCase_;
            if (i10 == 1 && (t1Var = this.monitorBuilder_) != null) {
                return t1Var.f();
            }
            if (i10 == 1) {
                return (Monitor) this.payload_;
            }
            return Monitor.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
        public PayloadCase getPayloadCase() {
            return PayloadCase.forNumber(this.payloadCase_);
        }

        @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
        public Reader getReader() {
            t1<Reader, Reader.Builder, ReaderOrBuilder> t1Var = this.readerBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 2) {
                    return (Reader) this.payload_;
                }
                return Reader.getDefaultInstance();
            } else if (this.payloadCase_ == 2) {
                return t1Var.e();
            } else {
                return Reader.getDefaultInstance();
            }
        }

        public Reader.Builder getReaderBuilder() {
            return getReaderFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
        public ReaderOrBuilder getReaderOrBuilder() {
            t1<Reader, Reader.Builder, ReaderOrBuilder> t1Var;
            int i10 = this.payloadCase_;
            if (i10 == 2 && (t1Var = this.readerBuilder_) != null) {
                return t1Var.f();
            }
            if (i10 == 2) {
                return (Reader) this.payload_;
            }
            return Reader.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
        public boolean hasExtrasPrivate() {
            if (this.extrasPrivateBuilder_ == null && this.extrasPrivate_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
        public boolean hasMonitor() {
            if (this.payloadCase_ == 1) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.EventOrBuilder
        public boolean hasReader() {
            if (this.payloadCase_ == 2) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_fieldAccessorTable.d(Event.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeExtrasPrivate(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extrasPrivateBuilder_;
            if (t1Var == null) {
                Struct struct2 = this.extrasPrivate_;
                if (struct2 != null) {
                    this.extrasPrivate_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                } else {
                    this.extrasPrivate_ = struct;
                }
                onChanged();
            } else {
                t1Var.g(struct);
            }
            return this;
        }

        public Builder mergeMonitor(Monitor monitor) {
            t1<Monitor, Monitor.Builder, MonitorOrBuilder> t1Var = this.monitorBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 1 && this.payload_ != Monitor.getDefaultInstance()) {
                    this.payload_ = Monitor.newBuilder((Monitor) this.payload_).mergeFrom(monitor).buildPartial();
                } else {
                    this.payload_ = monitor;
                }
                onChanged();
            } else {
                if (this.payloadCase_ == 1) {
                    t1Var.g(monitor);
                }
                this.monitorBuilder_.i(monitor);
            }
            this.payloadCase_ = 1;
            return this;
        }

        public Builder mergeReader(Reader reader) {
            t1<Reader, Reader.Builder, ReaderOrBuilder> t1Var = this.readerBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 2 && this.payload_ != Reader.getDefaultInstance()) {
                    this.payload_ = Reader.newBuilder((Reader) this.payload_).mergeFrom(reader).buildPartial();
                } else {
                    this.payload_ = reader;
                }
                onChanged();
            } else {
                if (this.payloadCase_ == 2) {
                    t1Var.g(reader);
                }
                this.readerBuilder_.i(reader);
            }
            this.payloadCase_ = 2;
            return this;
        }

        public Builder setExtrasPrivate(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extrasPrivateBuilder_;
            if (t1Var == null) {
                struct.getClass();
                this.extrasPrivate_ = struct;
                onChanged();
            } else {
                t1Var.i(struct);
            }
            return this;
        }

        public Builder setMonitor(Monitor monitor) {
            t1<Monitor, Monitor.Builder, MonitorOrBuilder> t1Var = this.monitorBuilder_;
            if (t1Var == null) {
                monitor.getClass();
                this.payload_ = monitor;
                onChanged();
            } else {
                t1Var.i(monitor);
            }
            this.payloadCase_ = 1;
            return this;
        }

        public Builder setReader(Reader reader) {
            t1<Reader, Reader.Builder, ReaderOrBuilder> t1Var = this.readerBuilder_;
            if (t1Var == null) {
                reader.getClass();
                this.payload_ = reader;
                onChanged();
            } else {
                t1Var.i(reader);
            }
            this.payloadCase_ = 2;
            return this;
        }

        private Builder() {
            this.payloadCase_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Event build() {
            Event buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Event buildPartial() {
            Event event = new Event(this);
            if (this.payloadCase_ == 1) {
                t1<Monitor, Monitor.Builder, MonitorOrBuilder> t1Var = this.monitorBuilder_;
                if (t1Var == null) {
                    event.payload_ = this.payload_;
                } else {
                    event.payload_ = t1Var.a();
                }
            }
            if (this.payloadCase_ == 2) {
                t1<Reader, Reader.Builder, ReaderOrBuilder> t1Var2 = this.readerBuilder_;
                if (t1Var2 == null) {
                    event.payload_ = this.payload_;
                } else {
                    event.payload_ = t1Var2.a();
                }
            }
            t1<Struct, Struct.Builder, x1> t1Var3 = this.extrasPrivateBuilder_;
            if (t1Var3 == null) {
                event.extrasPrivate_ = this.extrasPrivate_;
            } else {
                event.extrasPrivate_ = t1Var3.a();
            }
            event.payloadCase_ = this.payloadCase_;
            onBuilt();
            return event;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Event mo4630getDefaultInstanceForType() {
            return Event.getDefaultInstance();
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
            if (this.extrasPrivateBuilder_ == null) {
                this.extrasPrivate_ = null;
            } else {
                this.extrasPrivate_ = null;
                this.extrasPrivateBuilder_ = null;
            }
            this.payloadCase_ = 0;
            this.payload_ = null;
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.payloadCase_ = 0;
            maybeForceBuilderInitialization();
        }

        public Builder setExtrasPrivate(Struct.Builder builder) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extrasPrivateBuilder_;
            if (t1Var == null) {
                this.extrasPrivate_ = builder.build();
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
            if (message instanceof Event) {
                return mergeFrom((Event) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setMonitor(Monitor.Builder builder) {
            t1<Monitor, Monitor.Builder, MonitorOrBuilder> t1Var = this.monitorBuilder_;
            if (t1Var == null) {
                this.payload_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            this.payloadCase_ = 1;
            return this;
        }

        public Builder setReader(Reader.Builder builder) {
            t1<Reader, Reader.Builder, ReaderOrBuilder> t1Var = this.readerBuilder_;
            if (t1Var == null) {
                this.payload_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            this.payloadCase_ = 2;
            return this;
        }

        public Builder mergeFrom(Event event) {
            if (event == Event.getDefaultInstance()) {
                return this;
            }
            if (event.hasExtrasPrivate()) {
                mergeExtrasPrivate(event.getExtrasPrivate());
            }
            int i10 = AnonymousClass2.$SwitchMap$io$bidmachine$protobuf$sdk$Event$PayloadCase[event.getPayloadCase().ordinal()];
            if (i10 == 1) {
                mergeMonitor(event.getMonitor());
            } else if (i10 == 2) {
                mergeReader(event.getReader());
            }
            mergeUnknownFields(((GeneratedMessageV3) event).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.sdk.Event.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Event.access$800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.Event r3 = (io.bidmachine.protobuf.sdk.Event) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.Event r4 = (io.bidmachine.protobuf.sdk.Event) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Event.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Event$Builder");
        }
    }

    public static Builder newBuilder(Event event) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(event);
    }

    public static Event parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private Event(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.payloadCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Event parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Event) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Event parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Event mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Event parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Event parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    private Event() {
        this.payloadCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Event parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static Event parseFrom(InputStream inputStream) throws IOException {
        return (Event) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Event(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            Monitor.Builder builder = this.payloadCase_ == 1 ? ((Monitor) this.payload_).toBuilder() : null;
                            MessageLite A = nVar.A(Monitor.parser(), yVar);
                            this.payload_ = A;
                            if (builder != null) {
                                builder.mergeFrom((Monitor) A);
                                this.payload_ = builder.buildPartial();
                            }
                            this.payloadCase_ = 1;
                        } else if (K == 18) {
                            Reader.Builder builder2 = this.payloadCase_ == 2 ? ((Reader) this.payload_).toBuilder() : null;
                            MessageLite A2 = nVar.A(Reader.parser(), yVar);
                            this.payload_ = A2;
                            if (builder2 != null) {
                                builder2.mergeFrom((Reader) A2);
                                this.payload_ = builder2.buildPartial();
                            }
                            this.payloadCase_ = 2;
                        } else if (K != 26) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            Struct struct = this.extrasPrivate_;
                            Struct.Builder builder3 = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                            this.extrasPrivate_ = struct2;
                            if (builder3 != null) {
                                builder3.mergeFrom(struct2);
                                this.extrasPrivate_ = builder3.buildPartial();
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

    public static Event parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Event) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Event parseFrom(n nVar) throws IOException {
        return (Event) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static Event parseFrom(n nVar, y yVar) throws IOException {
        return (Event) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
