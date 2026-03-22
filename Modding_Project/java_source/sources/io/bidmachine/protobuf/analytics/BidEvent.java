package io.bidmachine.protobuf.analytics;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.openrtb.Response;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.y;
import io.bidmachine.protobuf.analytics.AuctionContext;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public final class BidEvent extends GeneratedMessageV3 implements BidEventOrBuilder {
    public static final int AD_FIELD_NUMBER = 6;
    public static final int AUCTION_CONTEXT_FIELD_NUMBER = 4;
    public static final int BIDID_FIELD_NUMBER = 2;
    public static final int BID_FIELD_NUMBER = 5;
    private static final BidEvent DEFAULT_INSTANCE = new BidEvent();
    private static final j1<BidEvent> PARSER = new b<BidEvent>() { // from class: io.bidmachine.protobuf.analytics.BidEvent.1
        @Override // com.explorestack.protobuf.j1
        public BidEvent parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new BidEvent(nVar, yVar);
        }
    };
    public static final int SEAT_FIELD_NUMBER = 3;
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Ad ad_;
    private AuctionContext auctionContext_;
    private Response.Seatbid.Bid bid_;
    private volatile Object bidid_;
    private byte memoizedIsInitialized;
    private volatile Object seat_;
    private volatile Object timestamp_;

    public static BidEvent getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static BidEvent parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static BidEvent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<BidEvent> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BidEvent)) {
            return super.equals(obj);
        }
        BidEvent bidEvent = (BidEvent) obj;
        if (!getTimestamp().equals(bidEvent.getTimestamp()) || !getBidid().equals(bidEvent.getBidid()) || !getSeat().equals(bidEvent.getSeat()) || hasAuctionContext() != bidEvent.hasAuctionContext()) {
            return false;
        }
        if ((hasAuctionContext() && !getAuctionContext().equals(bidEvent.getAuctionContext())) || hasBid() != bidEvent.hasBid()) {
            return false;
        }
        if ((hasBid() && !getBid().equals(bidEvent.getBid())) || hasAd() != bidEvent.hasAd()) {
            return false;
        }
        if ((!hasAd() || getAd().equals(bidEvent.getAd())) && this.unknownFields.equals(bidEvent.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public Ad getAd() {
        Ad ad2 = this.ad_;
        if (ad2 == null) {
            return Ad.getDefaultInstance();
        }
        return ad2;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public a getAdOrBuilder() {
        return getAd();
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public AuctionContext getAuctionContext() {
        AuctionContext auctionContext = this.auctionContext_;
        if (auctionContext == null) {
            return AuctionContext.getDefaultInstance();
        }
        return auctionContext;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public AuctionContextOrBuilder getAuctionContextOrBuilder() {
        return getAuctionContext();
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public Response.Seatbid.Bid getBid() {
        Response.Seatbid.Bid bid = this.bid_;
        if (bid == null) {
            return Response.Seatbid.Bid.getDefaultInstance();
        }
        return bid;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public Response.Seatbid.BidOrBuilder getBidOrBuilder() {
        return getBid();
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public String getBidid() {
        Object obj = this.bidid_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bidid_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public ByteString getBididBytes() {
        Object obj = this.bidid_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bidid_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<BidEvent> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public String getSeat() {
        Object obj = this.seat_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.seat_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public ByteString getSeatBytes() {
        Object obj = this.seat_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.seat_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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
        if (!getBididBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.bidid_);
        }
        if (!getSeatBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(3, this.seat_);
        }
        if (this.auctionContext_ != null) {
            i10 += CodedOutputStream.G(4, getAuctionContext());
        }
        if (this.bid_ != null) {
            i10 += CodedOutputStream.G(5, getBid());
        }
        if (this.ad_ != null) {
            i10 += CodedOutputStream.G(6, getAd());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public String getTimestamp() {
        Object obj = this.timestamp_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.timestamp_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
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

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public boolean hasAd() {
        if (this.ad_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public boolean hasAuctionContext() {
        if (this.auctionContext_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public boolean hasBid() {
        if (this.bid_ != null) {
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
        int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTimestamp().hashCode()) * 37) + 2) * 53) + getBidid().hashCode()) * 37) + 3) * 53) + getSeat().hashCode();
        if (hasAuctionContext()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getAuctionContext().hashCode();
        }
        if (hasBid()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getBid().hashCode();
        }
        if (hasAd()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getAd().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable.d(BidEvent.class, Builder.class);
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
        return new BidEvent();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getTimestampBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.timestamp_);
        }
        if (!getBididBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.bidid_);
        }
        if (!getSeatBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.seat_);
        }
        if (this.auctionContext_ != null) {
            codedOutputStream.L0(4, getAuctionContext());
        }
        if (this.bid_ != null) {
            codedOutputStream.L0(5, getBid());
        }
        if (this.ad_ != null) {
            codedOutputStream.L0(6, getAd());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements BidEventOrBuilder {
        private t1<Ad, Ad.Builder, a> adBuilder_;
        private Ad ad_;
        private t1<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> auctionContextBuilder_;
        private AuctionContext auctionContext_;
        private t1<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> bidBuilder_;
        private Response.Seatbid.Bid bid_;
        private Object bidid_;
        private Object seat_;
        private Object timestamp_;

        private t1<Ad, Ad.Builder, a> getAdFieldBuilder() {
            if (this.adBuilder_ == null) {
                this.adBuilder_ = new t1<>(getAd(), getParentForChildren(), isClean());
                this.ad_ = null;
            }
            return this.adBuilder_;
        }

        private t1<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> getAuctionContextFieldBuilder() {
            if (this.auctionContextBuilder_ == null) {
                this.auctionContextBuilder_ = new t1<>(getAuctionContext(), getParentForChildren(), isClean());
                this.auctionContext_ = null;
            }
            return this.auctionContextBuilder_;
        }

        private t1<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> getBidFieldBuilder() {
            if (this.bidBuilder_ == null) {
                this.bidBuilder_ = new t1<>(getBid(), getParentForChildren(), isClean());
                this.bid_ = null;
            }
            return this.bidBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearAd() {
            if (this.adBuilder_ == null) {
                this.ad_ = null;
                onChanged();
            } else {
                this.ad_ = null;
                this.adBuilder_ = null;
            }
            return this;
        }

        public Builder clearAuctionContext() {
            if (this.auctionContextBuilder_ == null) {
                this.auctionContext_ = null;
                onChanged();
            } else {
                this.auctionContext_ = null;
                this.auctionContextBuilder_ = null;
            }
            return this;
        }

        public Builder clearBid() {
            if (this.bidBuilder_ == null) {
                this.bid_ = null;
                onChanged();
            } else {
                this.bid_ = null;
                this.bidBuilder_ = null;
            }
            return this;
        }

        public Builder clearBidid() {
            this.bidid_ = BidEvent.getDefaultInstance().getBidid();
            onChanged();
            return this;
        }

        public Builder clearSeat() {
            this.seat_ = BidEvent.getDefaultInstance().getSeat();
            onChanged();
            return this;
        }

        public Builder clearTimestamp() {
            this.timestamp_ = BidEvent.getDefaultInstance().getTimestamp();
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public Ad getAd() {
            t1<Ad, Ad.Builder, a> t1Var = this.adBuilder_;
            if (t1Var == null) {
                Ad ad2 = this.ad_;
                if (ad2 == null) {
                    return Ad.getDefaultInstance();
                }
                return ad2;
            }
            return t1Var.e();
        }

        public Ad.Builder getAdBuilder() {
            onChanged();
            return getAdFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public a getAdOrBuilder() {
            t1<Ad, Ad.Builder, a> t1Var = this.adBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Ad ad2 = this.ad_;
            if (ad2 == null) {
                return Ad.getDefaultInstance();
            }
            return ad2;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public AuctionContext getAuctionContext() {
            t1<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> t1Var = this.auctionContextBuilder_;
            if (t1Var == null) {
                AuctionContext auctionContext = this.auctionContext_;
                if (auctionContext == null) {
                    return AuctionContext.getDefaultInstance();
                }
                return auctionContext;
            }
            return t1Var.e();
        }

        public AuctionContext.Builder getAuctionContextBuilder() {
            onChanged();
            return getAuctionContextFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public AuctionContextOrBuilder getAuctionContextOrBuilder() {
            t1<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> t1Var = this.auctionContextBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            AuctionContext auctionContext = this.auctionContext_;
            if (auctionContext == null) {
                return AuctionContext.getDefaultInstance();
            }
            return auctionContext;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public Response.Seatbid.Bid getBid() {
            t1<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> t1Var = this.bidBuilder_;
            if (t1Var == null) {
                Response.Seatbid.Bid bid = this.bid_;
                if (bid == null) {
                    return Response.Seatbid.Bid.getDefaultInstance();
                }
                return bid;
            }
            return t1Var.e();
        }

        public Response.Seatbid.Bid.Builder getBidBuilder() {
            onChanged();
            return getBidFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public Response.Seatbid.BidOrBuilder getBidOrBuilder() {
            t1<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> t1Var = this.bidBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Response.Seatbid.Bid bid = this.bid_;
            if (bid == null) {
                return Response.Seatbid.Bid.getDefaultInstance();
            }
            return bid;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public String getBidid() {
            Object obj = this.bidid_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bidid_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public ByteString getBididBytes() {
            Object obj = this.bidid_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bidid_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public String getSeat() {
            Object obj = this.seat_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.seat_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public ByteString getSeatBytes() {
            Object obj = this.seat_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.seat_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public String getTimestamp() {
            Object obj = this.timestamp_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.timestamp_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public ByteString getTimestampBytes() {
            Object obj = this.timestamp_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.timestamp_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public boolean hasAd() {
            if (this.adBuilder_ == null && this.ad_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public boolean hasAuctionContext() {
            if (this.auctionContextBuilder_ == null && this.auctionContext_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public boolean hasBid() {
            if (this.bidBuilder_ == null && this.bid_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable.d(BidEvent.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeAd(Ad ad2) {
            t1<Ad, Ad.Builder, a> t1Var = this.adBuilder_;
            if (t1Var == null) {
                Ad ad3 = this.ad_;
                if (ad3 != null) {
                    this.ad_ = Ad.newBuilder(ad3).mergeFrom(ad2).buildPartial();
                } else {
                    this.ad_ = ad2;
                }
                onChanged();
            } else {
                t1Var.g(ad2);
            }
            return this;
        }

        public Builder mergeAuctionContext(AuctionContext auctionContext) {
            t1<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> t1Var = this.auctionContextBuilder_;
            if (t1Var == null) {
                AuctionContext auctionContext2 = this.auctionContext_;
                if (auctionContext2 != null) {
                    this.auctionContext_ = AuctionContext.newBuilder(auctionContext2).mergeFrom(auctionContext).buildPartial();
                } else {
                    this.auctionContext_ = auctionContext;
                }
                onChanged();
            } else {
                t1Var.g(auctionContext);
            }
            return this;
        }

        public Builder mergeBid(Response.Seatbid.Bid bid) {
            t1<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> t1Var = this.bidBuilder_;
            if (t1Var == null) {
                Response.Seatbid.Bid bid2 = this.bid_;
                if (bid2 != null) {
                    this.bid_ = Response.Seatbid.Bid.newBuilder(bid2).mergeFrom(bid).buildPartial();
                } else {
                    this.bid_ = bid;
                }
                onChanged();
            } else {
                t1Var.g(bid);
            }
            return this;
        }

        public Builder setAd(Ad ad2) {
            t1<Ad, Ad.Builder, a> t1Var = this.adBuilder_;
            if (t1Var == null) {
                ad2.getClass();
                this.ad_ = ad2;
                onChanged();
            } else {
                t1Var.i(ad2);
            }
            return this;
        }

        public Builder setAuctionContext(AuctionContext auctionContext) {
            t1<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> t1Var = this.auctionContextBuilder_;
            if (t1Var == null) {
                auctionContext.getClass();
                this.auctionContext_ = auctionContext;
                onChanged();
            } else {
                t1Var.i(auctionContext);
            }
            return this;
        }

        public Builder setBid(Response.Seatbid.Bid bid) {
            t1<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> t1Var = this.bidBuilder_;
            if (t1Var == null) {
                bid.getClass();
                this.bid_ = bid;
                onChanged();
            } else {
                t1Var.i(bid);
            }
            return this;
        }

        public Builder setBidid(String str) {
            str.getClass();
            this.bidid_ = str;
            onChanged();
            return this;
        }

        public Builder setBididBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.bidid_ = byteString;
            onChanged();
            return this;
        }

        public Builder setSeat(String str) {
            str.getClass();
            this.seat_ = str;
            onChanged();
            return this;
        }

        public Builder setSeatBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.seat_ = byteString;
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
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.timestamp_ = byteString;
            onChanged();
            return this;
        }

        private Builder() {
            this.timestamp_ = "";
            this.bidid_ = "";
            this.seat_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BidEvent build() {
            BidEvent buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BidEvent buildPartial() {
            BidEvent bidEvent = new BidEvent(this);
            bidEvent.timestamp_ = this.timestamp_;
            bidEvent.bidid_ = this.bidid_;
            bidEvent.seat_ = this.seat_;
            t1<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> t1Var = this.auctionContextBuilder_;
            if (t1Var == null) {
                bidEvent.auctionContext_ = this.auctionContext_;
            } else {
                bidEvent.auctionContext_ = t1Var.a();
            }
            t1<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> t1Var2 = this.bidBuilder_;
            if (t1Var2 == null) {
                bidEvent.bid_ = this.bid_;
            } else {
                bidEvent.bid_ = t1Var2.a();
            }
            t1<Ad, Ad.Builder, a> t1Var3 = this.adBuilder_;
            if (t1Var3 == null) {
                bidEvent.ad_ = this.ad_;
            } else {
                bidEvent.ad_ = t1Var3.a();
            }
            onBuilt();
            return bidEvent;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public BidEvent mo4630getDefaultInstanceForType() {
            return BidEvent.getDefaultInstance();
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
            this.bidid_ = "";
            this.seat_ = "";
            if (this.auctionContextBuilder_ == null) {
                this.auctionContext_ = null;
            } else {
                this.auctionContext_ = null;
                this.auctionContextBuilder_ = null;
            }
            if (this.bidBuilder_ == null) {
                this.bid_ = null;
            } else {
                this.bid_ = null;
                this.bidBuilder_ = null;
            }
            if (this.adBuilder_ == null) {
                this.ad_ = null;
            } else {
                this.ad_ = null;
                this.adBuilder_ = null;
            }
            return this;
        }

        public Builder setAd(Ad.Builder builder) {
            t1<Ad, Ad.Builder, a> t1Var = this.adBuilder_;
            if (t1Var == null) {
                this.ad_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setAuctionContext(AuctionContext.Builder builder) {
            t1<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> t1Var = this.auctionContextBuilder_;
            if (t1Var == null) {
                this.auctionContext_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setBid(Response.Seatbid.Bid.Builder builder) {
            t1<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> t1Var = this.bidBuilder_;
            if (t1Var == null) {
                this.bid_ = builder.build();
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
            if (message instanceof BidEvent) {
                return mergeFrom((BidEvent) message);
            }
            super.mergeFrom(message);
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.timestamp_ = "";
            this.bidid_ = "";
            this.seat_ = "";
            maybeForceBuilderInitialization();
        }

        public Builder mergeFrom(BidEvent bidEvent) {
            if (bidEvent == BidEvent.getDefaultInstance()) {
                return this;
            }
            if (!bidEvent.getTimestamp().isEmpty()) {
                this.timestamp_ = bidEvent.timestamp_;
                onChanged();
            }
            if (!bidEvent.getBidid().isEmpty()) {
                this.bidid_ = bidEvent.bidid_;
                onChanged();
            }
            if (!bidEvent.getSeat().isEmpty()) {
                this.seat_ = bidEvent.seat_;
                onChanged();
            }
            if (bidEvent.hasAuctionContext()) {
                mergeAuctionContext(bidEvent.getAuctionContext());
            }
            if (bidEvent.hasBid()) {
                mergeBid(bidEvent.getBid());
            }
            if (bidEvent.hasAd()) {
                mergeAd(bidEvent.getAd());
            }
            mergeUnknownFields(((GeneratedMessageV3) bidEvent).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.analytics.BidEvent.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.analytics.BidEvent.access$1100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.analytics.BidEvent r3 = (io.bidmachine.protobuf.analytics.BidEvent) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.analytics.BidEvent r4 = (io.bidmachine.protobuf.analytics.BidEvent) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.analytics.BidEvent.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.analytics.BidEvent$Builder");
        }
    }

    public static Builder newBuilder(BidEvent bidEvent) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(bidEvent);
    }

    public static BidEvent parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private BidEvent(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BidEvent parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static BidEvent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public BidEvent mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static BidEvent parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private BidEvent() {
        this.memoizedIsInitialized = (byte) -1;
        this.timestamp_ = "";
        this.bidid_ = "";
        this.seat_ = "";
    }

    public static BidEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static BidEvent parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static BidEvent parseFrom(InputStream inputStream) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static BidEvent parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    private BidEvent(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            this.bidid_ = nVar.J();
                        } else if (K != 26) {
                            if (K == 34) {
                                AuctionContext auctionContext = this.auctionContext_;
                                AuctionContext.Builder builder = auctionContext != null ? auctionContext.toBuilder() : null;
                                AuctionContext auctionContext2 = (AuctionContext) nVar.A(AuctionContext.parser(), yVar);
                                this.auctionContext_ = auctionContext2;
                                if (builder != null) {
                                    builder.mergeFrom(auctionContext2);
                                    this.auctionContext_ = builder.buildPartial();
                                }
                            } else if (K == 42) {
                                Response.Seatbid.Bid bid = this.bid_;
                                Response.Seatbid.Bid.Builder builder2 = bid != null ? bid.toBuilder() : null;
                                Response.Seatbid.Bid bid2 = (Response.Seatbid.Bid) nVar.A(Response.Seatbid.Bid.parser(), yVar);
                                this.bid_ = bid2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(bid2);
                                    this.bid_ = builder2.buildPartial();
                                }
                            } else if (K != 50) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                Ad ad2 = this.ad_;
                                Ad.Builder builder3 = ad2 != null ? ad2.toBuilder() : null;
                                Ad ad3 = (Ad) nVar.A(Ad.parser(), yVar);
                                this.ad_ = ad3;
                                if (builder3 != null) {
                                    builder3.mergeFrom(ad3);
                                    this.ad_ = builder3.buildPartial();
                                }
                            }
                        } else {
                            this.seat_ = nVar.J();
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

    public static BidEvent parseFrom(n nVar) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static BidEvent parseFrom(n nVar, y yVar) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
