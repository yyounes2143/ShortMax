package io.bidmachine.protobuf.analytics;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.c;
import com.explorestack.protobuf.adcom.d;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.openrtb.Request;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public final class AuctionContext extends GeneratedMessageV3 implements AuctionContextOrBuilder {
    public static final int AT_FIELD_NUMBER = 4;
    public static final int CONTEXT_FIELD_NUMBER = 8;
    public static final int ID_FIELD_NUMBER = 2;
    public static final int ITEM_FIELD_NUMBER = 6;
    public static final int PLACEMENT_FIELD_NUMBER = 7;
    public static final int PLACEMENT_TAG_FIELD_NUMBER = 5;
    public static final int TEST_FIELD_NUMBER = 3;
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int at_;
    private Context context_;
    private volatile Object id_;
    private Request.Item item_;
    private byte memoizedIsInitialized;
    private int placementTag_;
    private Placement placement_;
    private boolean test_;
    private volatile Object timestamp_;
    private static final AuctionContext DEFAULT_INSTANCE = new AuctionContext();
    private static final j1<AuctionContext> PARSER = new b<AuctionContext>() { // from class: io.bidmachine.protobuf.analytics.AuctionContext.1
        @Override // com.explorestack.protobuf.j1
        public AuctionContext parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new AuctionContext(nVar, yVar);
        }
    };

    public static AuctionContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AuctionContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AuctionContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<AuctionContext> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AuctionContext)) {
            return super.equals(obj);
        }
        AuctionContext auctionContext = (AuctionContext) obj;
        if (!getTimestamp().equals(auctionContext.getTimestamp()) || !getId().equals(auctionContext.getId()) || getTest() != auctionContext.getTest() || getAt() != auctionContext.getAt() || this.placementTag_ != auctionContext.placementTag_ || hasItem() != auctionContext.hasItem()) {
            return false;
        }
        if ((hasItem() && !getItem().equals(auctionContext.getItem())) || hasPlacement() != auctionContext.hasPlacement()) {
            return false;
        }
        if ((hasPlacement() && !getPlacement().equals(auctionContext.getPlacement())) || hasContext() != auctionContext.hasContext()) {
            return false;
        }
        if ((!hasContext() || getContext().equals(auctionContext.getContext())) && this.unknownFields.equals(auctionContext.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public int getAt() {
        return this.at_;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public Context getContext() {
        Context context = this.context_;
        if (context == null) {
            return Context.getDefaultInstance();
        }
        return context;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public c getContextOrBuilder() {
        return getContext();
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public ByteString getIdBytes() {
        Object obj = this.id_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public Request.Item getItem() {
        Request.Item item = this.item_;
        if (item == null) {
            return Request.Item.getDefaultInstance();
        }
        return item;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public Request.ItemOrBuilder getItemOrBuilder() {
        return getItem();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<AuctionContext> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public Placement getPlacement() {
        Placement placement = this.placement_;
        if (placement == null) {
            return Placement.getDefaultInstance();
        }
        return placement;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public d getPlacementOrBuilder() {
        return getPlacement();
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public PlacementTag getPlacementTag() {
        PlacementTag valueOf = PlacementTag.valueOf(this.placementTag_);
        if (valueOf == null) {
            return PlacementTag.UNRECOGNIZED;
        }
        return valueOf;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public int getPlacementTagValue() {
        return this.placementTag_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getTimestampBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.timestamp_);
        } else {
            i10 = 0;
        }
        if (!getIdBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.id_);
        }
        boolean z10 = this.test_;
        if (z10) {
            i10 += CodedOutputStream.e(3, z10);
        }
        int i12 = this.at_;
        if (i12 != 0) {
            i10 += CodedOutputStream.Y(4, i12);
        }
        if (this.placementTag_ != PlacementTag.PLACEMENT_TAG_INVALID.getNumber()) {
            i10 += CodedOutputStream.l(5, this.placementTag_);
        }
        if (this.item_ != null) {
            i10 += CodedOutputStream.G(6, getItem());
        }
        if (this.placement_ != null) {
            i10 += CodedOutputStream.G(7, getPlacement());
        }
        if (this.context_ != null) {
            i10 += CodedOutputStream.G(8, getContext());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public boolean getTest() {
        return this.test_;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public String getTimestamp() {
        Object obj = this.timestamp_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.timestamp_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public ByteString getTimestampBytes() {
        Object obj = this.timestamp_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.timestamp_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public boolean hasContext() {
        if (this.context_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public boolean hasItem() {
        if (this.item_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public boolean hasPlacement() {
        if (this.placement_ != null) {
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
        int hashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTimestamp().hashCode()) * 37) + 2) * 53) + getId().hashCode()) * 37) + 3) * 53) + i0.d(getTest())) * 37) + 4) * 53) + getAt()) * 37) + 5) * 53) + this.placementTag_;
        if (hasItem()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getItem().hashCode();
        }
        if (hasPlacement()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getPlacement().hashCode();
        }
        if (hasContext()) {
            hashCode = (((hashCode * 37) + 8) * 53) + getContext().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable.d(AuctionContext.class, Builder.class);
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
        return new AuctionContext();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getTimestampBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.timestamp_);
        }
        if (!getIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.id_);
        }
        boolean z10 = this.test_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        int i10 = this.at_;
        if (i10 != 0) {
            codedOutputStream.c1(4, i10);
        }
        if (this.placementTag_ != PlacementTag.PLACEMENT_TAG_INVALID.getNumber()) {
            codedOutputStream.v0(5, this.placementTag_);
        }
        if (this.item_ != null) {
            codedOutputStream.L0(6, getItem());
        }
        if (this.placement_ != null) {
            codedOutputStream.L0(7, getPlacement());
        }
        if (this.context_ != null) {
            codedOutputStream.L0(8, getContext());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements AuctionContextOrBuilder {
        private int at_;
        private t1<Context, Context.Builder, c> contextBuilder_;
        private Context context_;
        private Object id_;
        private t1<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> itemBuilder_;
        private Request.Item item_;
        private t1<Placement, Placement.Builder, d> placementBuilder_;
        private int placementTag_;
        private Placement placement_;
        private boolean test_;
        private Object timestamp_;

        private t1<Context, Context.Builder, c> getContextFieldBuilder() {
            if (this.contextBuilder_ == null) {
                this.contextBuilder_ = new t1<>(getContext(), getParentForChildren(), isClean());
                this.context_ = null;
            }
            return this.contextBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor;
        }

        private t1<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> getItemFieldBuilder() {
            if (this.itemBuilder_ == null) {
                this.itemBuilder_ = new t1<>(getItem(), getParentForChildren(), isClean());
                this.item_ = null;
            }
            return this.itemBuilder_;
        }

        private t1<Placement, Placement.Builder, d> getPlacementFieldBuilder() {
            if (this.placementBuilder_ == null) {
                this.placementBuilder_ = new t1<>(getPlacement(), getParentForChildren(), isClean());
                this.placement_ = null;
            }
            return this.placementBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearAt() {
            this.at_ = 0;
            onChanged();
            return this;
        }

        public Builder clearContext() {
            if (this.contextBuilder_ == null) {
                this.context_ = null;
                onChanged();
            } else {
                this.context_ = null;
                this.contextBuilder_ = null;
            }
            return this;
        }

        public Builder clearId() {
            this.id_ = AuctionContext.getDefaultInstance().getId();
            onChanged();
            return this;
        }

        public Builder clearItem() {
            if (this.itemBuilder_ == null) {
                this.item_ = null;
                onChanged();
            } else {
                this.item_ = null;
                this.itemBuilder_ = null;
            }
            return this;
        }

        public Builder clearPlacement() {
            if (this.placementBuilder_ == null) {
                this.placement_ = null;
                onChanged();
            } else {
                this.placement_ = null;
                this.placementBuilder_ = null;
            }
            return this;
        }

        public Builder clearPlacementTag() {
            this.placementTag_ = 0;
            onChanged();
            return this;
        }

        public Builder clearTest() {
            this.test_ = false;
            onChanged();
            return this;
        }

        public Builder clearTimestamp() {
            this.timestamp_ = AuctionContext.getDefaultInstance().getTimestamp();
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public int getAt() {
            return this.at_;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public Context getContext() {
            t1<Context, Context.Builder, c> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                Context context = this.context_;
                if (context == null) {
                    return Context.getDefaultInstance();
                }
                return context;
            }
            return t1Var.e();
        }

        public Context.Builder getContextBuilder() {
            onChanged();
            return getContextFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public c getContextOrBuilder() {
            t1<Context, Context.Builder, c> t1Var = this.contextBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Context context = this.context_;
            if (context == null) {
                return Context.getDefaultInstance();
            }
            return context;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public String getId() {
            Object obj = this.id_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public ByteString getIdBytes() {
            Object obj = this.id_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public Request.Item getItem() {
            t1<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> t1Var = this.itemBuilder_;
            if (t1Var == null) {
                Request.Item item = this.item_;
                if (item == null) {
                    return Request.Item.getDefaultInstance();
                }
                return item;
            }
            return t1Var.e();
        }

        public Request.Item.Builder getItemBuilder() {
            onChanged();
            return getItemFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public Request.ItemOrBuilder getItemOrBuilder() {
            t1<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> t1Var = this.itemBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Request.Item item = this.item_;
            if (item == null) {
                return Request.Item.getDefaultInstance();
            }
            return item;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public Placement getPlacement() {
            t1<Placement, Placement.Builder, d> t1Var = this.placementBuilder_;
            if (t1Var == null) {
                Placement placement = this.placement_;
                if (placement == null) {
                    return Placement.getDefaultInstance();
                }
                return placement;
            }
            return t1Var.e();
        }

        public Placement.Builder getPlacementBuilder() {
            onChanged();
            return getPlacementFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public d getPlacementOrBuilder() {
            t1<Placement, Placement.Builder, d> t1Var = this.placementBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Placement placement = this.placement_;
            if (placement == null) {
                return Placement.getDefaultInstance();
            }
            return placement;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public PlacementTag getPlacementTag() {
            PlacementTag valueOf = PlacementTag.valueOf(this.placementTag_);
            if (valueOf == null) {
                return PlacementTag.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public int getPlacementTagValue() {
            return this.placementTag_;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public boolean getTest() {
            return this.test_;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public String getTimestamp() {
            Object obj = this.timestamp_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.timestamp_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public ByteString getTimestampBytes() {
            Object obj = this.timestamp_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.timestamp_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public boolean hasContext() {
            if (this.contextBuilder_ == null && this.context_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public boolean hasItem() {
            if (this.itemBuilder_ == null && this.item_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public boolean hasPlacement() {
            if (this.placementBuilder_ == null && this.placement_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable.d(AuctionContext.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeContext(Context context) {
            t1<Context, Context.Builder, c> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                Context context2 = this.context_;
                if (context2 != null) {
                    this.context_ = Context.newBuilder(context2).mergeFrom(context).buildPartial();
                } else {
                    this.context_ = context;
                }
                onChanged();
            } else {
                t1Var.g(context);
            }
            return this;
        }

        public Builder mergeItem(Request.Item item) {
            t1<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> t1Var = this.itemBuilder_;
            if (t1Var == null) {
                Request.Item item2 = this.item_;
                if (item2 != null) {
                    this.item_ = Request.Item.newBuilder(item2).mergeFrom(item).buildPartial();
                } else {
                    this.item_ = item;
                }
                onChanged();
            } else {
                t1Var.g(item);
            }
            return this;
        }

        public Builder mergePlacement(Placement placement) {
            t1<Placement, Placement.Builder, d> t1Var = this.placementBuilder_;
            if (t1Var == null) {
                Placement placement2 = this.placement_;
                if (placement2 != null) {
                    this.placement_ = Placement.newBuilder(placement2).mergeFrom(placement).buildPartial();
                } else {
                    this.placement_ = placement;
                }
                onChanged();
            } else {
                t1Var.g(placement);
            }
            return this;
        }

        public Builder setAt(int i10) {
            this.at_ = i10;
            onChanged();
            return this;
        }

        public Builder setContext(Context context) {
            t1<Context, Context.Builder, c> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                context.getClass();
                this.context_ = context;
                onChanged();
            } else {
                t1Var.i(context);
            }
            return this;
        }

        public Builder setId(String str) {
            str.getClass();
            this.id_ = str;
            onChanged();
            return this;
        }

        public Builder setIdBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.id_ = byteString;
            onChanged();
            return this;
        }

        public Builder setItem(Request.Item item) {
            t1<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> t1Var = this.itemBuilder_;
            if (t1Var == null) {
                item.getClass();
                this.item_ = item;
                onChanged();
            } else {
                t1Var.i(item);
            }
            return this;
        }

        public Builder setPlacement(Placement placement) {
            t1<Placement, Placement.Builder, d> t1Var = this.placementBuilder_;
            if (t1Var == null) {
                placement.getClass();
                this.placement_ = placement;
                onChanged();
            } else {
                t1Var.i(placement);
            }
            return this;
        }

        public Builder setPlacementTag(PlacementTag placementTag) {
            placementTag.getClass();
            this.placementTag_ = placementTag.getNumber();
            onChanged();
            return this;
        }

        public Builder setPlacementTagValue(int i10) {
            this.placementTag_ = i10;
            onChanged();
            return this;
        }

        public Builder setTest(boolean z10) {
            this.test_ = z10;
            onChanged();
            return this;
        }

        public Builder setTimestamp(String str) {
            str.getClass();
            this.timestamp_ = str;
            onChanged();
            return this;
        }

        public Builder setTimestampBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.timestamp_ = byteString;
            onChanged();
            return this;
        }

        private Builder() {
            this.timestamp_ = "";
            this.id_ = "";
            this.placementTag_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public AuctionContext build() {
            AuctionContext buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public AuctionContext buildPartial() {
            AuctionContext auctionContext = new AuctionContext(this);
            auctionContext.timestamp_ = this.timestamp_;
            auctionContext.id_ = this.id_;
            auctionContext.test_ = this.test_;
            auctionContext.at_ = this.at_;
            auctionContext.placementTag_ = this.placementTag_;
            t1<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> t1Var = this.itemBuilder_;
            if (t1Var == null) {
                auctionContext.item_ = this.item_;
            } else {
                auctionContext.item_ = t1Var.a();
            }
            t1<Placement, Placement.Builder, d> t1Var2 = this.placementBuilder_;
            if (t1Var2 == null) {
                auctionContext.placement_ = this.placement_;
            } else {
                auctionContext.placement_ = t1Var2.a();
            }
            t1<Context, Context.Builder, c> t1Var3 = this.contextBuilder_;
            if (t1Var3 == null) {
                auctionContext.context_ = this.context_;
            } else {
                auctionContext.context_ = t1Var3.a();
            }
            onBuilt();
            return auctionContext;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public AuctionContext mo4630getDefaultInstanceForType() {
            return AuctionContext.getDefaultInstance();
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
            this.timestamp_ = "";
            this.id_ = "";
            this.test_ = false;
            this.at_ = 0;
            this.placementTag_ = 0;
            if (this.itemBuilder_ == null) {
                this.item_ = null;
            } else {
                this.item_ = null;
                this.itemBuilder_ = null;
            }
            if (this.placementBuilder_ == null) {
                this.placement_ = null;
            } else {
                this.placement_ = null;
                this.placementBuilder_ = null;
            }
            if (this.contextBuilder_ == null) {
                this.context_ = null;
            } else {
                this.context_ = null;
                this.contextBuilder_ = null;
            }
            return this;
        }

        public Builder setContext(Context.Builder builder) {
            t1<Context, Context.Builder, c> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                this.context_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setItem(Request.Item.Builder builder) {
            t1<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> t1Var = this.itemBuilder_;
            if (t1Var == null) {
                this.item_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setPlacement(Placement.Builder builder) {
            t1<Placement, Placement.Builder, d> t1Var = this.placementBuilder_;
            if (t1Var == null) {
                this.placement_ = builder.build();
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
            if (message instanceof AuctionContext) {
                return mergeFrom((AuctionContext) message);
            }
            super.mergeFrom(message);
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.timestamp_ = "";
            this.id_ = "";
            this.placementTag_ = 0;
            maybeForceBuilderInitialization();
        }

        public Builder mergeFrom(AuctionContext auctionContext) {
            if (auctionContext == AuctionContext.getDefaultInstance()) {
                return this;
            }
            if (!auctionContext.getTimestamp().isEmpty()) {
                this.timestamp_ = auctionContext.timestamp_;
                onChanged();
            }
            if (!auctionContext.getId().isEmpty()) {
                this.id_ = auctionContext.id_;
                onChanged();
            }
            if (auctionContext.getTest()) {
                setTest(auctionContext.getTest());
            }
            if (auctionContext.getAt() != 0) {
                setAt(auctionContext.getAt());
            }
            if (auctionContext.placementTag_ != 0) {
                setPlacementTagValue(auctionContext.getPlacementTagValue());
            }
            if (auctionContext.hasItem()) {
                mergeItem(auctionContext.getItem());
            }
            if (auctionContext.hasPlacement()) {
                mergePlacement(auctionContext.getPlacement());
            }
            if (auctionContext.hasContext()) {
                mergeContext(auctionContext.getContext());
            }
            mergeUnknownFields(((GeneratedMessageV3) auctionContext).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.analytics.AuctionContext.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.analytics.AuctionContext.access$1300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.analytics.AuctionContext r3 = (io.bidmachine.protobuf.analytics.AuctionContext) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.analytics.AuctionContext r4 = (io.bidmachine.protobuf.analytics.AuctionContext) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.analytics.AuctionContext.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.analytics.AuctionContext$Builder");
        }
    }

    public static Builder newBuilder(AuctionContext auctionContext) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(auctionContext);
    }

    public static AuctionContext parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private AuctionContext(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AuctionContext parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static AuctionContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public AuctionContext mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static AuctionContext parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private AuctionContext() {
        this.memoizedIsInitialized = (byte) -1;
        this.timestamp_ = "";
        this.id_ = "";
        this.placementTag_ = 0;
    }

    public static AuctionContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static AuctionContext parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static AuctionContext parseFrom(InputStream inputStream) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AuctionContext parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    private AuctionContext(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            this.timestamp_ = nVar.J();
                        } else if (K == 18) {
                            this.id_ = nVar.J();
                        } else if (K == 24) {
                            this.test_ = nVar.q();
                        } else if (K == 32) {
                            this.at_ = nVar.L();
                        } else if (K != 40) {
                            if (K == 50) {
                                Request.Item item = this.item_;
                                Request.Item.Builder builder = item != null ? item.toBuilder() : null;
                                Request.Item item2 = (Request.Item) nVar.A(Request.Item.parser(), yVar);
                                this.item_ = item2;
                                if (builder != null) {
                                    builder.mergeFrom(item2);
                                    this.item_ = builder.buildPartial();
                                }
                            } else if (K == 58) {
                                Placement placement = this.placement_;
                                Placement.Builder builder2 = placement != null ? placement.toBuilder() : null;
                                Placement placement2 = (Placement) nVar.A(Placement.parser(), yVar);
                                this.placement_ = placement2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(placement2);
                                    this.placement_ = builder2.buildPartial();
                                }
                            } else if (K != 66) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                Context context = this.context_;
                                Context.Builder builder3 = context != null ? context.toBuilder() : null;
                                Context context2 = (Context) nVar.A(Context.parser(), yVar);
                                this.context_ = context2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(context2);
                                    this.context_ = builder3.buildPartial();
                                }
                            }
                        } else {
                            this.placementTag_ = nVar.t();
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

    public static AuctionContext parseFrom(n nVar) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static AuctionContext parseFrom(n nVar, y yVar) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
