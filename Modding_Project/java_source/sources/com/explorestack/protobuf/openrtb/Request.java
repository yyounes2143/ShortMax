package com.explorestack.protobuf.openrtb;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.e;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.m0;
import com.explorestack.protobuf.m1;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.n0;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.x1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class Request extends GeneratedMessageV3 implements c {
    public static final int AT_FIELD_NUMBER = 4;
    public static final int CDATA_FIELD_NUMBER = 8;
    public static final int CONTEXT_FIELD_NUMBER = 12;
    public static final int CUR_FIELD_NUMBER = 5;
    public static final int EXT_FIELD_NUMBER = 14;
    public static final int EXT_PROTO_FIELD_NUMBER = 13;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int ITEM_FIELD_NUMBER = 10;
    public static final int PACKAGE_FIELD_NUMBER = 11;
    public static final int SEAT_FIELD_NUMBER = 6;
    public static final int SOURCE_FIELD_NUMBER = 9;
    public static final int TEST_FIELD_NUMBER = 2;
    public static final int TMAX_FIELD_NUMBER = 3;
    public static final int WSEAT_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private int at_;
    private volatile Object cdata_;
    private Any context_;
    private n0 cur_;
    private List<Any> extProto_;
    private Struct ext_;
    private volatile Object id_;
    private List<Item> item_;
    private byte memoizedIsInitialized;
    private int package_;
    private n0 seat_;
    private Source source_;
    private boolean test_;
    private int tmax_;
    private boolean wseat_;
    private static final Request DEFAULT_INSTANCE = new Request();
    private static final j1<Request> PARSER = new com.explorestack.protobuf.b<Request>() { // from class: com.explorestack.protobuf.openrtb.Request.1
        @Override // com.explorestack.protobuf.j1
        public Request parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Request(nVar, yVar);
        }
    };

    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements c {
        private int at_;
        private int bitField0_;
        private Object cdata_;
        private t1<Any, Any.Builder, e> contextBuilder_;
        private Any context_;
        private n0 cur_;
        private t1<Struct, Struct.Builder, x1> extBuilder_;
        private p1<Any, Any.Builder, e> extProtoBuilder_;
        private List<Any> extProto_;
        private Struct ext_;
        private Object id_;
        private p1<Item, Item.Builder, ItemOrBuilder> itemBuilder_;
        private List<Item> item_;
        private int package_;
        private n0 seat_;
        private t1<Source, Source.Builder, SourceOrBuilder> sourceBuilder_;
        private Source source_;
        private boolean test_;
        private int tmax_;
        private boolean wseat_;

        private void ensureCurIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.cur_ = new m0(this.cur_);
                this.bitField0_ |= 1;
            }
        }

        private void ensureExtProtoIsMutable() {
            if ((this.bitField0_ & 8) == 0) {
                this.extProto_ = new ArrayList(this.extProto_);
                this.bitField0_ |= 8;
            }
        }

        private void ensureItemIsMutable() {
            if ((this.bitField0_ & 4) == 0) {
                this.item_ = new ArrayList(this.item_);
                this.bitField0_ |= 4;
            }
        }

        private void ensureSeatIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.seat_ = new m0(this.seat_);
                this.bitField0_ |= 2;
            }
        }

        private t1<Any, Any.Builder, e> getContextFieldBuilder() {
            if (this.contextBuilder_ == null) {
                this.contextBuilder_ = new t1<>(getContext(), getParentForChildren(), isClean());
                this.context_ = null;
            }
            return this.contextBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.f14552c;
        }

        private t1<Struct, Struct.Builder, x1> getExtFieldBuilder() {
            if (this.extBuilder_ == null) {
                this.extBuilder_ = new t1<>(getExt(), getParentForChildren(), isClean());
                this.ext_ = null;
            }
            return this.extBuilder_;
        }

        private p1<Any, Any.Builder, e> getExtProtoFieldBuilder() {
            boolean z10;
            if (this.extProtoBuilder_ == null) {
                List<Any> list = this.extProto_;
                if ((this.bitField0_ & 8) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.extProtoBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                this.extProto_ = null;
            }
            return this.extProtoBuilder_;
        }

        private p1<Item, Item.Builder, ItemOrBuilder> getItemFieldBuilder() {
            boolean z10;
            if (this.itemBuilder_ == null) {
                List<Item> list = this.item_;
                if ((this.bitField0_ & 4) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.itemBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                this.item_ = null;
            }
            return this.itemBuilder_;
        }

        private t1<Source, Source.Builder, SourceOrBuilder> getSourceFieldBuilder() {
            if (this.sourceBuilder_ == null) {
                this.sourceBuilder_ = new t1<>(getSource(), getParentForChildren(), isClean());
                this.source_ = null;
            }
            return this.sourceBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getItemFieldBuilder();
                getExtProtoFieldBuilder();
            }
        }

        public Builder addAllCur(Iterable<String> iterable) {
            ensureCurIsMutable();
            a.AbstractC0246a.addAll((Iterable) iterable, (List) this.cur_);
            onChanged();
            return this;
        }

        public Builder addAllExtProto(Iterable<? extends Any> iterable) {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                ensureExtProtoIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.extProto_);
                onChanged();
            } else {
                p1Var.a(iterable);
            }
            return this;
        }

        public Builder addAllItem(Iterable<? extends Item> iterable) {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                ensureItemIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.item_);
                onChanged();
            } else {
                p1Var.a(iterable);
            }
            return this;
        }

        public Builder addAllSeat(Iterable<String> iterable) {
            ensureSeatIsMutable();
            a.AbstractC0246a.addAll((Iterable) iterable, (List) this.seat_);
            onChanged();
            return this;
        }

        public Builder addCur(String str) {
            str.getClass();
            ensureCurIsMutable();
            this.cur_.add(str);
            onChanged();
            return this;
        }

        public Builder addCurBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            ensureCurIsMutable();
            this.cur_.b(byteString);
            onChanged();
            return this;
        }

        public Builder addExtProto(Any any) {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                any.getClass();
                ensureExtProtoIsMutable();
                this.extProto_.add(any);
                onChanged();
            } else {
                p1Var.e(any);
            }
            return this;
        }

        public Any.Builder addExtProtoBuilder() {
            return getExtProtoFieldBuilder().c(Any.getDefaultInstance());
        }

        public Builder addItem(Item item) {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                item.getClass();
                ensureItemIsMutable();
                this.item_.add(item);
                onChanged();
            } else {
                p1Var.e(item);
            }
            return this;
        }

        public Item.Builder addItemBuilder() {
            return getItemFieldBuilder().c(Item.getDefaultInstance());
        }

        public Builder addSeat(String str) {
            str.getClass();
            ensureSeatIsMutable();
            this.seat_.add(str);
            onChanged();
            return this;
        }

        public Builder addSeatBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            ensureSeatIsMutable();
            this.seat_.b(byteString);
            onChanged();
            return this;
        }

        public Builder clearAt() {
            this.at_ = 0;
            onChanged();
            return this;
        }

        public Builder clearCdata() {
            this.cdata_ = Request.getDefaultInstance().getCdata();
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

        public Builder clearCur() {
            this.cur_ = m0.f14459d;
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        public Builder clearExt() {
            if (this.extBuilder_ == null) {
                this.ext_ = null;
                onChanged();
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            return this;
        }

        public Builder clearExtProto() {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                this.extProto_ = Collections.emptyList();
                this.bitField0_ &= -9;
                onChanged();
            } else {
                p1Var.g();
            }
            return this;
        }

        public Builder clearId() {
            this.id_ = Request.getDefaultInstance().getId();
            onChanged();
            return this;
        }

        public Builder clearItem() {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                this.item_ = Collections.emptyList();
                this.bitField0_ &= -5;
                onChanged();
            } else {
                p1Var.g();
            }
            return this;
        }

        public Builder clearPackage() {
            this.package_ = 0;
            onChanged();
            return this;
        }

        public Builder clearSeat() {
            this.seat_ = m0.f14459d;
            this.bitField0_ &= -3;
            onChanged();
            return this;
        }

        public Builder clearSource() {
            if (this.sourceBuilder_ == null) {
                this.source_ = null;
                onChanged();
            } else {
                this.source_ = null;
                this.sourceBuilder_ = null;
            }
            return this;
        }

        public Builder clearTest() {
            this.test_ = false;
            onChanged();
            return this;
        }

        public Builder clearTmax() {
            this.tmax_ = 0;
            onChanged();
            return this;
        }

        public Builder clearWseat() {
            this.wseat_ = false;
            onChanged();
            return this;
        }

        public int getAt() {
            return this.at_;
        }

        public String getCdata() {
            Object obj = this.cdata_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cdata_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        public ByteString getCdataBytes() {
            Object obj = this.cdata_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cdata_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Any getContext() {
            t1<Any, Any.Builder, e> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                Any any = this.context_;
                if (any == null) {
                    return Any.getDefaultInstance();
                }
                return any;
            }
            return t1Var.e();
        }

        public Any.Builder getContextBuilder() {
            onChanged();
            return getContextFieldBuilder().d();
        }

        public e getContextOrBuilder() {
            t1<Any, Any.Builder, e> t1Var = this.contextBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Any any = this.context_;
            if (any == null) {
                return Any.getDefaultInstance();
            }
            return any;
        }

        public String getCur(int i10) {
            return this.cur_.get(i10);
        }

        public ByteString getCurBytes(int i10) {
            return this.cur_.getByteString(i10);
        }

        public int getCurCount() {
            return this.cur_.size();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return b.f14552c;
        }

        public Struct getExt() {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }
            return t1Var.e();
        }

        public Struct.Builder getExtBuilder() {
            onChanged();
            return getExtFieldBuilder().d();
        }

        public x1 getExtOrBuilder() {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        public Any getExtProto(int i10) {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                return this.extProto_.get(i10);
            }
            return p1Var.n(i10);
        }

        public Any.Builder getExtProtoBuilder(int i10) {
            return getExtProtoFieldBuilder().k(i10);
        }

        public List<Any.Builder> getExtProtoBuilderList() {
            return getExtProtoFieldBuilder().l();
        }

        public int getExtProtoCount() {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                return this.extProto_.size();
            }
            return p1Var.m();
        }

        public List<Any> getExtProtoList() {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                return Collections.unmodifiableList(this.extProto_);
            }
            return p1Var.p();
        }

        public e getExtProtoOrBuilder(int i10) {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                return this.extProto_.get(i10);
            }
            return p1Var.q(i10);
        }

        public List<? extends e> getExtProtoOrBuilderList() {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var != null) {
                return p1Var.r();
            }
            return Collections.unmodifiableList(this.extProto_);
        }

        public String getId() {
            Object obj = this.id_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        public ByteString getIdBytes() {
            Object obj = this.id_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Item getItem(int i10) {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                return this.item_.get(i10);
            }
            return p1Var.n(i10);
        }

        public Item.Builder getItemBuilder(int i10) {
            return getItemFieldBuilder().k(i10);
        }

        public List<Item.Builder> getItemBuilderList() {
            return getItemFieldBuilder().l();
        }

        public int getItemCount() {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                return this.item_.size();
            }
            return p1Var.m();
        }

        public List<Item> getItemList() {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                return Collections.unmodifiableList(this.item_);
            }
            return p1Var.p();
        }

        public ItemOrBuilder getItemOrBuilder(int i10) {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                return this.item_.get(i10);
            }
            return p1Var.q(i10);
        }

        public List<? extends ItemOrBuilder> getItemOrBuilderList() {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var != null) {
                return p1Var.r();
            }
            return Collections.unmodifiableList(this.item_);
        }

        public int getPackage() {
            return this.package_;
        }

        public String getSeat(int i10) {
            return this.seat_.get(i10);
        }

        public ByteString getSeatBytes(int i10) {
            return this.seat_.getByteString(i10);
        }

        public int getSeatCount() {
            return this.seat_.size();
        }

        public Source getSource() {
            t1<Source, Source.Builder, SourceOrBuilder> t1Var = this.sourceBuilder_;
            if (t1Var == null) {
                Source source = this.source_;
                if (source == null) {
                    return Source.getDefaultInstance();
                }
                return source;
            }
            return t1Var.e();
        }

        public Source.Builder getSourceBuilder() {
            onChanged();
            return getSourceFieldBuilder().d();
        }

        public SourceOrBuilder getSourceOrBuilder() {
            t1<Source, Source.Builder, SourceOrBuilder> t1Var = this.sourceBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Source source = this.source_;
            if (source == null) {
                return Source.getDefaultInstance();
            }
            return source;
        }

        public boolean getTest() {
            return this.test_;
        }

        public int getTmax() {
            return this.tmax_;
        }

        public boolean getWseat() {
            return this.wseat_;
        }

        public boolean hasContext() {
            if (this.contextBuilder_ == null && this.context_ == null) {
                return false;
            }
            return true;
        }

        public boolean hasExt() {
            if (this.extBuilder_ == null && this.ext_ == null) {
                return false;
            }
            return true;
        }

        public boolean hasSource() {
            if (this.sourceBuilder_ == null && this.source_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.f14553d.d(Request.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeContext(Any any) {
            t1<Any, Any.Builder, e> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                Any any2 = this.context_;
                if (any2 != null) {
                    this.context_ = Any.newBuilder(any2).mergeFrom(any).buildPartial();
                } else {
                    this.context_ = any;
                }
                onChanged();
            } else {
                t1Var.g(any);
            }
            return this;
        }

        public Builder mergeExt(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                Struct struct2 = this.ext_;
                if (struct2 != null) {
                    this.ext_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                } else {
                    this.ext_ = struct;
                }
                onChanged();
            } else {
                t1Var.g(struct);
            }
            return this;
        }

        public Builder mergeSource(Source source) {
            t1<Source, Source.Builder, SourceOrBuilder> t1Var = this.sourceBuilder_;
            if (t1Var == null) {
                Source source2 = this.source_;
                if (source2 != null) {
                    this.source_ = Source.newBuilder(source2).mergeFrom(source).buildPartial();
                } else {
                    this.source_ = source;
                }
                onChanged();
            } else {
                t1Var.g(source);
            }
            return this;
        }

        public Builder removeExtProto(int i10) {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                ensureExtProtoIsMutable();
                this.extProto_.remove(i10);
                onChanged();
            } else {
                p1Var.v(i10);
            }
            return this;
        }

        public Builder removeItem(int i10) {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                ensureItemIsMutable();
                this.item_.remove(i10);
                onChanged();
            } else {
                p1Var.v(i10);
            }
            return this;
        }

        public Builder setAt(int i10) {
            this.at_ = i10;
            onChanged();
            return this;
        }

        public Builder setCdata(String str) {
            str.getClass();
            this.cdata_ = str;
            onChanged();
            return this;
        }

        public Builder setCdataBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.cdata_ = byteString;
            onChanged();
            return this;
        }

        public Builder setContext(Any any) {
            t1<Any, Any.Builder, e> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                any.getClass();
                this.context_ = any;
                onChanged();
            } else {
                t1Var.i(any);
            }
            return this;
        }

        public Builder setCur(int i10, String str) {
            str.getClass();
            ensureCurIsMutable();
            this.cur_.set(i10, str);
            onChanged();
            return this;
        }

        public Builder setExt(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                struct.getClass();
                this.ext_ = struct;
                onChanged();
            } else {
                t1Var.i(struct);
            }
            return this;
        }

        public Builder setExtProto(int i10, Any any) {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                any.getClass();
                ensureExtProtoIsMutable();
                this.extProto_.set(i10, any);
                onChanged();
            } else {
                p1Var.w(i10, any);
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
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.id_ = byteString;
            onChanged();
            return this;
        }

        public Builder setItem(int i10, Item item) {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                item.getClass();
                ensureItemIsMutable();
                this.item_.set(i10, item);
                onChanged();
            } else {
                p1Var.w(i10, item);
            }
            return this;
        }

        public Builder setPackage(int i10) {
            this.package_ = i10;
            onChanged();
            return this;
        }

        public Builder setSeat(int i10, String str) {
            str.getClass();
            ensureSeatIsMutable();
            this.seat_.set(i10, str);
            onChanged();
            return this;
        }

        public Builder setSource(Source source) {
            t1<Source, Source.Builder, SourceOrBuilder> t1Var = this.sourceBuilder_;
            if (t1Var == null) {
                source.getClass();
                this.source_ = source;
                onChanged();
            } else {
                t1Var.i(source);
            }
            return this;
        }

        public Builder setTest(boolean z10) {
            this.test_ = z10;
            onChanged();
            return this;
        }

        public Builder setTmax(int i10) {
            this.tmax_ = i10;
            onChanged();
            return this;
        }

        public Builder setWseat(boolean z10) {
            this.wseat_ = z10;
            onChanged();
            return this;
        }

        /* renamed from: getCurList */
        public m1 m4661getCurList() {
            return this.cur_.getUnmodifiableView();
        }

        /* renamed from: getSeatList */
        public m1 m4662getSeatList() {
            return this.seat_.getUnmodifiableView();
        }

        private Builder() {
            this.id_ = "";
            n0 n0Var = m0.f14459d;
            this.cur_ = n0Var;
            this.seat_ = n0Var;
            this.cdata_ = "";
            this.item_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Request build() {
            Request buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Request buildPartial() {
            Request request = new Request(this);
            request.id_ = this.id_;
            request.test_ = this.test_;
            request.tmax_ = this.tmax_;
            request.at_ = this.at_;
            if ((this.bitField0_ & 1) != 0) {
                this.cur_ = this.cur_.getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            request.cur_ = this.cur_;
            if ((this.bitField0_ & 2) != 0) {
                this.seat_ = this.seat_.getUnmodifiableView();
                this.bitField0_ &= -3;
            }
            request.seat_ = this.seat_;
            request.wseat_ = this.wseat_;
            request.cdata_ = this.cdata_;
            t1<Source, Source.Builder, SourceOrBuilder> t1Var = this.sourceBuilder_;
            if (t1Var == null) {
                request.source_ = this.source_;
            } else {
                request.source_ = t1Var.a();
            }
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var != null) {
                request.item_ = p1Var.f();
            } else {
                if ((this.bitField0_ & 4) != 0) {
                    this.item_ = Collections.unmodifiableList(this.item_);
                    this.bitField0_ &= -5;
                }
                request.item_ = this.item_;
            }
            request.package_ = this.package_;
            t1<Any, Any.Builder, e> t1Var2 = this.contextBuilder_;
            if (t1Var2 == null) {
                request.context_ = this.context_;
            } else {
                request.context_ = t1Var2.a();
            }
            t1<Struct, Struct.Builder, x1> t1Var3 = this.extBuilder_;
            if (t1Var3 == null) {
                request.ext_ = this.ext_;
            } else {
                request.ext_ = t1Var3.a();
            }
            p1<Any, Any.Builder, e> p1Var2 = this.extProtoBuilder_;
            if (p1Var2 != null) {
                request.extProto_ = p1Var2.f();
            } else {
                if ((this.bitField0_ & 8) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    this.bitField0_ &= -9;
                }
                request.extProto_ = this.extProto_;
            }
            onBuilt();
            return request;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Request mo4630getDefaultInstanceForType() {
            return Request.getDefaultInstance();
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

        public Any.Builder addExtProtoBuilder(int i10) {
            return getExtProtoFieldBuilder().b(i10, Any.getDefaultInstance());
        }

        public Item.Builder addItemBuilder(int i10) {
            return getItemFieldBuilder().b(i10, Item.getDefaultInstance());
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
            this.id_ = "";
            this.test_ = false;
            this.tmax_ = 0;
            this.at_ = 0;
            n0 n0Var = m0.f14459d;
            this.cur_ = n0Var;
            int i10 = this.bitField0_;
            this.seat_ = n0Var;
            this.bitField0_ = i10 & (-4);
            this.wseat_ = false;
            this.cdata_ = "";
            if (this.sourceBuilder_ == null) {
                this.source_ = null;
            } else {
                this.source_ = null;
                this.sourceBuilder_ = null;
            }
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                this.item_ = Collections.emptyList();
                this.bitField0_ &= -5;
            } else {
                p1Var.g();
            }
            this.package_ = 0;
            if (this.contextBuilder_ == null) {
                this.context_ = null;
            } else {
                this.context_ = null;
                this.contextBuilder_ = null;
            }
            if (this.extBuilder_ == null) {
                this.ext_ = null;
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            p1<Any, Any.Builder, e> p1Var2 = this.extProtoBuilder_;
            if (p1Var2 == null) {
                this.extProto_ = Collections.emptyList();
                this.bitField0_ &= -9;
            } else {
                p1Var2.g();
            }
            return this;
        }

        public Builder setContext(Any.Builder builder) {
            t1<Any, Any.Builder, e> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                this.context_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setExt(Struct.Builder builder) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                this.ext_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setSource(Source.Builder builder) {
            t1<Source, Source.Builder, SourceOrBuilder> t1Var = this.sourceBuilder_;
            if (t1Var == null) {
                this.source_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder addExtProto(int i10, Any any) {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                any.getClass();
                ensureExtProtoIsMutable();
                this.extProto_.add(i10, any);
                onChanged();
            } else {
                p1Var.d(i10, any);
            }
            return this;
        }

        public Builder addItem(int i10, Item item) {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                item.getClass();
                ensureItemIsMutable();
                this.item_.add(i10, item);
                onChanged();
            } else {
                p1Var.d(i10, item);
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
            if (message instanceof Request) {
                return mergeFrom((Request) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setExtProto(int i10, Any.Builder builder) {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                ensureExtProtoIsMutable();
                this.extProto_.set(i10, builder.build());
                onChanged();
            } else {
                p1Var.w(i10, builder.build());
            }
            return this;
        }

        public Builder setItem(int i10, Item.Builder builder) {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                ensureItemIsMutable();
                this.item_.set(i10, builder.build());
                onChanged();
            } else {
                p1Var.w(i10, builder.build());
            }
            return this;
        }

        public Builder mergeFrom(Request request) {
            if (request == Request.getDefaultInstance()) {
                return this;
            }
            if (!request.getId().isEmpty()) {
                this.id_ = request.id_;
                onChanged();
            }
            if (request.getTest()) {
                setTest(request.getTest());
            }
            if (request.getTmax() != 0) {
                setTmax(request.getTmax());
            }
            if (request.getAt() != 0) {
                setAt(request.getAt());
            }
            if (!request.cur_.isEmpty()) {
                if (this.cur_.isEmpty()) {
                    this.cur_ = request.cur_;
                    this.bitField0_ &= -2;
                } else {
                    ensureCurIsMutable();
                    this.cur_.addAll(request.cur_);
                }
                onChanged();
            }
            if (!request.seat_.isEmpty()) {
                if (this.seat_.isEmpty()) {
                    this.seat_ = request.seat_;
                    this.bitField0_ &= -3;
                } else {
                    ensureSeatIsMutable();
                    this.seat_.addAll(request.seat_);
                }
                onChanged();
            }
            if (request.getWseat()) {
                setWseat(request.getWseat());
            }
            if (!request.getCdata().isEmpty()) {
                this.cdata_ = request.cdata_;
                onChanged();
            }
            if (request.hasSource()) {
                mergeSource(request.getSource());
            }
            if (this.itemBuilder_ == null) {
                if (!request.item_.isEmpty()) {
                    if (this.item_.isEmpty()) {
                        this.item_ = request.item_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureItemIsMutable();
                        this.item_.addAll(request.item_);
                    }
                    onChanged();
                }
            } else if (!request.item_.isEmpty()) {
                if (!this.itemBuilder_.t()) {
                    this.itemBuilder_.a(request.item_);
                } else {
                    this.itemBuilder_.h();
                    this.itemBuilder_ = null;
                    this.item_ = request.item_;
                    this.bitField0_ &= -5;
                    this.itemBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getItemFieldBuilder() : null;
                }
            }
            if (request.getPackage() != 0) {
                setPackage(request.getPackage());
            }
            if (request.hasContext()) {
                mergeContext(request.getContext());
            }
            if (request.hasExt()) {
                mergeExt(request.getExt());
            }
            if (this.extProtoBuilder_ == null) {
                if (!request.extProto_.isEmpty()) {
                    if (this.extProto_.isEmpty()) {
                        this.extProto_ = request.extProto_;
                        this.bitField0_ &= -9;
                    } else {
                        ensureExtProtoIsMutable();
                        this.extProto_.addAll(request.extProto_);
                    }
                    onChanged();
                }
            } else if (!request.extProto_.isEmpty()) {
                if (!this.extProtoBuilder_.t()) {
                    this.extProtoBuilder_.a(request.extProto_);
                } else {
                    this.extProtoBuilder_.h();
                    this.extProtoBuilder_ = null;
                    this.extProto_ = request.extProto_;
                    this.bitField0_ &= -9;
                    this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) request).unknownFields);
            onChanged();
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.id_ = "";
            n0 n0Var = m0.f14459d;
            this.cur_ = n0Var;
            this.seat_ = n0Var;
            this.cdata_ = "";
            this.item_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public Builder addExtProto(Any.Builder builder) {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                ensureExtProtoIsMutable();
                this.extProto_.add(builder.build());
                onChanged();
            } else {
                p1Var.e(builder.build());
            }
            return this;
        }

        public Builder addItem(Item.Builder builder) {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                ensureItemIsMutable();
                this.item_.add(builder.build());
                onChanged();
            } else {
                p1Var.e(builder.build());
            }
            return this;
        }

        public Builder addExtProto(int i10, Any.Builder builder) {
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                ensureExtProtoIsMutable();
                this.extProto_.add(i10, builder.build());
                onChanged();
            } else {
                p1Var.d(i10, builder.build());
            }
            return this;
        }

        public Builder addItem(int i10, Item.Builder builder) {
            p1<Item, Item.Builder, ItemOrBuilder> p1Var = this.itemBuilder_;
            if (p1Var == null) {
                ensureItemIsMutable();
                this.item_.add(i10, builder.build());
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
        public com.explorestack.protobuf.openrtb.Request.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.openrtb.Request.access$10400()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.explorestack.protobuf.openrtb.Request r3 = (com.explorestack.protobuf.openrtb.Request) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.explorestack.protobuf.openrtb.Request r4 = (com.explorestack.protobuf.openrtb.Request) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Request.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.openrtb.Request$Builder");
        }
    }

    /* loaded from: classes3.dex */
    public static final class Item extends GeneratedMessageV3 implements ItemOrBuilder {
        public static final int DEAL_FIELD_NUMBER = 11;
        public static final int DLVY_FIELD_NUMBER = 9;
        public static final int DT_FIELD_NUMBER = 8;
        public static final int EXP_FIELD_NUMBER = 7;
        public static final int EXT_FIELD_NUMBER = 15;
        public static final int EXT_PROTO_FIELD_NUMBER = 14;
        public static final int FLRCUR_FIELD_NUMBER = 6;
        public static final int FLR_FIELD_NUMBER = 4;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int METRIC_FIELD_NUMBER = 10;
        public static final int PRIVATE_FIELD_NUMBER = 12;
        public static final int QTY_FIELD_NUMBER = 2;
        public static final int SEQ_FIELD_NUMBER = 3;
        public static final int SPEC_FIELD_NUMBER = 13;
        private static final long serialVersionUID = 0;
        private List<Deal> deal_;
        private int dlvy_;
        private volatile Object dt_;
        private int exp_;
        private List<Any> extProto_;
        private Struct ext_;
        private double flr_;
        private volatile Object flrcur_;
        private volatile Object id_;
        private byte memoizedIsInitialized;
        private List<Metric> metric_;
        private boolean private_;
        private int qty_;
        private int seq_;
        private Any spec_;
        private static final Item DEFAULT_INSTANCE = new Item();
        private static final j1<Item> PARSER = new com.explorestack.protobuf.b<Item>() { // from class: com.explorestack.protobuf.openrtb.Request.Item.1
            @Override // com.explorestack.protobuf.j1
            public Item parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Item(nVar, yVar);
            }
        };

        /* loaded from: classes3.dex */
        public static final class Deal extends GeneratedMessageV3 implements DealOrBuilder {
            public static final int AT_FIELD_NUMBER = 4;
            public static final int EXT_FIELD_NUMBER = 8;
            public static final int EXT_PROTO_FIELD_NUMBER = 7;
            public static final int FLRCUR_FIELD_NUMBER = 3;
            public static final int FLR_FIELD_NUMBER = 2;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int WADOMAIN_FIELD_NUMBER = 6;
            public static final int WSEAT_FIELD_NUMBER = 5;
            private static final long serialVersionUID = 0;
            private int at_;
            private List<Any> extProto_;
            private Struct ext_;
            private double flr_;
            private volatile Object flrcur_;
            private volatile Object id_;
            private byte memoizedIsInitialized;
            private n0 wadomain_;
            private n0 wseat_;
            private static final Deal DEFAULT_INSTANCE = new Deal();
            private static final j1<Deal> PARSER = new com.explorestack.protobuf.b<Deal>() { // from class: com.explorestack.protobuf.openrtb.Request.Item.Deal.1
                @Override // com.explorestack.protobuf.j1
                public Deal parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Deal(nVar, yVar);
                }
            };

            /* loaded from: classes3.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements DealOrBuilder {
                private int at_;
                private int bitField0_;
                private t1<Struct, Struct.Builder, x1> extBuilder_;
                private p1<Any, Any.Builder, e> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private double flr_;
                private Object flrcur_;
                private Object id_;
                private n0 wadomain_;
                private n0 wseat_;

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 4) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 4;
                    }
                }

                private void ensureWadomainIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.wadomain_ = new m0(this.wadomain_);
                        this.bitField0_ |= 2;
                    }
                }

                private void ensureWseatIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.wseat_ = new m0(this.wseat_);
                        this.bitField0_ |= 1;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.f14560k;
                }

                private t1<Struct, Struct.Builder, x1> getExtFieldBuilder() {
                    if (this.extBuilder_ == null) {
                        this.extBuilder_ = new t1<>(getExt(), getParentForChildren(), isClean());
                        this.ext_ = null;
                    }
                    return this.extBuilder_;
                }

                private p1<Any, Any.Builder, e> getExtProtoFieldBuilder() {
                    boolean z10;
                    if (this.extProtoBuilder_ == null) {
                        List<Any> list = this.extProto_;
                        if ((this.bitField0_ & 4) != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        this.extProtoBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                        this.extProto_ = null;
                    }
                    return this.extProtoBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        getExtProtoFieldBuilder();
                    }
                }

                public Builder addAllExtProto(Iterable<? extends Any> iterable) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        ensureExtProtoIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.extProto_);
                        onChanged();
                    } else {
                        p1Var.a(iterable);
                    }
                    return this;
                }

                public Builder addAllWadomain(Iterable<String> iterable) {
                    ensureWadomainIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.wadomain_);
                    onChanged();
                    return this;
                }

                public Builder addAllWseat(Iterable<String> iterable) {
                    ensureWseatIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.wseat_);
                    onChanged();
                    return this;
                }

                public Builder addExtProto(Any any) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        any.getClass();
                        ensureExtProtoIsMutable();
                        this.extProto_.add(any);
                        onChanged();
                    } else {
                        p1Var.e(any);
                    }
                    return this;
                }

                public Any.Builder addExtProtoBuilder() {
                    return getExtProtoFieldBuilder().c(Any.getDefaultInstance());
                }

                public Builder addWadomain(String str) {
                    str.getClass();
                    ensureWadomainIsMutable();
                    this.wadomain_.add(str);
                    onChanged();
                    return this;
                }

                public Builder addWadomainBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    ensureWadomainIsMutable();
                    this.wadomain_.b(byteString);
                    onChanged();
                    return this;
                }

                public Builder addWseat(String str) {
                    str.getClass();
                    ensureWseatIsMutable();
                    this.wseat_.add(str);
                    onChanged();
                    return this;
                }

                public Builder addWseatBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    ensureWseatIsMutable();
                    this.wseat_.b(byteString);
                    onChanged();
                    return this;
                }

                public Builder clearAt() {
                    this.at_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearExt() {
                    if (this.extBuilder_ == null) {
                        this.ext_ = null;
                        onChanged();
                    } else {
                        this.ext_ = null;
                        this.extBuilder_ = null;
                    }
                    return this;
                }

                public Builder clearExtProto() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        this.extProto_ = Collections.emptyList();
                        this.bitField0_ &= -5;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder clearFlr() {
                    this.flr_ = 0.0d;
                    onChanged();
                    return this;
                }

                public Builder clearFlrcur() {
                    this.flrcur_ = Deal.getDefaultInstance().getFlrcur();
                    onChanged();
                    return this;
                }

                public Builder clearId() {
                    this.id_ = Deal.getDefaultInstance().getId();
                    onChanged();
                    return this;
                }

                public Builder clearWadomain() {
                    this.wadomain_ = m0.f14459d;
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                public Builder clearWseat() {
                    this.wseat_ = m0.f14459d;
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public int getAt() {
                    return this.at_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.f14560k;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public Struct getExt() {
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        Struct struct = this.ext_;
                        if (struct == null) {
                            return Struct.getDefaultInstance();
                        }
                        return struct;
                    }
                    return t1Var.e();
                }

                public Struct.Builder getExtBuilder() {
                    onChanged();
                    return getExtFieldBuilder().d();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public x1 getExtOrBuilder() {
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    Struct struct = this.ext_;
                    if (struct == null) {
                        return Struct.getDefaultInstance();
                    }
                    return struct;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public Any getExtProto(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.get(i10);
                    }
                    return p1Var.n(i10);
                }

                public Any.Builder getExtProtoBuilder(int i10) {
                    return getExtProtoFieldBuilder().k(i10);
                }

                public List<Any.Builder> getExtProtoBuilderList() {
                    return getExtProtoFieldBuilder().l();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public int getExtProtoCount() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.size();
                    }
                    return p1Var.m();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public List<Any> getExtProtoList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.extProto_);
                    }
                    return p1Var.p();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public e getExtProtoOrBuilder(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public List<? extends e> getExtProtoOrBuilderList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public double getFlr() {
                    return this.flr_;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public String getFlrcur() {
                    Object obj = this.flrcur_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.flrcur_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public ByteString getFlrcurBytes() {
                    Object obj = this.flrcur_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.flrcur_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public String getId() {
                    Object obj = this.id_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.id_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.id_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public String getWadomain(int i10) {
                    return this.wadomain_.get(i10);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public ByteString getWadomainBytes(int i10) {
                    return this.wadomain_.getByteString(i10);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public int getWadomainCount() {
                    return this.wadomain_.size();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public String getWseat(int i10) {
                    return this.wseat_.get(i10);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public ByteString getWseatBytes(int i10) {
                    return this.wseat_.getByteString(i10);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public int getWseatCount() {
                    return this.wseat_.size();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public boolean hasExt() {
                    if (this.extBuilder_ == null && this.ext_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.f14561l.d(Deal.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder mergeExt(Struct struct) {
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        Struct struct2 = this.ext_;
                        if (struct2 != null) {
                            this.ext_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                        } else {
                            this.ext_ = struct;
                        }
                        onChanged();
                    } else {
                        t1Var.g(struct);
                    }
                    return this;
                }

                public Builder removeExtProto(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.remove(i10);
                        onChanged();
                    } else {
                        p1Var.v(i10);
                    }
                    return this;
                }

                public Builder setAt(int i10) {
                    this.at_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setExt(Struct struct) {
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        struct.getClass();
                        this.ext_ = struct;
                        onChanged();
                    } else {
                        t1Var.i(struct);
                    }
                    return this;
                }

                public Builder setExtProto(int i10, Any any) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        any.getClass();
                        ensureExtProtoIsMutable();
                        this.extProto_.set(i10, any);
                        onChanged();
                    } else {
                        p1Var.w(i10, any);
                    }
                    return this;
                }

                public Builder setFlr(double d10) {
                    this.flr_ = d10;
                    onChanged();
                    return this;
                }

                public Builder setFlrcur(String str) {
                    str.getClass();
                    this.flrcur_ = str;
                    onChanged();
                    return this;
                }

                public Builder setFlrcurBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.flrcur_ = byteString;
                    onChanged();
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
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.id_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setWadomain(int i10, String str) {
                    str.getClass();
                    ensureWadomainIsMutable();
                    this.wadomain_.set(i10, str);
                    onChanged();
                    return this;
                }

                public Builder setWseat(int i10, String str) {
                    str.getClass();
                    ensureWseatIsMutable();
                    this.wseat_.set(i10, str);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public m1 getWadomainList() {
                    return this.wadomain_.getUnmodifiableView();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public m1 getWseatList() {
                    return this.wseat_.getUnmodifiableView();
                }

                private Builder() {
                    this.id_ = "";
                    this.flrcur_ = "";
                    n0 n0Var = m0.f14459d;
                    this.wseat_ = n0Var;
                    this.wadomain_ = n0Var;
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Deal build() {
                    Deal buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Deal buildPartial() {
                    Deal deal = new Deal(this);
                    deal.id_ = this.id_;
                    deal.flr_ = this.flr_;
                    deal.flrcur_ = this.flrcur_;
                    deal.at_ = this.at_;
                    if ((this.bitField0_ & 1) != 0) {
                        this.wseat_ = this.wseat_.getUnmodifiableView();
                        this.bitField0_ &= -2;
                    }
                    deal.wseat_ = this.wseat_;
                    if ((this.bitField0_ & 2) != 0) {
                        this.wadomain_ = this.wadomain_.getUnmodifiableView();
                        this.bitField0_ &= -3;
                    }
                    deal.wadomain_ = this.wadomain_;
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        deal.ext_ = this.ext_;
                    } else {
                        deal.ext_ = t1Var.a();
                    }
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        deal.extProto_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 4) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -5;
                        }
                        deal.extProto_ = this.extProto_;
                    }
                    onBuilt();
                    return deal;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Deal mo4630getDefaultInstanceForType() {
                    return Deal.getDefaultInstance();
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

                public Any.Builder addExtProtoBuilder(int i10) {
                    return getExtProtoFieldBuilder().b(i10, Any.getDefaultInstance());
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
                    this.id_ = "";
                    this.flr_ = 0.0d;
                    this.flrcur_ = "";
                    this.at_ = 0;
                    n0 n0Var = m0.f14459d;
                    this.wseat_ = n0Var;
                    int i10 = this.bitField0_;
                    this.wadomain_ = n0Var;
                    this.bitField0_ = i10 & (-4);
                    if (this.extBuilder_ == null) {
                        this.ext_ = null;
                    } else {
                        this.ext_ = null;
                        this.extBuilder_ = null;
                    }
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        this.extProto_ = Collections.emptyList();
                        this.bitField0_ &= -5;
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder setExt(Struct.Builder builder) {
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        this.ext_ = builder.build();
                        onChanged();
                    } else {
                        t1Var.i(builder.build());
                    }
                    return this;
                }

                public Builder addExtProto(int i10, Any any) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        any.getClass();
                        ensureExtProtoIsMutable();
                        this.extProto_.add(i10, any);
                        onChanged();
                    } else {
                        p1Var.d(i10, any);
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
                    if (message instanceof Deal) {
                        return mergeFrom((Deal) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder setExtProto(int i10, Any.Builder builder) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.set(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.w(i10, builder.build());
                    }
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.id_ = "";
                    this.flrcur_ = "";
                    n0 n0Var = m0.f14459d;
                    this.wseat_ = n0Var;
                    this.wadomain_ = n0Var;
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                public Builder mergeFrom(Deal deal) {
                    if (deal == Deal.getDefaultInstance()) {
                        return this;
                    }
                    if (!deal.getId().isEmpty()) {
                        this.id_ = deal.id_;
                        onChanged();
                    }
                    if (deal.getFlr() != 0.0d) {
                        setFlr(deal.getFlr());
                    }
                    if (!deal.getFlrcur().isEmpty()) {
                        this.flrcur_ = deal.flrcur_;
                        onChanged();
                    }
                    if (deal.getAt() != 0) {
                        setAt(deal.getAt());
                    }
                    if (!deal.wseat_.isEmpty()) {
                        if (this.wseat_.isEmpty()) {
                            this.wseat_ = deal.wseat_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureWseatIsMutable();
                            this.wseat_.addAll(deal.wseat_);
                        }
                        onChanged();
                    }
                    if (!deal.wadomain_.isEmpty()) {
                        if (this.wadomain_.isEmpty()) {
                            this.wadomain_ = deal.wadomain_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureWadomainIsMutable();
                            this.wadomain_.addAll(deal.wadomain_);
                        }
                        onChanged();
                    }
                    if (deal.hasExt()) {
                        mergeExt(deal.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!deal.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = deal.extProto_;
                                this.bitField0_ &= -5;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(deal.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!deal.extProto_.isEmpty()) {
                        if (!this.extProtoBuilder_.t()) {
                            this.extProtoBuilder_.a(deal.extProto_);
                        } else {
                            this.extProtoBuilder_.h();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = deal.extProto_;
                            this.bitField0_ &= -5;
                            this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) deal).unknownFields);
                    onChanged();
                    return this;
                }

                public Builder addExtProto(Any.Builder builder) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.add(builder.build());
                        onChanged();
                    } else {
                        p1Var.e(builder.build());
                    }
                    return this;
                }

                public Builder addExtProto(int i10, Any.Builder builder) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.add(i10, builder.build());
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
                public com.explorestack.protobuf.openrtb.Request.Item.Deal.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.openrtb.Request.Item.Deal.access$5000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.openrtb.Request$Item$Deal r3 = (com.explorestack.protobuf.openrtb.Request.Item.Deal) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.openrtb.Request$Item$Deal r4 = (com.explorestack.protobuf.openrtb.Request.Item.Deal) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Request.Item.Deal.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.openrtb.Request$Item$Deal$Builder");
                }
            }

            public static Deal getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14560k;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Deal parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Deal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Deal parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Deal> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Deal)) {
                    return super.equals(obj);
                }
                Deal deal = (Deal) obj;
                if (!getId().equals(deal.getId()) || Double.doubleToLongBits(getFlr()) != Double.doubleToLongBits(deal.getFlr()) || !getFlrcur().equals(deal.getFlrcur()) || getAt() != deal.getAt() || !getWseatList().equals(deal.getWseatList()) || !getWadomainList().equals(deal.getWadomainList()) || hasExt() != deal.hasExt()) {
                    return false;
                }
                if ((!hasExt() || getExt().equals(deal.getExt())) && getExtProtoList().equals(deal.getExtProtoList()) && this.unknownFields.equals(deal.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public int getAt() {
                return this.at_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public Struct getExt() {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public x1 getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public Any getExtProto(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public double getFlr() {
                return this.flr_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public String getFlrcur() {
                Object obj = this.flrcur_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.flrcur_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public ByteString getFlrcurBytes() {
                Object obj = this.flrcur_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.flrcur_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Deal> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if (!getIdBytes().isEmpty()) {
                    i10 = GeneratedMessageV3.computeStringSize(1, this.id_);
                } else {
                    i10 = 0;
                }
                double d10 = this.flr_;
                if (d10 != 0.0d) {
                    i10 += CodedOutputStream.j(2, d10);
                }
                if (!getFlrcurBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(3, this.flrcur_);
                }
                int i12 = this.at_;
                if (i12 != 0) {
                    i10 += CodedOutputStream.Y(4, i12);
                }
                int i13 = 0;
                for (int i14 = 0; i14 < this.wseat_.size(); i14++) {
                    i13 += GeneratedMessageV3.computeStringSizeNoTag(this.wseat_.getRaw(i14));
                }
                int size = i10 + i13 + getWseatList().size();
                int i15 = 0;
                for (int i16 = 0; i16 < this.wadomain_.size(); i16++) {
                    i15 += GeneratedMessageV3.computeStringSizeNoTag(this.wadomain_.getRaw(i16));
                }
                int size2 = size + i15 + getWadomainList().size();
                for (int i17 = 0; i17 < this.extProto_.size(); i17++) {
                    size2 += CodedOutputStream.G(7, this.extProto_.get(i17));
                }
                if (this.ext_ != null) {
                    size2 += CodedOutputStream.G(8, getExt());
                }
                int serializedSize = size2 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public String getWadomain(int i10) {
                return this.wadomain_.get(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public ByteString getWadomainBytes(int i10) {
                return this.wadomain_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public int getWadomainCount() {
                return this.wadomain_.size();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public String getWseat(int i10) {
                return this.wseat_.get(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public ByteString getWseatBytes(int i10) {
                return this.wseat_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public int getWseatCount() {
                return this.wseat_.size();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public boolean hasExt() {
                if (this.ext_ != null) {
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
                int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + i0.i(Double.doubleToLongBits(getFlr()))) * 37) + 3) * 53) + getFlrcur().hashCode()) * 37) + 4) * 53) + getAt();
                if (getWseatCount() > 0) {
                    hashCode = (((hashCode * 37) + 5) * 53) + getWseatList().hashCode();
                }
                if (getWadomainCount() > 0) {
                    hashCode = (((hashCode * 37) + 6) * 53) + getWadomainList().hashCode();
                }
                if (hasExt()) {
                    hashCode = (((hashCode * 37) + 8) * 53) + getExt().hashCode();
                }
                if (getExtProtoCount() > 0) {
                    hashCode = (((hashCode * 37) + 7) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14561l.d(Deal.class, Builder.class);
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
                return new Deal();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getIdBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
                }
                double d10 = this.flr_;
                if (d10 != 0.0d) {
                    codedOutputStream.t0(2, d10);
                }
                if (!getFlrcurBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.flrcur_);
                }
                int i10 = this.at_;
                if (i10 != 0) {
                    codedOutputStream.c1(4, i10);
                }
                for (int i11 = 0; i11 < this.wseat_.size(); i11++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 5, this.wseat_.getRaw(i11));
                }
                for (int i12 = 0; i12 < this.wadomain_.size(); i12++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 6, this.wadomain_.getRaw(i12));
                }
                for (int i13 = 0; i13 < this.extProto_.size(); i13++) {
                    codedOutputStream.L0(7, this.extProto_.get(i13));
                }
                if (this.ext_ != null) {
                    codedOutputStream.L0(8, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            public static Builder newBuilder(Deal deal) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(deal);
            }

            public static Deal parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public m1 getWadomainList() {
                return this.wadomain_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public m1 getWseatList() {
                return this.wseat_;
            }

            private Deal(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Deal parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Deal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Deal parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Deal mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Deal parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private Deal() {
                this.memoizedIsInitialized = (byte) -1;
                this.id_ = "";
                this.flrcur_ = "";
                n0 n0Var = m0.f14459d;
                this.wseat_ = n0Var;
                this.wadomain_ = n0Var;
                this.extProto_ = Collections.emptyList();
            }

            public static Deal parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Deal parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Deal parseFrom(InputStream inputStream) throws IOException {
                return (Deal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Deal parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Deal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static Deal parseFrom(n nVar) throws IOException {
                return (Deal) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Deal(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                    this.id_ = nVar.J();
                                } else if (K == 17) {
                                    this.flr_ = nVar.s();
                                } else if (K == 26) {
                                    this.flrcur_ = nVar.J();
                                } else if (K == 32) {
                                    this.at_ = nVar.L();
                                } else if (K == 42) {
                                    String J = nVar.J();
                                    if (!(z11 & true)) {
                                        this.wseat_ = new m0();
                                        z11 |= true;
                                    }
                                    this.wseat_.add(J);
                                } else if (K == 50) {
                                    String J2 = nVar.J();
                                    if (!(z11 & true)) {
                                        this.wadomain_ = new m0();
                                        z11 |= true;
                                    }
                                    this.wadomain_.add(J2);
                                } else if (K == 58) {
                                    if (!(z11 & true)) {
                                        this.extProto_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.extProto_.add(nVar.A(Any.parser(), yVar));
                                } else if (K != 66) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    Struct struct = this.ext_;
                                    Struct.Builder builder = struct != null ? struct.toBuilder() : null;
                                    Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                    this.ext_ = struct2;
                                    if (builder != null) {
                                        builder.mergeFrom(struct2);
                                        this.ext_ = builder.buildPartial();
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
                        if (z11 & true) {
                            this.wseat_ = this.wseat_.getUnmodifiableView();
                        }
                        if (z11 & true) {
                            this.wadomain_ = this.wadomain_.getUnmodifiableView();
                        }
                        if (z11 & true) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if (z11 & true) {
                    this.wseat_ = this.wseat_.getUnmodifiableView();
                }
                if (z11 & true) {
                    this.wadomain_ = this.wadomain_.getUnmodifiableView();
                }
                if (z11 & true) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static Deal parseFrom(n nVar, y yVar) throws IOException {
                return (Deal) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes3.dex */
        public interface DealOrBuilder extends MessageOrBuilder {
            int getAt();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            Struct getExt();

            x1 getExtOrBuilder();

            Any getExtProto(int i10);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            e getExtProtoOrBuilder(int i10);

            List<? extends e> getExtProtoOrBuilderList();

            double getFlr();

            String getFlrcur();

            ByteString getFlrcurBytes();

            String getId();

            ByteString getIdBytes();

            String getWadomain(int i10);

            ByteString getWadomainBytes(int i10);

            int getWadomainCount();

            List<String> getWadomainList();

            String getWseat(int i10);

            ByteString getWseatBytes(int i10);

            int getWseatCount();

            List<String> getWseatList();

            boolean hasExt();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes3.dex */
        public static final class Metric extends GeneratedMessageV3 implements MetricOrBuilder {
            public static final int EXT_FIELD_NUMBER = 5;
            public static final int EXT_PROTO_FIELD_NUMBER = 4;
            public static final int TYPE_FIELD_NUMBER = 1;
            public static final int VALUE_FIELD_NUMBER = 2;
            public static final int VENDOR_FIELD_NUMBER = 3;
            private static final long serialVersionUID = 0;
            private List<Any> extProto_;
            private Struct ext_;
            private byte memoizedIsInitialized;
            private volatile Object type_;
            private float value_;
            private volatile Object vendor_;
            private static final Metric DEFAULT_INSTANCE = new Metric();
            private static final j1<Metric> PARSER = new com.explorestack.protobuf.b<Metric>() { // from class: com.explorestack.protobuf.openrtb.Request.Item.Metric.1
                @Override // com.explorestack.protobuf.j1
                public Metric parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Metric(nVar, yVar);
                }
            };

            public static Metric getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14558i;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Metric parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Metric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Metric parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Metric> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Metric)) {
                    return super.equals(obj);
                }
                Metric metric = (Metric) obj;
                if (!getType().equals(metric.getType()) || Float.floatToIntBits(getValue()) != Float.floatToIntBits(metric.getValue()) || !getVendor().equals(metric.getVendor()) || hasExt() != metric.hasExt()) {
                    return false;
                }
                if ((!hasExt() || getExt().equals(metric.getExt())) && getExtProtoList().equals(metric.getExtProtoList()) && this.unknownFields.equals(metric.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public Struct getExt() {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public x1 getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public Any getExtProto(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Metric> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if (!getTypeBytes().isEmpty()) {
                    i10 = GeneratedMessageV3.computeStringSize(1, this.type_);
                } else {
                    i10 = 0;
                }
                float f10 = this.value_;
                if (f10 != 0.0f) {
                    i10 += CodedOutputStream.r(2, f10);
                }
                if (!getVendorBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(3, this.vendor_);
                }
                for (int i12 = 0; i12 < this.extProto_.size(); i12++) {
                    i10 += CodedOutputStream.G(4, this.extProto_.get(i12));
                }
                if (this.ext_ != null) {
                    i10 += CodedOutputStream.G(5, getExt());
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public String getType() {
                Object obj = this.type_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.type_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public ByteString getTypeBytes() {
                Object obj = this.type_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.type_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public float getValue() {
                return this.value_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public String getVendor() {
                Object obj = this.vendor_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.vendor_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public ByteString getVendorBytes() {
                Object obj = this.vendor_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.vendor_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public boolean hasExt() {
                if (this.ext_ != null) {
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
                int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getType().hashCode()) * 37) + 2) * 53) + Float.floatToIntBits(getValue())) * 37) + 3) * 53) + getVendor().hashCode();
                if (hasExt()) {
                    hashCode = (((hashCode * 37) + 5) * 53) + getExt().hashCode();
                }
                if (getExtProtoCount() > 0) {
                    hashCode = (((hashCode * 37) + 4) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14559j.d(Metric.class, Builder.class);
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
                return new Metric();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getTypeBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
                }
                float f10 = this.value_;
                if (f10 != 0.0f) {
                    codedOutputStream.B0(2, f10);
                }
                if (!getVendorBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.vendor_);
                }
                for (int i10 = 0; i10 < this.extProto_.size(); i10++) {
                    codedOutputStream.L0(4, this.extProto_.get(i10));
                }
                if (this.ext_ != null) {
                    codedOutputStream.L0(5, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements MetricOrBuilder {
                private int bitField0_;
                private t1<Struct, Struct.Builder, x1> extBuilder_;
                private p1<Any, Any.Builder, e> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object type_;
                private float value_;
                private Object vendor_;

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 1;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.f14558i;
                }

                private t1<Struct, Struct.Builder, x1> getExtFieldBuilder() {
                    if (this.extBuilder_ == null) {
                        this.extBuilder_ = new t1<>(getExt(), getParentForChildren(), isClean());
                        this.ext_ = null;
                    }
                    return this.extBuilder_;
                }

                private p1<Any, Any.Builder, e> getExtProtoFieldBuilder() {
                    if (this.extProtoBuilder_ == null) {
                        List<Any> list = this.extProto_;
                        boolean z10 = true;
                        if ((this.bitField0_ & 1) == 0) {
                            z10 = false;
                        }
                        this.extProtoBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                        this.extProto_ = null;
                    }
                    return this.extProtoBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        getExtProtoFieldBuilder();
                    }
                }

                public Builder addAllExtProto(Iterable<? extends Any> iterable) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        ensureExtProtoIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.extProto_);
                        onChanged();
                    } else {
                        p1Var.a(iterable);
                    }
                    return this;
                }

                public Builder addExtProto(Any any) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        any.getClass();
                        ensureExtProtoIsMutable();
                        this.extProto_.add(any);
                        onChanged();
                    } else {
                        p1Var.e(any);
                    }
                    return this;
                }

                public Any.Builder addExtProtoBuilder() {
                    return getExtProtoFieldBuilder().c(Any.getDefaultInstance());
                }

                public Builder clearExt() {
                    if (this.extBuilder_ == null) {
                        this.ext_ = null;
                        onChanged();
                    } else {
                        this.ext_ = null;
                        this.extBuilder_ = null;
                    }
                    return this;
                }

                public Builder clearExtProto() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        this.extProto_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder clearType() {
                    this.type_ = Metric.getDefaultInstance().getType();
                    onChanged();
                    return this;
                }

                public Builder clearValue() {
                    this.value_ = 0.0f;
                    onChanged();
                    return this;
                }

                public Builder clearVendor() {
                    this.vendor_ = Metric.getDefaultInstance().getVendor();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.f14558i;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public Struct getExt() {
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        Struct struct = this.ext_;
                        if (struct == null) {
                            return Struct.getDefaultInstance();
                        }
                        return struct;
                    }
                    return t1Var.e();
                }

                public Struct.Builder getExtBuilder() {
                    onChanged();
                    return getExtFieldBuilder().d();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public x1 getExtOrBuilder() {
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    Struct struct = this.ext_;
                    if (struct == null) {
                        return Struct.getDefaultInstance();
                    }
                    return struct;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public Any getExtProto(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.get(i10);
                    }
                    return p1Var.n(i10);
                }

                public Any.Builder getExtProtoBuilder(int i10) {
                    return getExtProtoFieldBuilder().k(i10);
                }

                public List<Any.Builder> getExtProtoBuilderList() {
                    return getExtProtoFieldBuilder().l();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public int getExtProtoCount() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.size();
                    }
                    return p1Var.m();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public List<Any> getExtProtoList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.extProto_);
                    }
                    return p1Var.p();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public e getExtProtoOrBuilder(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public List<? extends e> getExtProtoOrBuilderList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public String getType() {
                    Object obj = this.type_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.type_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public ByteString getTypeBytes() {
                    Object obj = this.type_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.type_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public float getValue() {
                    return this.value_;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public String getVendor() {
                    Object obj = this.vendor_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.vendor_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public ByteString getVendorBytes() {
                    Object obj = this.vendor_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.vendor_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public boolean hasExt() {
                    if (this.extBuilder_ == null && this.ext_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.f14559j.d(Metric.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder mergeExt(Struct struct) {
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        Struct struct2 = this.ext_;
                        if (struct2 != null) {
                            this.ext_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                        } else {
                            this.ext_ = struct;
                        }
                        onChanged();
                    } else {
                        t1Var.g(struct);
                    }
                    return this;
                }

                public Builder removeExtProto(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.remove(i10);
                        onChanged();
                    } else {
                        p1Var.v(i10);
                    }
                    return this;
                }

                public Builder setExt(Struct struct) {
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        struct.getClass();
                        this.ext_ = struct;
                        onChanged();
                    } else {
                        t1Var.i(struct);
                    }
                    return this;
                }

                public Builder setExtProto(int i10, Any any) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        any.getClass();
                        ensureExtProtoIsMutable();
                        this.extProto_.set(i10, any);
                        onChanged();
                    } else {
                        p1Var.w(i10, any);
                    }
                    return this;
                }

                public Builder setType(String str) {
                    str.getClass();
                    this.type_ = str;
                    onChanged();
                    return this;
                }

                public Builder setTypeBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.type_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setValue(float f10) {
                    this.value_ = f10;
                    onChanged();
                    return this;
                }

                public Builder setVendor(String str) {
                    str.getClass();
                    this.vendor_ = str;
                    onChanged();
                    return this;
                }

                public Builder setVendorBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.vendor_ = byteString;
                    onChanged();
                    return this;
                }

                private Builder() {
                    this.type_ = "";
                    this.vendor_ = "";
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Metric build() {
                    Metric buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Metric buildPartial() {
                    Metric metric = new Metric(this);
                    metric.type_ = this.type_;
                    metric.value_ = this.value_;
                    metric.vendor_ = this.vendor_;
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        metric.ext_ = this.ext_;
                    } else {
                        metric.ext_ = t1Var.a();
                    }
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        metric.extProto_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 1) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -2;
                        }
                        metric.extProto_ = this.extProto_;
                    }
                    onBuilt();
                    return metric;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Metric mo4630getDefaultInstanceForType() {
                    return Metric.getDefaultInstance();
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

                public Any.Builder addExtProtoBuilder(int i10) {
                    return getExtProtoFieldBuilder().b(i10, Any.getDefaultInstance());
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
                    this.type_ = "";
                    this.value_ = 0.0f;
                    this.vendor_ = "";
                    if (this.extBuilder_ == null) {
                        this.ext_ = null;
                    } else {
                        this.ext_ = null;
                        this.extBuilder_ = null;
                    }
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        this.extProto_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder setExt(Struct.Builder builder) {
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        this.ext_ = builder.build();
                        onChanged();
                    } else {
                        t1Var.i(builder.build());
                    }
                    return this;
                }

                public Builder addExtProto(int i10, Any any) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        any.getClass();
                        ensureExtProtoIsMutable();
                        this.extProto_.add(i10, any);
                        onChanged();
                    } else {
                        p1Var.d(i10, any);
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
                    if (message instanceof Metric) {
                        return mergeFrom((Metric) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder setExtProto(int i10, Any.Builder builder) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.set(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.w(i10, builder.build());
                    }
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.type_ = "";
                    this.vendor_ = "";
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                public Builder mergeFrom(Metric metric) {
                    if (metric == Metric.getDefaultInstance()) {
                        return this;
                    }
                    if (!metric.getType().isEmpty()) {
                        this.type_ = metric.type_;
                        onChanged();
                    }
                    if (metric.getValue() != 0.0f) {
                        setValue(metric.getValue());
                    }
                    if (!metric.getVendor().isEmpty()) {
                        this.vendor_ = metric.vendor_;
                        onChanged();
                    }
                    if (metric.hasExt()) {
                        mergeExt(metric.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!metric.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = metric.extProto_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(metric.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!metric.extProto_.isEmpty()) {
                        if (!this.extProtoBuilder_.t()) {
                            this.extProtoBuilder_.a(metric.extProto_);
                        } else {
                            this.extProtoBuilder_.h();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = metric.extProto_;
                            this.bitField0_ &= -2;
                            this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) metric).unknownFields);
                    onChanged();
                    return this;
                }

                public Builder addExtProto(Any.Builder builder) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.add(builder.build());
                        onChanged();
                    } else {
                        p1Var.e(builder.build());
                    }
                    return this;
                }

                public Builder addExtProto(int i10, Any.Builder builder) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.add(i10, builder.build());
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
                public com.explorestack.protobuf.openrtb.Request.Item.Metric.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.openrtb.Request.Item.Metric.access$3200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.openrtb.Request$Item$Metric r3 = (com.explorestack.protobuf.openrtb.Request.Item.Metric) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.openrtb.Request$Item$Metric r4 = (com.explorestack.protobuf.openrtb.Request.Item.Metric) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Request.Item.Metric.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.openrtb.Request$Item$Metric$Builder");
                }
            }

            public static Builder newBuilder(Metric metric) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(metric);
            }

            public static Metric parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private Metric(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Metric parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Metric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Metric parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Metric mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Metric parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private Metric() {
                this.memoizedIsInitialized = (byte) -1;
                this.type_ = "";
                this.vendor_ = "";
                this.extProto_ = Collections.emptyList();
            }

            public static Metric parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Metric parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Metric parseFrom(InputStream inputStream) throws IOException {
                return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Metric parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Metric(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                        this.type_ = nVar.J();
                                    } else if (K == 21) {
                                        this.value_ = nVar.w();
                                    } else if (K == 26) {
                                        this.vendor_ = nVar.J();
                                    } else if (K == 34) {
                                        if (!z11) {
                                            this.extProto_ = new ArrayList();
                                            z11 = true;
                                        }
                                        this.extProto_.add(nVar.A(Any.parser(), yVar));
                                    } else if (K != 42) {
                                        if (!parseUnknownField(nVar, g10, yVar, K)) {
                                        }
                                    } else {
                                        Struct struct = this.ext_;
                                        Struct.Builder builder = struct != null ? struct.toBuilder() : null;
                                        Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                        this.ext_ = struct2;
                                        if (builder != null) {
                                            builder.mergeFrom(struct2);
                                            this.ext_ = builder.buildPartial();
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
                        if (z11) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if (z11) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static Metric parseFrom(n nVar) throws IOException {
                return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static Metric parseFrom(n nVar, y yVar) throws IOException {
                return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes3.dex */
        public interface MetricOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            Struct getExt();

            x1 getExtOrBuilder();

            Any getExtProto(int i10);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            e getExtProtoOrBuilder(int i10);

            List<? extends e> getExtProtoOrBuilderList();

            String getType();

            ByteString getTypeBytes();

            float getValue();

            String getVendor();

            ByteString getVendorBytes();

            boolean hasExt();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public static Item getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.f14556g;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Item parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Item) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Item parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Item> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Item)) {
                return super.equals(obj);
            }
            Item item = (Item) obj;
            if (!getId().equals(item.getId()) || getQty() != item.getQty() || getSeq() != item.getSeq() || Double.doubleToLongBits(getFlr()) != Double.doubleToLongBits(item.getFlr()) || !getFlrcur().equals(item.getFlrcur()) || getExp() != item.getExp() || !getDt().equals(item.getDt()) || getDlvy() != item.getDlvy() || !getMetricList().equals(item.getMetricList()) || !getDealList().equals(item.getDealList()) || getPrivate() != item.getPrivate() || hasSpec() != item.hasSpec()) {
                return false;
            }
            if ((hasSpec() && !getSpec().equals(item.getSpec())) || hasExt() != item.hasExt()) {
                return false;
            }
            if ((!hasExt() || getExt().equals(item.getExt())) && getExtProtoList().equals(item.getExtProtoList()) && this.unknownFields.equals(item.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public Deal getDeal(int i10) {
            return this.deal_.get(i10);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public int getDealCount() {
            return this.deal_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public List<Deal> getDealList() {
            return this.deal_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public DealOrBuilder getDealOrBuilder(int i10) {
            return this.deal_.get(i10);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public List<? extends DealOrBuilder> getDealOrBuilderList() {
            return this.deal_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public int getDlvy() {
            return this.dlvy_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public String getDt() {
            Object obj = this.dt_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.dt_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public ByteString getDtBytes() {
            Object obj = this.dt_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.dt_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public int getExp() {
            return this.exp_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public Struct getExt() {
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public x1 getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public Any getExtProto(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public e getExtProtoOrBuilder(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public List<? extends e> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public double getFlr() {
            return this.flr_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public String getFlrcur() {
            Object obj = this.flrcur_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.flrcur_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public ByteString getFlrcurBytes() {
            Object obj = this.flrcur_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.flrcur_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public ByteString getIdBytes() {
            Object obj = this.id_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public Metric getMetric(int i10) {
            return this.metric_.get(i10);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public int getMetricCount() {
            return this.metric_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public List<Metric> getMetricList() {
            return this.metric_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public MetricOrBuilder getMetricOrBuilder(int i10) {
            return this.metric_.get(i10);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public List<? extends MetricOrBuilder> getMetricOrBuilderList() {
            return this.metric_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Item> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public boolean getPrivate() {
            return this.private_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public int getQty() {
            return this.qty_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public int getSeq() {
            return this.seq_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (!getIdBytes().isEmpty()) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.id_);
            } else {
                i10 = 0;
            }
            int i12 = this.qty_;
            if (i12 != 0) {
                i10 += CodedOutputStream.Y(2, i12);
            }
            int i13 = this.seq_;
            if (i13 != 0) {
                i10 += CodedOutputStream.Y(3, i13);
            }
            double d10 = this.flr_;
            if (d10 != 0.0d) {
                i10 += CodedOutputStream.j(4, d10);
            }
            if (!getFlrcurBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(6, this.flrcur_);
            }
            int i14 = this.exp_;
            if (i14 != 0) {
                i10 += CodedOutputStream.Y(7, i14);
            }
            if (!getDtBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(8, this.dt_);
            }
            int i15 = this.dlvy_;
            if (i15 != 0) {
                i10 += CodedOutputStream.Y(9, i15);
            }
            for (int i16 = 0; i16 < this.metric_.size(); i16++) {
                i10 += CodedOutputStream.G(10, this.metric_.get(i16));
            }
            for (int i17 = 0; i17 < this.deal_.size(); i17++) {
                i10 += CodedOutputStream.G(11, this.deal_.get(i17));
            }
            boolean z10 = this.private_;
            if (z10) {
                i10 += CodedOutputStream.e(12, z10);
            }
            if (this.spec_ != null) {
                i10 += CodedOutputStream.G(13, getSpec());
            }
            for (int i18 = 0; i18 < this.extProto_.size(); i18++) {
                i10 += CodedOutputStream.G(14, this.extProto_.get(i18));
            }
            if (this.ext_ != null) {
                i10 += CodedOutputStream.G(15, getExt());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public Any getSpec() {
            Any any = this.spec_;
            if (any == null) {
                return Any.getDefaultInstance();
            }
            return any;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public e getSpecOrBuilder() {
            return getSpec();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public boolean hasExt() {
            if (this.ext_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public boolean hasSpec() {
            if (this.spec_ != null) {
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
            int hashCode = ((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getQty()) * 37) + 3) * 53) + getSeq()) * 37) + 4) * 53) + i0.i(Double.doubleToLongBits(getFlr()))) * 37) + 6) * 53) + getFlrcur().hashCode()) * 37) + 7) * 53) + getExp()) * 37) + 8) * 53) + getDt().hashCode()) * 37) + 9) * 53) + getDlvy();
            if (getMetricCount() > 0) {
                hashCode = (((hashCode * 37) + 10) * 53) + getMetricList().hashCode();
            }
            if (getDealCount() > 0) {
                hashCode = (((hashCode * 37) + 11) * 53) + getDealList().hashCode();
            }
            int d10 = (((hashCode * 37) + 12) * 53) + i0.d(getPrivate());
            if (hasSpec()) {
                d10 = (((d10 * 37) + 13) * 53) + getSpec().hashCode();
            }
            if (hasExt()) {
                d10 = (((d10 * 37) + 15) * 53) + getExt().hashCode();
            }
            if (getExtProtoCount() > 0) {
                d10 = (((d10 * 37) + 14) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.f14557h.d(Item.class, Builder.class);
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
            return new Item();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
            }
            int i10 = this.qty_;
            if (i10 != 0) {
                codedOutputStream.c1(2, i10);
            }
            int i11 = this.seq_;
            if (i11 != 0) {
                codedOutputStream.c1(3, i11);
            }
            double d10 = this.flr_;
            if (d10 != 0.0d) {
                codedOutputStream.t0(4, d10);
            }
            if (!getFlrcurBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.flrcur_);
            }
            int i12 = this.exp_;
            if (i12 != 0) {
                codedOutputStream.c1(7, i12);
            }
            if (!getDtBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.dt_);
            }
            int i13 = this.dlvy_;
            if (i13 != 0) {
                codedOutputStream.c1(9, i13);
            }
            for (int i14 = 0; i14 < this.metric_.size(); i14++) {
                codedOutputStream.L0(10, this.metric_.get(i14));
            }
            for (int i15 = 0; i15 < this.deal_.size(); i15++) {
                codedOutputStream.L0(11, this.deal_.get(i15));
            }
            boolean z10 = this.private_;
            if (z10) {
                codedOutputStream.n0(12, z10);
            }
            if (this.spec_ != null) {
                codedOutputStream.L0(13, getSpec());
            }
            for (int i16 = 0; i16 < this.extProto_.size(); i16++) {
                codedOutputStream.L0(14, this.extProto_.get(i16));
            }
            if (this.ext_ != null) {
                codedOutputStream.L0(15, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements ItemOrBuilder {
            private int bitField0_;
            private p1<Deal, Deal.Builder, DealOrBuilder> dealBuilder_;
            private List<Deal> deal_;
            private int dlvy_;
            private Object dt_;
            private int exp_;
            private t1<Struct, Struct.Builder, x1> extBuilder_;
            private p1<Any, Any.Builder, e> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private double flr_;
            private Object flrcur_;
            private Object id_;
            private p1<Metric, Metric.Builder, MetricOrBuilder> metricBuilder_;
            private List<Metric> metric_;
            private boolean private_;
            private int qty_;
            private int seq_;
            private t1<Any, Any.Builder, e> specBuilder_;
            private Any spec_;

            private void ensureDealIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.deal_ = new ArrayList(this.deal_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 4;
                }
            }

            private void ensureMetricIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.metric_ = new ArrayList(this.metric_);
                    this.bitField0_ |= 1;
                }
            }

            private p1<Deal, Deal.Builder, DealOrBuilder> getDealFieldBuilder() {
                boolean z10;
                if (this.dealBuilder_ == null) {
                    List<Deal> list = this.deal_;
                    if ((this.bitField0_ & 2) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.dealBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.deal_ = null;
                }
                return this.dealBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14556g;
            }

            private t1<Struct, Struct.Builder, x1> getExtFieldBuilder() {
                if (this.extBuilder_ == null) {
                    this.extBuilder_ = new t1<>(getExt(), getParentForChildren(), isClean());
                    this.ext_ = null;
                }
                return this.extBuilder_;
            }

            private p1<Any, Any.Builder, e> getExtProtoFieldBuilder() {
                boolean z10;
                if (this.extProtoBuilder_ == null) {
                    List<Any> list = this.extProto_;
                    if ((this.bitField0_ & 4) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.extProtoBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.extProto_ = null;
                }
                return this.extProtoBuilder_;
            }

            private p1<Metric, Metric.Builder, MetricOrBuilder> getMetricFieldBuilder() {
                if (this.metricBuilder_ == null) {
                    List<Metric> list = this.metric_;
                    boolean z10 = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z10 = false;
                    }
                    this.metricBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.metric_ = null;
                }
                return this.metricBuilder_;
            }

            private t1<Any, Any.Builder, e> getSpecFieldBuilder() {
                if (this.specBuilder_ == null) {
                    this.specBuilder_ = new t1<>(getSpec(), getParentForChildren(), isClean());
                    this.spec_ = null;
                }
                return this.specBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getMetricFieldBuilder();
                    getDealFieldBuilder();
                    getExtProtoFieldBuilder();
                }
            }

            public Builder addAllDeal(Iterable<? extends Deal> iterable) {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    ensureDealIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.deal_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addAllExtProto(Iterable<? extends Any> iterable) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    ensureExtProtoIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.extProto_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addAllMetric(Iterable<? extends Metric> iterable) {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    ensureMetricIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.metric_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addDeal(Deal deal) {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    deal.getClass();
                    ensureDealIsMutable();
                    this.deal_.add(deal);
                    onChanged();
                } else {
                    p1Var.e(deal);
                }
                return this;
            }

            public Deal.Builder addDealBuilder() {
                return getDealFieldBuilder().c(Deal.getDefaultInstance());
            }

            public Builder addExtProto(Any any) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    any.getClass();
                    ensureExtProtoIsMutable();
                    this.extProto_.add(any);
                    onChanged();
                } else {
                    p1Var.e(any);
                }
                return this;
            }

            public Any.Builder addExtProtoBuilder() {
                return getExtProtoFieldBuilder().c(Any.getDefaultInstance());
            }

            public Builder addMetric(Metric metric) {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    metric.getClass();
                    ensureMetricIsMutable();
                    this.metric_.add(metric);
                    onChanged();
                } else {
                    p1Var.e(metric);
                }
                return this;
            }

            public Metric.Builder addMetricBuilder() {
                return getMetricFieldBuilder().c(Metric.getDefaultInstance());
            }

            public Builder clearDeal() {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    this.deal_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearDlvy() {
                this.dlvy_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDt() {
                this.dt_ = Item.getDefaultInstance().getDt();
                onChanged();
                return this;
            }

            public Builder clearExp() {
                this.exp_ = 0;
                onChanged();
                return this;
            }

            public Builder clearExt() {
                if (this.extBuilder_ == null) {
                    this.ext_ = null;
                    onChanged();
                } else {
                    this.ext_ = null;
                    this.extBuilder_ = null;
                }
                return this;
            }

            public Builder clearExtProto() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    this.extProto_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearFlr() {
                this.flr_ = 0.0d;
                onChanged();
                return this;
            }

            public Builder clearFlrcur() {
                this.flrcur_ = Item.getDefaultInstance().getFlrcur();
                onChanged();
                return this;
            }

            public Builder clearId() {
                this.id_ = Item.getDefaultInstance().getId();
                onChanged();
                return this;
            }

            public Builder clearMetric() {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    this.metric_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearPrivate() {
                this.private_ = false;
                onChanged();
                return this;
            }

            public Builder clearQty() {
                this.qty_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSeq() {
                this.seq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSpec() {
                if (this.specBuilder_ == null) {
                    this.spec_ = null;
                    onChanged();
                } else {
                    this.spec_ = null;
                    this.specBuilder_ = null;
                }
                return this;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public Deal getDeal(int i10) {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    return this.deal_.get(i10);
                }
                return p1Var.n(i10);
            }

            public Deal.Builder getDealBuilder(int i10) {
                return getDealFieldBuilder().k(i10);
            }

            public List<Deal.Builder> getDealBuilderList() {
                return getDealFieldBuilder().l();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public int getDealCount() {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    return this.deal_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public List<Deal> getDealList() {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.deal_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public DealOrBuilder getDealOrBuilder(int i10) {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    return this.deal_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public List<? extends DealOrBuilder> getDealOrBuilderList() {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.deal_);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return b.f14556g;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public int getDlvy() {
                return this.dlvy_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public String getDt() {
                Object obj = this.dt_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.dt_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public ByteString getDtBytes() {
                Object obj = this.dt_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.dt_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public int getExp() {
                return this.exp_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public Struct getExt() {
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    Struct struct = this.ext_;
                    if (struct == null) {
                        return Struct.getDefaultInstance();
                    }
                    return struct;
                }
                return t1Var.e();
            }

            public Struct.Builder getExtBuilder() {
                onChanged();
                return getExtFieldBuilder().d();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public x1 getExtOrBuilder() {
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public Any getExtProto(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.n(i10);
            }

            public Any.Builder getExtProtoBuilder(int i10) {
                return getExtProtoFieldBuilder().k(i10);
            }

            public List<Any.Builder> getExtProtoBuilderList() {
                return getExtProtoFieldBuilder().l();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public int getExtProtoCount() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public List<Any> getExtProtoList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.extProto_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public double getFlr() {
                return this.flr_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public String getFlrcur() {
                Object obj = this.flrcur_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.flrcur_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public ByteString getFlrcurBytes() {
                Object obj = this.flrcur_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.flrcur_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public String getId() {
                Object obj = this.id_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public Metric getMetric(int i10) {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    return this.metric_.get(i10);
                }
                return p1Var.n(i10);
            }

            public Metric.Builder getMetricBuilder(int i10) {
                return getMetricFieldBuilder().k(i10);
            }

            public List<Metric.Builder> getMetricBuilderList() {
                return getMetricFieldBuilder().l();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public int getMetricCount() {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    return this.metric_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public List<Metric> getMetricList() {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.metric_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public MetricOrBuilder getMetricOrBuilder(int i10) {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    return this.metric_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public List<? extends MetricOrBuilder> getMetricOrBuilderList() {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.metric_);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public boolean getPrivate() {
                return this.private_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public int getQty() {
                return this.qty_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public int getSeq() {
                return this.seq_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public Any getSpec() {
                t1<Any, Any.Builder, e> t1Var = this.specBuilder_;
                if (t1Var == null) {
                    Any any = this.spec_;
                    if (any == null) {
                        return Any.getDefaultInstance();
                    }
                    return any;
                }
                return t1Var.e();
            }

            public Any.Builder getSpecBuilder() {
                onChanged();
                return getSpecFieldBuilder().d();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public e getSpecOrBuilder() {
                t1<Any, Any.Builder, e> t1Var = this.specBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Any any = this.spec_;
                if (any == null) {
                    return Any.getDefaultInstance();
                }
                return any;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public boolean hasExt() {
                if (this.extBuilder_ == null && this.ext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public boolean hasSpec() {
                if (this.specBuilder_ == null && this.spec_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14557h.d(Item.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeExt(Struct struct) {
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    Struct struct2 = this.ext_;
                    if (struct2 != null) {
                        this.ext_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                    } else {
                        this.ext_ = struct;
                    }
                    onChanged();
                } else {
                    t1Var.g(struct);
                }
                return this;
            }

            public Builder mergeSpec(Any any) {
                t1<Any, Any.Builder, e> t1Var = this.specBuilder_;
                if (t1Var == null) {
                    Any any2 = this.spec_;
                    if (any2 != null) {
                        this.spec_ = Any.newBuilder(any2).mergeFrom(any).buildPartial();
                    } else {
                        this.spec_ = any;
                    }
                    onChanged();
                } else {
                    t1Var.g(any);
                }
                return this;
            }

            public Builder removeDeal(int i10) {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    ensureDealIsMutable();
                    this.deal_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
                }
                return this;
            }

            public Builder removeExtProto(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
                }
                return this;
            }

            public Builder removeMetric(int i10) {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    ensureMetricIsMutable();
                    this.metric_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
                }
                return this;
            }

            public Builder setDeal(int i10, Deal deal) {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    deal.getClass();
                    ensureDealIsMutable();
                    this.deal_.set(i10, deal);
                    onChanged();
                } else {
                    p1Var.w(i10, deal);
                }
                return this;
            }

            public Builder setDlvy(int i10) {
                this.dlvy_ = i10;
                onChanged();
                return this;
            }

            public Builder setDt(String str) {
                str.getClass();
                this.dt_ = str;
                onChanged();
                return this;
            }

            public Builder setDtBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.dt_ = byteString;
                onChanged();
                return this;
            }

            public Builder setExp(int i10) {
                this.exp_ = i10;
                onChanged();
                return this;
            }

            public Builder setExt(Struct struct) {
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    struct.getClass();
                    this.ext_ = struct;
                    onChanged();
                } else {
                    t1Var.i(struct);
                }
                return this;
            }

            public Builder setExtProto(int i10, Any any) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    any.getClass();
                    ensureExtProtoIsMutable();
                    this.extProto_.set(i10, any);
                    onChanged();
                } else {
                    p1Var.w(i10, any);
                }
                return this;
            }

            public Builder setFlr(double d10) {
                this.flr_ = d10;
                onChanged();
                return this;
            }

            public Builder setFlrcur(String str) {
                str.getClass();
                this.flrcur_ = str;
                onChanged();
                return this;
            }

            public Builder setFlrcurBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.flrcur_ = byteString;
                onChanged();
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
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.id_ = byteString;
                onChanged();
                return this;
            }

            public Builder setMetric(int i10, Metric metric) {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    metric.getClass();
                    ensureMetricIsMutable();
                    this.metric_.set(i10, metric);
                    onChanged();
                } else {
                    p1Var.w(i10, metric);
                }
                return this;
            }

            public Builder setPrivate(boolean z10) {
                this.private_ = z10;
                onChanged();
                return this;
            }

            public Builder setQty(int i10) {
                this.qty_ = i10;
                onChanged();
                return this;
            }

            public Builder setSeq(int i10) {
                this.seq_ = i10;
                onChanged();
                return this;
            }

            public Builder setSpec(Any any) {
                t1<Any, Any.Builder, e> t1Var = this.specBuilder_;
                if (t1Var == null) {
                    any.getClass();
                    this.spec_ = any;
                    onChanged();
                } else {
                    t1Var.i(any);
                }
                return this;
            }

            private Builder() {
                this.id_ = "";
                this.flrcur_ = "";
                this.dt_ = "";
                this.metric_ = Collections.emptyList();
                this.deal_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Item build() {
                Item buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Item buildPartial() {
                Item item = new Item(this);
                item.id_ = this.id_;
                item.qty_ = this.qty_;
                item.seq_ = this.seq_;
                item.flr_ = this.flr_;
                item.flrcur_ = this.flrcur_;
                item.exp_ = this.exp_;
                item.dt_ = this.dt_;
                item.dlvy_ = this.dlvy_;
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var != null) {
                    item.metric_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.metric_ = Collections.unmodifiableList(this.metric_);
                        this.bitField0_ &= -2;
                    }
                    item.metric_ = this.metric_;
                }
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var2 = this.dealBuilder_;
                if (p1Var2 != null) {
                    item.deal_ = p1Var2.f();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.deal_ = Collections.unmodifiableList(this.deal_);
                        this.bitField0_ &= -3;
                    }
                    item.deal_ = this.deal_;
                }
                item.private_ = this.private_;
                t1<Any, Any.Builder, e> t1Var = this.specBuilder_;
                if (t1Var == null) {
                    item.spec_ = this.spec_;
                } else {
                    item.spec_ = t1Var.a();
                }
                t1<Struct, Struct.Builder, x1> t1Var2 = this.extBuilder_;
                if (t1Var2 == null) {
                    item.ext_ = this.ext_;
                } else {
                    item.ext_ = t1Var2.a();
                }
                p1<Any, Any.Builder, e> p1Var3 = this.extProtoBuilder_;
                if (p1Var3 != null) {
                    item.extProto_ = p1Var3.f();
                } else {
                    if ((this.bitField0_ & 4) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -5;
                    }
                    item.extProto_ = this.extProto_;
                }
                onBuilt();
                return item;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Item mo4630getDefaultInstanceForType() {
                return Item.getDefaultInstance();
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

            public Deal.Builder addDealBuilder(int i10) {
                return getDealFieldBuilder().b(i10, Deal.getDefaultInstance());
            }

            public Any.Builder addExtProtoBuilder(int i10) {
                return getExtProtoFieldBuilder().b(i10, Any.getDefaultInstance());
            }

            public Metric.Builder addMetricBuilder(int i10) {
                return getMetricFieldBuilder().b(i10, Metric.getDefaultInstance());
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
                this.id_ = "";
                this.qty_ = 0;
                this.seq_ = 0;
                this.flr_ = 0.0d;
                this.flrcur_ = "";
                this.exp_ = 0;
                this.dt_ = "";
                this.dlvy_ = 0;
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    this.metric_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    p1Var.g();
                }
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var2 = this.dealBuilder_;
                if (p1Var2 == null) {
                    this.deal_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    p1Var2.g();
                }
                this.private_ = false;
                if (this.specBuilder_ == null) {
                    this.spec_ = null;
                } else {
                    this.spec_ = null;
                    this.specBuilder_ = null;
                }
                if (this.extBuilder_ == null) {
                    this.ext_ = null;
                } else {
                    this.ext_ = null;
                    this.extBuilder_ = null;
                }
                p1<Any, Any.Builder, e> p1Var3 = this.extProtoBuilder_;
                if (p1Var3 == null) {
                    this.extProto_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                } else {
                    p1Var3.g();
                }
                return this;
            }

            public Builder setExt(Struct.Builder builder) {
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    this.ext_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder setSpec(Any.Builder builder) {
                t1<Any, Any.Builder, e> t1Var = this.specBuilder_;
                if (t1Var == null) {
                    this.spec_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder addDeal(int i10, Deal deal) {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    deal.getClass();
                    ensureDealIsMutable();
                    this.deal_.add(i10, deal);
                    onChanged();
                } else {
                    p1Var.d(i10, deal);
                }
                return this;
            }

            public Builder addExtProto(int i10, Any any) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    any.getClass();
                    ensureExtProtoIsMutable();
                    this.extProto_.add(i10, any);
                    onChanged();
                } else {
                    p1Var.d(i10, any);
                }
                return this;
            }

            public Builder addMetric(int i10, Metric metric) {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    metric.getClass();
                    ensureMetricIsMutable();
                    this.metric_.add(i10, metric);
                    onChanged();
                } else {
                    p1Var.d(i10, metric);
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
                if (message instanceof Item) {
                    return mergeFrom((Item) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setDeal(int i10, Deal.Builder builder) {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    ensureDealIsMutable();
                    this.deal_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder setExtProto(int i10, Any.Builder builder) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder setMetric(int i10, Metric.Builder builder) {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    ensureMetricIsMutable();
                    this.metric_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(Item item) {
                if (item == Item.getDefaultInstance()) {
                    return this;
                }
                if (!item.getId().isEmpty()) {
                    this.id_ = item.id_;
                    onChanged();
                }
                if (item.getQty() != 0) {
                    setQty(item.getQty());
                }
                if (item.getSeq() != 0) {
                    setSeq(item.getSeq());
                }
                if (item.getFlr() != 0.0d) {
                    setFlr(item.getFlr());
                }
                if (!item.getFlrcur().isEmpty()) {
                    this.flrcur_ = item.flrcur_;
                    onChanged();
                }
                if (item.getExp() != 0) {
                    setExp(item.getExp());
                }
                if (!item.getDt().isEmpty()) {
                    this.dt_ = item.dt_;
                    onChanged();
                }
                if (item.getDlvy() != 0) {
                    setDlvy(item.getDlvy());
                }
                if (this.metricBuilder_ == null) {
                    if (!item.metric_.isEmpty()) {
                        if (this.metric_.isEmpty()) {
                            this.metric_ = item.metric_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureMetricIsMutable();
                            this.metric_.addAll(item.metric_);
                        }
                        onChanged();
                    }
                } else if (!item.metric_.isEmpty()) {
                    if (!this.metricBuilder_.t()) {
                        this.metricBuilder_.a(item.metric_);
                    } else {
                        this.metricBuilder_.h();
                        this.metricBuilder_ = null;
                        this.metric_ = item.metric_;
                        this.bitField0_ &= -2;
                        this.metricBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getMetricFieldBuilder() : null;
                    }
                }
                if (this.dealBuilder_ == null) {
                    if (!item.deal_.isEmpty()) {
                        if (this.deal_.isEmpty()) {
                            this.deal_ = item.deal_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureDealIsMutable();
                            this.deal_.addAll(item.deal_);
                        }
                        onChanged();
                    }
                } else if (!item.deal_.isEmpty()) {
                    if (!this.dealBuilder_.t()) {
                        this.dealBuilder_.a(item.deal_);
                    } else {
                        this.dealBuilder_.h();
                        this.dealBuilder_ = null;
                        this.deal_ = item.deal_;
                        this.bitField0_ &= -3;
                        this.dealBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDealFieldBuilder() : null;
                    }
                }
                if (item.getPrivate()) {
                    setPrivate(item.getPrivate());
                }
                if (item.hasSpec()) {
                    mergeSpec(item.getSpec());
                }
                if (item.hasExt()) {
                    mergeExt(item.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!item.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = item.extProto_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(item.extProto_);
                        }
                        onChanged();
                    }
                } else if (!item.extProto_.isEmpty()) {
                    if (!this.extProtoBuilder_.t()) {
                        this.extProtoBuilder_.a(item.extProto_);
                    } else {
                        this.extProtoBuilder_.h();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = item.extProto_;
                        this.bitField0_ &= -5;
                        this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) item).unknownFields);
                onChanged();
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.id_ = "";
                this.flrcur_ = "";
                this.dt_ = "";
                this.metric_ = Collections.emptyList();
                this.deal_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addDeal(Deal.Builder builder) {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    ensureDealIsMutable();
                    this.deal_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addExtProto(Any.Builder builder) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addMetric(Metric.Builder builder) {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    ensureMetricIsMutable();
                    this.metric_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addDeal(int i10, Deal.Builder builder) {
                p1<Deal, Deal.Builder, DealOrBuilder> p1Var = this.dealBuilder_;
                if (p1Var == null) {
                    ensureDealIsMutable();
                    this.deal_.add(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.d(i10, builder.build());
                }
                return this;
            }

            public Builder addExtProto(int i10, Any.Builder builder) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.add(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.d(i10, builder.build());
                }
                return this;
            }

            public Builder addMetric(int i10, Metric.Builder builder) {
                p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricBuilder_;
                if (p1Var == null) {
                    ensureMetricIsMutable();
                    this.metric_.add(i10, builder.build());
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
            public com.explorestack.protobuf.openrtb.Request.Item.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.openrtb.Request.Item.access$7800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.explorestack.protobuf.openrtb.Request$Item r3 = (com.explorestack.protobuf.openrtb.Request.Item) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.explorestack.protobuf.openrtb.Request$Item r4 = (com.explorestack.protobuf.openrtb.Request.Item) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Request.Item.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.openrtb.Request$Item$Builder");
            }
        }

        public static Builder newBuilder(Item item) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(item);
        }

        public static Item parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Item(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Item parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Item) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Item parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Item mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Item parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Item() {
            this.memoizedIsInitialized = (byte) -1;
            this.id_ = "";
            this.flrcur_ = "";
            this.dt_ = "";
            this.metric_ = Collections.emptyList();
            this.deal_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        public static Item parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static Item parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Item parseFrom(InputStream inputStream) throws IOException {
            return (Item) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Item parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Item) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Item parseFrom(n nVar) throws IOException {
            return (Item) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Item(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            case 10:
                                this.id_ = nVar.J();
                                continue;
                            case 16:
                                this.qty_ = nVar.L();
                                continue;
                            case 24:
                                this.seq_ = nVar.L();
                                continue;
                            case 33:
                                this.flr_ = nVar.s();
                                continue;
                            case 50:
                                this.flrcur_ = nVar.J();
                                continue;
                            case 56:
                                this.exp_ = nVar.L();
                                continue;
                            case 66:
                                this.dt_ = nVar.J();
                                continue;
                            case 72:
                                this.dlvy_ = nVar.L();
                                continue;
                            case 82:
                                boolean z12 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z12) {
                                    this.metric_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.metric_.add(nVar.A(Metric.parser(), yVar));
                                continue;
                            case 90:
                                boolean z13 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z13) {
                                    this.deal_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.deal_.add(nVar.A(Deal.parser(), yVar));
                                continue;
                            case 96:
                                this.private_ = nVar.q();
                                continue;
                            case 106:
                                Any any = this.spec_;
                                Any.Builder builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) nVar.A(Any.parser(), yVar);
                                this.spec_ = any2;
                                if (builder != null) {
                                    builder.mergeFrom(any2);
                                    this.spec_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 114:
                                boolean z14 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z14) {
                                    this.extProto_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.extProto_.add(nVar.A(Any.parser(), yVar));
                                continue;
                            case 122:
                                Struct struct = this.ext_;
                                Struct.Builder builder2 = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                this.ext_ = struct2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(struct2);
                                    this.ext_ = builder2.buildPartial();
                                } else {
                                    continue;
                                }
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
                    if ((z11 ? 1 : 0) & true) {
                        this.metric_ = Collections.unmodifiableList(this.metric_);
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.deal_ = Collections.unmodifiableList(this.deal_);
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if ((z11 ? 1 : 0) & true) {
                this.metric_ = Collections.unmodifiableList(this.metric_);
            }
            if ((z11 ? 1 : 0) & true) {
                this.deal_ = Collections.unmodifiableList(this.deal_);
            }
            if ((z11 ? 1 : 0) & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static Item parseFrom(n nVar, y yVar) throws IOException {
            return (Item) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes3.dex */
    public interface ItemOrBuilder extends MessageOrBuilder {
        Item.Deal getDeal(int i10);

        int getDealCount();

        List<Item.Deal> getDealList();

        Item.DealOrBuilder getDealOrBuilder(int i10);

        List<? extends Item.DealOrBuilder> getDealOrBuilderList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        int getDlvy();

        String getDt();

        ByteString getDtBytes();

        int getExp();

        Struct getExt();

        x1 getExtOrBuilder();

        Any getExtProto(int i10);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        e getExtProtoOrBuilder(int i10);

        List<? extends e> getExtProtoOrBuilderList();

        double getFlr();

        String getFlrcur();

        ByteString getFlrcurBytes();

        String getId();

        ByteString getIdBytes();

        Item.Metric getMetric(int i10);

        int getMetricCount();

        List<Item.Metric> getMetricList();

        Item.MetricOrBuilder getMetricOrBuilder(int i10);

        List<? extends Item.MetricOrBuilder> getMetricOrBuilderList();

        boolean getPrivate();

        int getQty();

        int getSeq();

        Any getSpec();

        e getSpecOrBuilder();

        boolean hasExt();

        boolean hasSpec();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes3.dex */
    public static final class Source extends GeneratedMessageV3 implements SourceOrBuilder {
        public static final int CERT_FIELD_NUMBER = 5;
        public static final int DIGEST_FIELD_NUMBER = 4;
        public static final int DSGVER_FIELD_NUMBER = 3;
        public static final int DS_FIELD_NUMBER = 2;
        public static final int EXT_FIELD_NUMBER = 8;
        public static final int EXT_PROTO_FIELD_NUMBER = 7;
        public static final int PCHAIN_FIELD_NUMBER = 6;
        public static final int TID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object cert_;
        private volatile Object digest_;
        private volatile Object ds_;
        private int dsgver_;
        private List<Any> extProto_;
        private Struct ext_;
        private byte memoizedIsInitialized;
        private volatile Object pchain_;
        private volatile Object tid_;
        private static final Source DEFAULT_INSTANCE = new Source();
        private static final j1<Source> PARSER = new com.explorestack.protobuf.b<Source>() { // from class: com.explorestack.protobuf.openrtb.Request.Source.1
            @Override // com.explorestack.protobuf.j1
            public Source parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Source(nVar, yVar);
            }
        };

        public static Source getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.f14554e;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Source parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Source) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Source parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Source> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Source)) {
                return super.equals(obj);
            }
            Source source = (Source) obj;
            if (!getTid().equals(source.getTid()) || !getDs().equals(source.getDs()) || getDsgver() != source.getDsgver() || !getDigest().equals(source.getDigest()) || !getCert().equals(source.getCert()) || !getPchain().equals(source.getPchain()) || hasExt() != source.hasExt()) {
                return false;
            }
            if ((!hasExt() || getExt().equals(source.getExt())) && getExtProtoList().equals(source.getExtProtoList()) && this.unknownFields.equals(source.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public String getCert() {
            Object obj = this.cert_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cert_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public ByteString getCertBytes() {
            Object obj = this.cert_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cert_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public String getDigest() {
            Object obj = this.digest_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.digest_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public ByteString getDigestBytes() {
            Object obj = this.digest_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.digest_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public String getDs() {
            Object obj = this.ds_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ds_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public ByteString getDsBytes() {
            Object obj = this.ds_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ds_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public int getDsgver() {
            return this.dsgver_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public Struct getExt() {
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public x1 getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public Any getExtProto(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public e getExtProtoOrBuilder(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public List<? extends e> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Source> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public String getPchain() {
            Object obj = this.pchain_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pchain_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public ByteString getPchainBytes() {
            Object obj = this.pchain_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.pchain_ = copyFromUtf8;
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
            if (!getTidBytes().isEmpty()) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.tid_);
            } else {
                i10 = 0;
            }
            if (!getDsBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(2, this.ds_);
            }
            int i12 = this.dsgver_;
            if (i12 != 0) {
                i10 += CodedOutputStream.Y(3, i12);
            }
            if (!getDigestBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(4, this.digest_);
            }
            if (!getCertBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(5, this.cert_);
            }
            if (!getPchainBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(6, this.pchain_);
            }
            for (int i13 = 0; i13 < this.extProto_.size(); i13++) {
                i10 += CodedOutputStream.G(7, this.extProto_.get(i13));
            }
            if (this.ext_ != null) {
                i10 += CodedOutputStream.G(8, getExt());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public String getTid() {
            Object obj = this.tid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.tid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public ByteString getTidBytes() {
            Object obj = this.tid_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tid_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public boolean hasExt() {
            if (this.ext_ != null) {
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
            int hashCode = ((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTid().hashCode()) * 37) + 2) * 53) + getDs().hashCode()) * 37) + 3) * 53) + getDsgver()) * 37) + 4) * 53) + getDigest().hashCode()) * 37) + 5) * 53) + getCert().hashCode()) * 37) + 6) * 53) + getPchain().hashCode();
            if (hasExt()) {
                hashCode = (((hashCode * 37) + 8) * 53) + getExt().hashCode();
            }
            if (getExtProtoCount() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.f14555f.d(Source.class, Builder.class);
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
            return new Source();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getTidBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.tid_);
            }
            if (!getDsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.ds_);
            }
            int i10 = this.dsgver_;
            if (i10 != 0) {
                codedOutputStream.c1(3, i10);
            }
            if (!getDigestBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.digest_);
            }
            if (!getCertBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.cert_);
            }
            if (!getPchainBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.pchain_);
            }
            for (int i11 = 0; i11 < this.extProto_.size(); i11++) {
                codedOutputStream.L0(7, this.extProto_.get(i11));
            }
            if (this.ext_ != null) {
                codedOutputStream.L0(8, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements SourceOrBuilder {
            private int bitField0_;
            private Object cert_;
            private Object digest_;
            private Object ds_;
            private int dsgver_;
            private t1<Struct, Struct.Builder, x1> extBuilder_;
            private p1<Any, Any.Builder, e> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private Object pchain_;
            private Object tid_;

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14554e;
            }

            private t1<Struct, Struct.Builder, x1> getExtFieldBuilder() {
                if (this.extBuilder_ == null) {
                    this.extBuilder_ = new t1<>(getExt(), getParentForChildren(), isClean());
                    this.ext_ = null;
                }
                return this.extBuilder_;
            }

            private p1<Any, Any.Builder, e> getExtProtoFieldBuilder() {
                if (this.extProtoBuilder_ == null) {
                    List<Any> list = this.extProto_;
                    boolean z10 = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z10 = false;
                    }
                    this.extProtoBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.extProto_ = null;
                }
                return this.extProtoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getExtProtoFieldBuilder();
                }
            }

            public Builder addAllExtProto(Iterable<? extends Any> iterable) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    ensureExtProtoIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.extProto_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addExtProto(Any any) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    any.getClass();
                    ensureExtProtoIsMutable();
                    this.extProto_.add(any);
                    onChanged();
                } else {
                    p1Var.e(any);
                }
                return this;
            }

            public Any.Builder addExtProtoBuilder() {
                return getExtProtoFieldBuilder().c(Any.getDefaultInstance());
            }

            public Builder clearCert() {
                this.cert_ = Source.getDefaultInstance().getCert();
                onChanged();
                return this;
            }

            public Builder clearDigest() {
                this.digest_ = Source.getDefaultInstance().getDigest();
                onChanged();
                return this;
            }

            public Builder clearDs() {
                this.ds_ = Source.getDefaultInstance().getDs();
                onChanged();
                return this;
            }

            public Builder clearDsgver() {
                this.dsgver_ = 0;
                onChanged();
                return this;
            }

            public Builder clearExt() {
                if (this.extBuilder_ == null) {
                    this.ext_ = null;
                    onChanged();
                } else {
                    this.ext_ = null;
                    this.extBuilder_ = null;
                }
                return this;
            }

            public Builder clearExtProto() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    this.extProto_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearPchain() {
                this.pchain_ = Source.getDefaultInstance().getPchain();
                onChanged();
                return this;
            }

            public Builder clearTid() {
                this.tid_ = Source.getDefaultInstance().getTid();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public String getCert() {
                Object obj = this.cert_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.cert_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public ByteString getCertBytes() {
                Object obj = this.cert_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.cert_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return b.f14554e;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public String getDigest() {
                Object obj = this.digest_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.digest_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public ByteString getDigestBytes() {
                Object obj = this.digest_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.digest_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public String getDs() {
                Object obj = this.ds_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ds_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public ByteString getDsBytes() {
                Object obj = this.ds_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ds_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public int getDsgver() {
                return this.dsgver_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public Struct getExt() {
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    Struct struct = this.ext_;
                    if (struct == null) {
                        return Struct.getDefaultInstance();
                    }
                    return struct;
                }
                return t1Var.e();
            }

            public Struct.Builder getExtBuilder() {
                onChanged();
                return getExtFieldBuilder().d();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public x1 getExtOrBuilder() {
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public Any getExtProto(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.n(i10);
            }

            public Any.Builder getExtProtoBuilder(int i10) {
                return getExtProtoFieldBuilder().k(i10);
            }

            public List<Any.Builder> getExtProtoBuilderList() {
                return getExtProtoFieldBuilder().l();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public int getExtProtoCount() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public List<Any> getExtProtoList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.extProto_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public String getPchain() {
                Object obj = this.pchain_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.pchain_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public ByteString getPchainBytes() {
                Object obj = this.pchain_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.pchain_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public String getTid() {
                Object obj = this.tid_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.tid_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public ByteString getTidBytes() {
                Object obj = this.tid_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.tid_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public boolean hasExt() {
                if (this.extBuilder_ == null && this.ext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14555f.d(Source.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeExt(Struct struct) {
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    Struct struct2 = this.ext_;
                    if (struct2 != null) {
                        this.ext_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                    } else {
                        this.ext_ = struct;
                    }
                    onChanged();
                } else {
                    t1Var.g(struct);
                }
                return this;
            }

            public Builder removeExtProto(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
                }
                return this;
            }

            public Builder setCert(String str) {
                str.getClass();
                this.cert_ = str;
                onChanged();
                return this;
            }

            public Builder setCertBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.cert_ = byteString;
                onChanged();
                return this;
            }

            public Builder setDigest(String str) {
                str.getClass();
                this.digest_ = str;
                onChanged();
                return this;
            }

            public Builder setDigestBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.digest_ = byteString;
                onChanged();
                return this;
            }

            public Builder setDs(String str) {
                str.getClass();
                this.ds_ = str;
                onChanged();
                return this;
            }

            public Builder setDsBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.ds_ = byteString;
                onChanged();
                return this;
            }

            public Builder setDsgver(int i10) {
                this.dsgver_ = i10;
                onChanged();
                return this;
            }

            public Builder setExt(Struct struct) {
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    struct.getClass();
                    this.ext_ = struct;
                    onChanged();
                } else {
                    t1Var.i(struct);
                }
                return this;
            }

            public Builder setExtProto(int i10, Any any) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    any.getClass();
                    ensureExtProtoIsMutable();
                    this.extProto_.set(i10, any);
                    onChanged();
                } else {
                    p1Var.w(i10, any);
                }
                return this;
            }

            public Builder setPchain(String str) {
                str.getClass();
                this.pchain_ = str;
                onChanged();
                return this;
            }

            public Builder setPchainBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.pchain_ = byteString;
                onChanged();
                return this;
            }

            public Builder setTid(String str) {
                str.getClass();
                this.tid_ = str;
                onChanged();
                return this;
            }

            public Builder setTidBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.tid_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.tid_ = "";
                this.ds_ = "";
                this.digest_ = "";
                this.cert_ = "";
                this.pchain_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Source build() {
                Source buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Source buildPartial() {
                Source source = new Source(this);
                source.tid_ = this.tid_;
                source.ds_ = this.ds_;
                source.dsgver_ = this.dsgver_;
                source.digest_ = this.digest_;
                source.cert_ = this.cert_;
                source.pchain_ = this.pchain_;
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    source.ext_ = this.ext_;
                } else {
                    source.ext_ = t1Var.a();
                }
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    source.extProto_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -2;
                    }
                    source.extProto_ = this.extProto_;
                }
                onBuilt();
                return source;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Source mo4630getDefaultInstanceForType() {
                return Source.getDefaultInstance();
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

            public Any.Builder addExtProtoBuilder(int i10) {
                return getExtProtoFieldBuilder().b(i10, Any.getDefaultInstance());
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
                this.tid_ = "";
                this.ds_ = "";
                this.dsgver_ = 0;
                this.digest_ = "";
                this.cert_ = "";
                this.pchain_ = "";
                if (this.extBuilder_ == null) {
                    this.ext_ = null;
                } else {
                    this.ext_ = null;
                    this.extBuilder_ = null;
                }
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    this.extProto_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder setExt(Struct.Builder builder) {
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    this.ext_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder addExtProto(int i10, Any any) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    any.getClass();
                    ensureExtProtoIsMutable();
                    this.extProto_.add(i10, any);
                    onChanged();
                } else {
                    p1Var.d(i10, any);
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
                if (message instanceof Source) {
                    return mergeFrom((Source) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setExtProto(int i10, Any.Builder builder) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(Source source) {
                if (source == Source.getDefaultInstance()) {
                    return this;
                }
                if (!source.getTid().isEmpty()) {
                    this.tid_ = source.tid_;
                    onChanged();
                }
                if (!source.getDs().isEmpty()) {
                    this.ds_ = source.ds_;
                    onChanged();
                }
                if (source.getDsgver() != 0) {
                    setDsgver(source.getDsgver());
                }
                if (!source.getDigest().isEmpty()) {
                    this.digest_ = source.digest_;
                    onChanged();
                }
                if (!source.getCert().isEmpty()) {
                    this.cert_ = source.cert_;
                    onChanged();
                }
                if (!source.getPchain().isEmpty()) {
                    this.pchain_ = source.pchain_;
                    onChanged();
                }
                if (source.hasExt()) {
                    mergeExt(source.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!source.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = source.extProto_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(source.extProto_);
                        }
                        onChanged();
                    }
                } else if (!source.extProto_.isEmpty()) {
                    if (!this.extProtoBuilder_.t()) {
                        this.extProtoBuilder_.a(source.extProto_);
                    } else {
                        this.extProtoBuilder_.h();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = source.extProto_;
                        this.bitField0_ &= -2;
                        this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) source).unknownFields);
                onChanged();
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.tid_ = "";
                this.ds_ = "";
                this.digest_ = "";
                this.cert_ = "";
                this.pchain_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addExtProto(Any.Builder builder) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addExtProto(int i10, Any.Builder builder) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.add(i10, builder.build());
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
            public com.explorestack.protobuf.openrtb.Request.Source.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.openrtb.Request.Source.access$1400()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.explorestack.protobuf.openrtb.Request$Source r3 = (com.explorestack.protobuf.openrtb.Request.Source) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.explorestack.protobuf.openrtb.Request$Source r4 = (com.explorestack.protobuf.openrtb.Request.Source) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Request.Source.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.openrtb.Request$Source$Builder");
            }
        }

        public static Builder newBuilder(Source source) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(source);
        }

        public static Source parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Source(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Source parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Source) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Source parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Source mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Source parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Source() {
            this.memoizedIsInitialized = (byte) -1;
            this.tid_ = "";
            this.ds_ = "";
            this.digest_ = "";
            this.cert_ = "";
            this.pchain_ = "";
            this.extProto_ = Collections.emptyList();
        }

        public static Source parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static Source parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Source parseFrom(InputStream inputStream) throws IOException {
            return (Source) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Source parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Source) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Source parseFrom(n nVar) throws IOException {
            return (Source) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Source(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                this.tid_ = nVar.J();
                            } else if (K == 18) {
                                this.ds_ = nVar.J();
                            } else if (K == 24) {
                                this.dsgver_ = nVar.L();
                            } else if (K == 34) {
                                this.digest_ = nVar.J();
                            } else if (K == 42) {
                                this.cert_ = nVar.J();
                            } else if (K == 50) {
                                this.pchain_ = nVar.J();
                            } else if (K == 58) {
                                if (!z11) {
                                    this.extProto_ = new ArrayList();
                                    z11 = true;
                                }
                                this.extProto_.add(nVar.A(Any.parser(), yVar));
                            } else if (K != 66) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                Struct struct = this.ext_;
                                Struct.Builder builder = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                this.ext_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    this.ext_ = builder.buildPartial();
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
                    if (z11) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static Source parseFrom(n nVar, y yVar) throws IOException {
            return (Source) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes3.dex */
    public interface SourceOrBuilder extends MessageOrBuilder {
        String getCert();

        ByteString getCertBytes();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        String getDigest();

        ByteString getDigestBytes();

        String getDs();

        ByteString getDsBytes();

        int getDsgver();

        Struct getExt();

        x1 getExtOrBuilder();

        Any getExtProto(int i10);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        e getExtProtoOrBuilder(int i10);

        List<? extends e> getExtProtoOrBuilderList();

        String getPchain();

        ByteString getPchainBytes();

        String getTid();

        ByteString getTidBytes();

        boolean hasExt();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static Request getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return b.f14552c;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Request> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Request)) {
            return super.equals(obj);
        }
        Request request = (Request) obj;
        if (!getId().equals(request.getId()) || getTest() != request.getTest() || getTmax() != request.getTmax() || getAt() != request.getAt() || !m4659getCurList().equals(request.m4659getCurList()) || !m4660getSeatList().equals(request.m4660getSeatList()) || getWseat() != request.getWseat() || !getCdata().equals(request.getCdata()) || hasSource() != request.hasSource()) {
            return false;
        }
        if ((hasSource() && !getSource().equals(request.getSource())) || !getItemList().equals(request.getItemList()) || getPackage() != request.getPackage() || hasContext() != request.hasContext()) {
            return false;
        }
        if ((hasContext() && !getContext().equals(request.getContext())) || hasExt() != request.hasExt()) {
            return false;
        }
        if ((!hasExt() || getExt().equals(request.getExt())) && getExtProtoList().equals(request.getExtProtoList()) && this.unknownFields.equals(request.unknownFields)) {
            return true;
        }
        return false;
    }

    public int getAt() {
        return this.at_;
    }

    public String getCdata() {
        Object obj = this.cdata_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.cdata_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getCdataBytes() {
        Object obj = this.cdata_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cdata_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Any getContext() {
        Any any = this.context_;
        if (any == null) {
            return Any.getDefaultInstance();
        }
        return any;
    }

    public e getContextOrBuilder() {
        return getContext();
    }

    public String getCur(int i10) {
        return this.cur_.get(i10);
    }

    public ByteString getCurBytes(int i10) {
        return this.cur_.getByteString(i10);
    }

    public int getCurCount() {
        return this.cur_.size();
    }

    public Struct getExt() {
        Struct struct = this.ext_;
        if (struct == null) {
            return Struct.getDefaultInstance();
        }
        return struct;
    }

    public x1 getExtOrBuilder() {
        return getExt();
    }

    public Any getExtProto(int i10) {
        return this.extProto_.get(i10);
    }

    public int getExtProtoCount() {
        return this.extProto_.size();
    }

    public List<Any> getExtProtoList() {
        return this.extProto_;
    }

    public e getExtProtoOrBuilder(int i10) {
        return this.extProto_.get(i10);
    }

    public List<? extends e> getExtProtoOrBuilderList() {
        return this.extProto_;
    }

    public String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getIdBytes() {
        Object obj = this.id_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Item getItem(int i10) {
        return this.item_.get(i10);
    }

    public int getItemCount() {
        return this.item_.size();
    }

    public List<Item> getItemList() {
        return this.item_;
    }

    public ItemOrBuilder getItemOrBuilder(int i10) {
        return this.item_.get(i10);
    }

    public List<? extends ItemOrBuilder> getItemOrBuilderList() {
        return this.item_;
    }

    public int getPackage() {
        return this.package_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Request> getParserForType() {
        return PARSER;
    }

    public String getSeat(int i10) {
        return this.seat_.get(i10);
    }

    public ByteString getSeatBytes(int i10) {
        return this.seat_.getByteString(i10);
    }

    public int getSeatCount() {
        return this.seat_.size();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getIdBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.id_);
        } else {
            i10 = 0;
        }
        boolean z10 = this.test_;
        if (z10) {
            i10 += CodedOutputStream.e(2, z10);
        }
        int i12 = this.tmax_;
        if (i12 != 0) {
            i10 += CodedOutputStream.Y(3, i12);
        }
        int i13 = this.at_;
        if (i13 != 0) {
            i10 += CodedOutputStream.Y(4, i13);
        }
        int i14 = 0;
        for (int i15 = 0; i15 < this.cur_.size(); i15++) {
            i14 += GeneratedMessageV3.computeStringSizeNoTag(this.cur_.getRaw(i15));
        }
        int size = i10 + i14 + m4659getCurList().size();
        int i16 = 0;
        for (int i17 = 0; i17 < this.seat_.size(); i17++) {
            i16 += GeneratedMessageV3.computeStringSizeNoTag(this.seat_.getRaw(i17));
        }
        int size2 = size + i16 + m4660getSeatList().size();
        boolean z11 = this.wseat_;
        if (z11) {
            size2 += CodedOutputStream.e(7, z11);
        }
        if (!getCdataBytes().isEmpty()) {
            size2 += GeneratedMessageV3.computeStringSize(8, this.cdata_);
        }
        if (this.source_ != null) {
            size2 += CodedOutputStream.G(9, getSource());
        }
        for (int i18 = 0; i18 < this.item_.size(); i18++) {
            size2 += CodedOutputStream.G(10, this.item_.get(i18));
        }
        int i19 = this.package_;
        if (i19 != 0) {
            size2 += CodedOutputStream.Y(11, i19);
        }
        if (this.context_ != null) {
            size2 += CodedOutputStream.G(12, getContext());
        }
        for (int i20 = 0; i20 < this.extProto_.size(); i20++) {
            size2 += CodedOutputStream.G(13, this.extProto_.get(i20));
        }
        if (this.ext_ != null) {
            size2 += CodedOutputStream.G(14, getExt());
        }
        int serializedSize = size2 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Source getSource() {
        Source source = this.source_;
        if (source == null) {
            return Source.getDefaultInstance();
        }
        return source;
    }

    public SourceOrBuilder getSourceOrBuilder() {
        return getSource();
    }

    public boolean getTest() {
        return this.test_;
    }

    public int getTmax() {
        return this.tmax_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean getWseat() {
        return this.wseat_;
    }

    public boolean hasContext() {
        if (this.context_ != null) {
            return true;
        }
        return false;
    }

    public boolean hasExt() {
        if (this.ext_ != null) {
            return true;
        }
        return false;
    }

    public boolean hasSource() {
        if (this.source_ != null) {
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
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + i0.d(getTest())) * 37) + 3) * 53) + getTmax()) * 37) + 4) * 53) + getAt();
        if (getCurCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + m4659getCurList().hashCode();
        }
        if (getSeatCount() > 0) {
            hashCode = (((hashCode * 37) + 6) * 53) + m4660getSeatList().hashCode();
        }
        int d10 = (((((((hashCode * 37) + 7) * 53) + i0.d(getWseat())) * 37) + 8) * 53) + getCdata().hashCode();
        if (hasSource()) {
            d10 = (((d10 * 37) + 9) * 53) + getSource().hashCode();
        }
        if (getItemCount() > 0) {
            d10 = (((d10 * 37) + 10) * 53) + getItemList().hashCode();
        }
        int i11 = (((d10 * 37) + 11) * 53) + getPackage();
        if (hasContext()) {
            i11 = (((i11 * 37) + 12) * 53) + getContext().hashCode();
        }
        if (hasExt()) {
            i11 = (((i11 * 37) + 14) * 53) + getExt().hashCode();
        }
        if (getExtProtoCount() > 0) {
            i11 = (((i11 * 37) + 13) * 53) + getExtProtoList().hashCode();
        }
        int hashCode2 = (i11 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return b.f14553d.d(Request.class, Builder.class);
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
        return new Request();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
        }
        boolean z10 = this.test_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        int i10 = this.tmax_;
        if (i10 != 0) {
            codedOutputStream.c1(3, i10);
        }
        int i11 = this.at_;
        if (i11 != 0) {
            codedOutputStream.c1(4, i11);
        }
        for (int i12 = 0; i12 < this.cur_.size(); i12++) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.cur_.getRaw(i12));
        }
        for (int i13 = 0; i13 < this.seat_.size(); i13++) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.seat_.getRaw(i13));
        }
        boolean z11 = this.wseat_;
        if (z11) {
            codedOutputStream.n0(7, z11);
        }
        if (!getCdataBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.cdata_);
        }
        if (this.source_ != null) {
            codedOutputStream.L0(9, getSource());
        }
        for (int i14 = 0; i14 < this.item_.size(); i14++) {
            codedOutputStream.L0(10, this.item_.get(i14));
        }
        int i15 = this.package_;
        if (i15 != 0) {
            codedOutputStream.c1(11, i15);
        }
        if (this.context_ != null) {
            codedOutputStream.L0(12, getContext());
        }
        for (int i16 = 0; i16 < this.extProto_.size(); i16++) {
            codedOutputStream.L0(13, this.extProto_.get(i16));
        }
        if (this.ext_ != null) {
            codedOutputStream.L0(14, getExt());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static Builder newBuilder(Request request) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(request);
    }

    public static Request parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    /* renamed from: getCurList */
    public m1 m4659getCurList() {
        return this.cur_;
    }

    /* renamed from: getSeatList */
    public m1 m4660getSeatList() {
        return this.seat_;
    }

    private Request(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Request parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Request mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Request parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private Request() {
        this.memoizedIsInitialized = (byte) -1;
        this.id_ = "";
        n0 n0Var = m0.f14459d;
        this.cur_ = n0Var;
        this.seat_ = n0Var;
        this.cdata_ = "";
        this.item_ = Collections.emptyList();
        this.extProto_ = Collections.emptyList();
    }

    public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static Request parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static Request parseFrom(InputStream inputStream) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Request parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Request parseFrom(n nVar) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Request(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                        case 10:
                            this.id_ = nVar.J();
                            continue;
                        case 16:
                            this.test_ = nVar.q();
                            continue;
                        case 24:
                            this.tmax_ = nVar.L();
                            continue;
                        case 32:
                            this.at_ = nVar.L();
                            continue;
                        case 42:
                            String J = nVar.J();
                            boolean z12 = (z11 ? 1 : 0) & true;
                            z11 = z11;
                            if (!z12) {
                                this.cur_ = new m0();
                                z11 = (z11 ? 1 : 0) | true;
                            }
                            this.cur_.add(J);
                            continue;
                        case 50:
                            String J2 = nVar.J();
                            boolean z13 = (z11 ? 1 : 0) & true;
                            z11 = z11;
                            if (!z13) {
                                this.seat_ = new m0();
                                z11 = (z11 ? 1 : 0) | true;
                            }
                            this.seat_.add(J2);
                            continue;
                        case 56:
                            this.wseat_ = nVar.q();
                            continue;
                        case 66:
                            this.cdata_ = nVar.J();
                            continue;
                        case 74:
                            Source source = this.source_;
                            Source.Builder builder = source != null ? source.toBuilder() : null;
                            Source source2 = (Source) nVar.A(Source.parser(), yVar);
                            this.source_ = source2;
                            if (builder != null) {
                                builder.mergeFrom(source2);
                                this.source_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                        case 82:
                            boolean z14 = (z11 ? 1 : 0) & true;
                            z11 = z11;
                            if (!z14) {
                                this.item_ = new ArrayList();
                                z11 = (z11 ? 1 : 0) | true;
                            }
                            this.item_.add(nVar.A(Item.parser(), yVar));
                            continue;
                        case 88:
                            this.package_ = nVar.L();
                            continue;
                        case 98:
                            Any any = this.context_;
                            Any.Builder builder2 = any != null ? any.toBuilder() : null;
                            Any any2 = (Any) nVar.A(Any.parser(), yVar);
                            this.context_ = any2;
                            if (builder2 != null) {
                                builder2.mergeFrom(any2);
                                this.context_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                        case 106:
                            boolean z15 = (z11 ? 1 : 0) & true;
                            z11 = z11;
                            if (!z15) {
                                this.extProto_ = new ArrayList();
                                z11 = (z11 ? 1 : 0) | true;
                            }
                            this.extProto_.add(nVar.A(Any.parser(), yVar));
                            continue;
                        case 114:
                            Struct struct = this.ext_;
                            Struct.Builder builder3 = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                            this.ext_ = struct2;
                            if (builder3 != null) {
                                builder3.mergeFrom(struct2);
                                this.ext_ = builder3.buildPartial();
                            } else {
                                continue;
                            }
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
                if ((z11 ? 1 : 0) & true) {
                    this.cur_ = this.cur_.getUnmodifiableView();
                }
                if ((z11 ? 1 : 0) & true) {
                    this.seat_ = this.seat_.getUnmodifiableView();
                }
                if ((z11 ? 1 : 0) & true) {
                    this.item_ = Collections.unmodifiableList(this.item_);
                }
                if ((z11 ? 1 : 0) & true) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if ((z11 ? 1 : 0) & true) {
            this.cur_ = this.cur_.getUnmodifiableView();
        }
        if ((z11 ? 1 : 0) & true) {
            this.seat_ = this.seat_.getUnmodifiableView();
        }
        if ((z11 ? 1 : 0) & true) {
            this.item_ = Collections.unmodifiableList(this.item_);
        }
        if ((z11 ? 1 : 0) & true) {
            this.extProto_ = Collections.unmodifiableList(this.extProto_);
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }

    public static Request parseFrom(n nVar, y yVar) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
