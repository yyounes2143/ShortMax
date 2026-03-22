package com.explorestack.protobuf.adcom;

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
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class Placement extends GeneratedMessageV3 implements d {
    public static final int ADMX_FIELD_NUMBER = 14;
    public static final int BADV_FIELD_NUMBER = 9;
    public static final int BAPP_FIELD_NUMBER = 10;
    public static final int BATTR_FIELD_NUMBER = 11;
    public static final int BCAT_FIELD_NUMBER = 6;
    public static final int CATTAX_FIELD_NUMBER = 7;
    public static final int CURLX_FIELD_NUMBER = 15;
    public static final int DISPLAY_FIELD_NUMBER = 16;
    public static final int EXT_FIELD_NUMBER = 20;
    public static final int EXT_PROTO_FIELD_NUMBER = 19;
    public static final int REWARD_FIELD_NUMBER = 5;
    public static final int SDKVER_FIELD_NUMBER = 4;
    public static final int SDK_FIELD_NUMBER = 3;
    public static final int SECURE_FIELD_NUMBER = 13;
    public static final int SSAI_FIELD_NUMBER = 2;
    public static final int TAGID_FIELD_NUMBER = 1;
    public static final int VIDEO_FIELD_NUMBER = 17;
    public static final int WLANG_FIELD_NUMBER = 12;
    private static final long serialVersionUID = 0;
    private boolean admx_;
    private n0 badv_;
    private n0 bapp_;
    private int battrMemoizedSerializedSize;
    private List<Integer> battr_;
    private n0 bcat_;
    private int cattax_;
    private boolean curlx_;
    private DisplayPlacement display_;
    private List<Any> extProto_;
    private Struct ext_;
    private byte memoizedIsInitialized;
    private boolean reward_;
    private volatile Object sdk_;
    private volatile Object sdkver_;
    private boolean secure_;
    private int ssai_;
    private volatile Object tagid_;
    private VideoPlacement video_;
    private n0 wlang_;
    private static final i0.h.a<Integer, CreativeAttribute> battr_converter_ = new i0.h.a<Integer, CreativeAttribute>() { // from class: com.explorestack.protobuf.adcom.Placement.1
        @Override // com.explorestack.protobuf.i0.h.a
        public CreativeAttribute convert(Integer num) {
            CreativeAttribute valueOf = CreativeAttribute.valueOf(num.intValue());
            return valueOf == null ? CreativeAttribute.UNRECOGNIZED : valueOf;
        }
    };
    private static final Placement DEFAULT_INSTANCE = new Placement();
    private static final j1<Placement> PARSER = new com.explorestack.protobuf.b<Placement>() { // from class: com.explorestack.protobuf.adcom.Placement.2
        @Override // com.explorestack.protobuf.j1
        public Placement parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Placement(nVar, yVar);
        }
    };

    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements d {
        private boolean admx_;
        private n0 badv_;
        private n0 bapp_;
        private List<Integer> battr_;
        private n0 bcat_;
        private int bitField0_;
        private int cattax_;
        private boolean curlx_;
        private t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> displayBuilder_;
        private DisplayPlacement display_;
        private t1<Struct, Struct.Builder, x1> extBuilder_;
        private p1<Any, Any.Builder, e> extProtoBuilder_;
        private List<Any> extProto_;
        private Struct ext_;
        private boolean reward_;
        private Object sdk_;
        private Object sdkver_;
        private boolean secure_;
        private int ssai_;
        private Object tagid_;
        private t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> videoBuilder_;
        private VideoPlacement video_;
        private n0 wlang_;

        private void ensureBadvIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.badv_ = new m0(this.badv_);
                this.bitField0_ |= 2;
            }
        }

        private void ensureBappIsMutable() {
            if ((this.bitField0_ & 4) == 0) {
                this.bapp_ = new m0(this.bapp_);
                this.bitField0_ |= 4;
            }
        }

        private void ensureBattrIsMutable() {
            if ((this.bitField0_ & 8) == 0) {
                this.battr_ = new ArrayList(this.battr_);
                this.bitField0_ |= 8;
            }
        }

        private void ensureBcatIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.bcat_ = new m0(this.bcat_);
                this.bitField0_ |= 1;
            }
        }

        private void ensureExtProtoIsMutable() {
            if ((this.bitField0_ & 32) == 0) {
                this.extProto_ = new ArrayList(this.extProto_);
                this.bitField0_ |= 32;
            }
        }

        private void ensureWlangIsMutable() {
            if ((this.bitField0_ & 16) == 0) {
                this.wlang_ = new m0(this.wlang_);
                this.bitField0_ |= 16;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.E;
        }

        private t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> getDisplayFieldBuilder() {
            if (this.displayBuilder_ == null) {
                this.displayBuilder_ = new t1<>(getDisplay(), getParentForChildren(), isClean());
                this.display_ = null;
            }
            return this.displayBuilder_;
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
                if ((this.bitField0_ & 32) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.extProtoBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                this.extProto_ = null;
            }
            return this.extProtoBuilder_;
        }

        private t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> getVideoFieldBuilder() {
            if (this.videoBuilder_ == null) {
                this.videoBuilder_ = new t1<>(getVideo(), getParentForChildren(), isClean());
                this.video_ = null;
            }
            return this.videoBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getExtProtoFieldBuilder();
            }
        }

        public Builder addAllBadv(Iterable<String> iterable) {
            ensureBadvIsMutable();
            a.AbstractC0246a.addAll((Iterable) iterable, (List) this.badv_);
            onChanged();
            return this;
        }

        public Builder addAllBapp(Iterable<String> iterable) {
            ensureBappIsMutable();
            a.AbstractC0246a.addAll((Iterable) iterable, (List) this.bapp_);
            onChanged();
            return this;
        }

        public Builder addAllBattr(Iterable<? extends CreativeAttribute> iterable) {
            ensureBattrIsMutable();
            for (CreativeAttribute creativeAttribute : iterable) {
                this.battr_.add(Integer.valueOf(creativeAttribute.getNumber()));
            }
            onChanged();
            return this;
        }

        public Builder addAllBattrValue(Iterable<Integer> iterable) {
            ensureBattrIsMutable();
            for (Integer num : iterable) {
                num.intValue();
                this.battr_.add(num);
            }
            onChanged();
            return this;
        }

        public Builder addAllBcat(Iterable<String> iterable) {
            ensureBcatIsMutable();
            a.AbstractC0246a.addAll((Iterable) iterable, (List) this.bcat_);
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

        public Builder addAllWlang(Iterable<String> iterable) {
            ensureWlangIsMutable();
            a.AbstractC0246a.addAll((Iterable) iterable, (List) this.wlang_);
            onChanged();
            return this;
        }

        public Builder addBadv(String str) {
            str.getClass();
            ensureBadvIsMutable();
            this.badv_.add(str);
            onChanged();
            return this;
        }

        public Builder addBadvBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            ensureBadvIsMutable();
            this.badv_.b(byteString);
            onChanged();
            return this;
        }

        public Builder addBapp(String str) {
            str.getClass();
            ensureBappIsMutable();
            this.bapp_.add(str);
            onChanged();
            return this;
        }

        public Builder addBappBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            ensureBappIsMutable();
            this.bapp_.b(byteString);
            onChanged();
            return this;
        }

        public Builder addBattr(CreativeAttribute creativeAttribute) {
            creativeAttribute.getClass();
            ensureBattrIsMutable();
            this.battr_.add(Integer.valueOf(creativeAttribute.getNumber()));
            onChanged();
            return this;
        }

        public Builder addBattrValue(int i10) {
            ensureBattrIsMutable();
            this.battr_.add(Integer.valueOf(i10));
            onChanged();
            return this;
        }

        public Builder addBcat(String str) {
            str.getClass();
            ensureBcatIsMutable();
            this.bcat_.add(str);
            onChanged();
            return this;
        }

        public Builder addBcatBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            ensureBcatIsMutable();
            this.bcat_.b(byteString);
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

        public Builder addWlang(String str) {
            str.getClass();
            ensureWlangIsMutable();
            this.wlang_.add(str);
            onChanged();
            return this;
        }

        public Builder addWlangBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            ensureWlangIsMutable();
            this.wlang_.b(byteString);
            onChanged();
            return this;
        }

        public Builder clearAdmx() {
            this.admx_ = false;
            onChanged();
            return this;
        }

        public Builder clearBadv() {
            this.badv_ = m0.f14459d;
            this.bitField0_ &= -3;
            onChanged();
            return this;
        }

        public Builder clearBapp() {
            this.bapp_ = m0.f14459d;
            this.bitField0_ &= -5;
            onChanged();
            return this;
        }

        public Builder clearBattr() {
            this.battr_ = Collections.emptyList();
            this.bitField0_ &= -9;
            onChanged();
            return this;
        }

        public Builder clearBcat() {
            this.bcat_ = m0.f14459d;
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        public Builder clearCattax() {
            this.cattax_ = 0;
            onChanged();
            return this;
        }

        public Builder clearCurlx() {
            this.curlx_ = false;
            onChanged();
            return this;
        }

        public Builder clearDisplay() {
            if (this.displayBuilder_ == null) {
                this.display_ = null;
                onChanged();
            } else {
                this.display_ = null;
                this.displayBuilder_ = null;
            }
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
                this.bitField0_ &= -33;
                onChanged();
            } else {
                p1Var.g();
            }
            return this;
        }

        public Builder clearReward() {
            this.reward_ = false;
            onChanged();
            return this;
        }

        public Builder clearSdk() {
            this.sdk_ = Placement.getDefaultInstance().getSdk();
            onChanged();
            return this;
        }

        public Builder clearSdkver() {
            this.sdkver_ = Placement.getDefaultInstance().getSdkver();
            onChanged();
            return this;
        }

        public Builder clearSecure() {
            this.secure_ = false;
            onChanged();
            return this;
        }

        public Builder clearSsai() {
            this.ssai_ = 0;
            onChanged();
            return this;
        }

        public Builder clearTagid() {
            this.tagid_ = Placement.getDefaultInstance().getTagid();
            onChanged();
            return this;
        }

        public Builder clearVideo() {
            if (this.videoBuilder_ == null) {
                this.video_ = null;
                onChanged();
            } else {
                this.video_ = null;
                this.videoBuilder_ = null;
            }
            return this;
        }

        public Builder clearWlang() {
            this.wlang_ = m0.f14459d;
            this.bitField0_ &= -17;
            onChanged();
            return this;
        }

        public boolean getAdmx() {
            return this.admx_;
        }

        public String getBadv(int i10) {
            return this.badv_.get(i10);
        }

        public ByteString getBadvBytes(int i10) {
            return this.badv_.getByteString(i10);
        }

        public int getBadvCount() {
            return this.badv_.size();
        }

        public String getBapp(int i10) {
            return this.bapp_.get(i10);
        }

        public ByteString getBappBytes(int i10) {
            return this.bapp_.getByteString(i10);
        }

        public int getBappCount() {
            return this.bapp_.size();
        }

        public CreativeAttribute getBattr(int i10) {
            return (CreativeAttribute) Placement.battr_converter_.convert(this.battr_.get(i10));
        }

        public int getBattrCount() {
            return this.battr_.size();
        }

        public List<CreativeAttribute> getBattrList() {
            return new i0.h(this.battr_, Placement.battr_converter_);
        }

        public int getBattrValue(int i10) {
            return this.battr_.get(i10).intValue();
        }

        public List<Integer> getBattrValueList() {
            return Collections.unmodifiableList(this.battr_);
        }

        public String getBcat(int i10) {
            return this.bcat_.get(i10);
        }

        public ByteString getBcatBytes(int i10) {
            return this.bcat_.getByteString(i10);
        }

        public int getBcatCount() {
            return this.bcat_.size();
        }

        public CategoryTaxonomy getCattax() {
            CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
            if (valueOf == null) {
                return CategoryTaxonomy.UNRECOGNIZED;
            }
            return valueOf;
        }

        public int getCattaxValue() {
            return this.cattax_;
        }

        public boolean getCurlx() {
            return this.curlx_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return b.E;
        }

        public DisplayPlacement getDisplay() {
            t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
            if (t1Var == null) {
                DisplayPlacement displayPlacement = this.display_;
                if (displayPlacement == null) {
                    return DisplayPlacement.getDefaultInstance();
                }
                return displayPlacement;
            }
            return t1Var.e();
        }

        public DisplayPlacement.Builder getDisplayBuilder() {
            onChanged();
            return getDisplayFieldBuilder().d();
        }

        public DisplayPlacementOrBuilder getDisplayOrBuilder() {
            t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            DisplayPlacement displayPlacement = this.display_;
            if (displayPlacement == null) {
                return DisplayPlacement.getDefaultInstance();
            }
            return displayPlacement;
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

        public boolean getReward() {
            return this.reward_;
        }

        public String getSdk() {
            Object obj = this.sdk_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sdk_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        public ByteString getSdkBytes() {
            Object obj = this.sdk_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdk_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getSdkver() {
            Object obj = this.sdkver_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sdkver_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        public ByteString getSdkverBytes() {
            Object obj = this.sdkver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdkver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public boolean getSecure() {
            return this.secure_;
        }

        public int getSsai() {
            return this.ssai_;
        }

        public String getTagid() {
            Object obj = this.tagid_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.tagid_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        public ByteString getTagidBytes() {
            Object obj = this.tagid_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tagid_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public VideoPlacement getVideo() {
            t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var = this.videoBuilder_;
            if (t1Var == null) {
                VideoPlacement videoPlacement = this.video_;
                if (videoPlacement == null) {
                    return VideoPlacement.getDefaultInstance();
                }
                return videoPlacement;
            }
            return t1Var.e();
        }

        public VideoPlacement.Builder getVideoBuilder() {
            onChanged();
            return getVideoFieldBuilder().d();
        }

        public VideoPlacementOrBuilder getVideoOrBuilder() {
            t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var = this.videoBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            VideoPlacement videoPlacement = this.video_;
            if (videoPlacement == null) {
                return VideoPlacement.getDefaultInstance();
            }
            return videoPlacement;
        }

        public String getWlang(int i10) {
            return this.wlang_.get(i10);
        }

        public ByteString getWlangBytes(int i10) {
            return this.wlang_.getByteString(i10);
        }

        public int getWlangCount() {
            return this.wlang_.size();
        }

        public boolean hasDisplay() {
            if (this.displayBuilder_ == null && this.display_ == null) {
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

        public boolean hasVideo() {
            if (this.videoBuilder_ == null && this.video_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.F.d(Placement.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeDisplay(DisplayPlacement displayPlacement) {
            t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
            if (t1Var == null) {
                DisplayPlacement displayPlacement2 = this.display_;
                if (displayPlacement2 != null) {
                    this.display_ = DisplayPlacement.newBuilder(displayPlacement2).mergeFrom(displayPlacement).buildPartial();
                } else {
                    this.display_ = displayPlacement;
                }
                onChanged();
            } else {
                t1Var.g(displayPlacement);
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

        public Builder mergeVideo(VideoPlacement videoPlacement) {
            t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var = this.videoBuilder_;
            if (t1Var == null) {
                VideoPlacement videoPlacement2 = this.video_;
                if (videoPlacement2 != null) {
                    this.video_ = VideoPlacement.newBuilder(videoPlacement2).mergeFrom(videoPlacement).buildPartial();
                } else {
                    this.video_ = videoPlacement;
                }
                onChanged();
            } else {
                t1Var.g(videoPlacement);
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

        public Builder setAdmx(boolean z10) {
            this.admx_ = z10;
            onChanged();
            return this;
        }

        public Builder setBadv(int i10, String str) {
            str.getClass();
            ensureBadvIsMutable();
            this.badv_.set(i10, str);
            onChanged();
            return this;
        }

        public Builder setBapp(int i10, String str) {
            str.getClass();
            ensureBappIsMutable();
            this.bapp_.set(i10, str);
            onChanged();
            return this;
        }

        public Builder setBattr(int i10, CreativeAttribute creativeAttribute) {
            creativeAttribute.getClass();
            ensureBattrIsMutable();
            this.battr_.set(i10, Integer.valueOf(creativeAttribute.getNumber()));
            onChanged();
            return this;
        }

        public Builder setBattrValue(int i10, int i11) {
            ensureBattrIsMutable();
            this.battr_.set(i10, Integer.valueOf(i11));
            onChanged();
            return this;
        }

        public Builder setBcat(int i10, String str) {
            str.getClass();
            ensureBcatIsMutable();
            this.bcat_.set(i10, str);
            onChanged();
            return this;
        }

        public Builder setCattax(CategoryTaxonomy categoryTaxonomy) {
            categoryTaxonomy.getClass();
            this.cattax_ = categoryTaxonomy.getNumber();
            onChanged();
            return this;
        }

        public Builder setCattaxValue(int i10) {
            this.cattax_ = i10;
            onChanged();
            return this;
        }

        public Builder setCurlx(boolean z10) {
            this.curlx_ = z10;
            onChanged();
            return this;
        }

        public Builder setDisplay(DisplayPlacement displayPlacement) {
            t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
            if (t1Var == null) {
                displayPlacement.getClass();
                this.display_ = displayPlacement;
                onChanged();
            } else {
                t1Var.i(displayPlacement);
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

        public Builder setReward(boolean z10) {
            this.reward_ = z10;
            onChanged();
            return this;
        }

        public Builder setSdk(String str) {
            str.getClass();
            this.sdk_ = str;
            onChanged();
            return this;
        }

        public Builder setSdkBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.sdk_ = byteString;
            onChanged();
            return this;
        }

        public Builder setSdkver(String str) {
            str.getClass();
            this.sdkver_ = str;
            onChanged();
            return this;
        }

        public Builder setSdkverBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.sdkver_ = byteString;
            onChanged();
            return this;
        }

        public Builder setSecure(boolean z10) {
            this.secure_ = z10;
            onChanged();
            return this;
        }

        public Builder setSsai(int i10) {
            this.ssai_ = i10;
            onChanged();
            return this;
        }

        public Builder setTagid(String str) {
            str.getClass();
            this.tagid_ = str;
            onChanged();
            return this;
        }

        public Builder setTagidBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.tagid_ = byteString;
            onChanged();
            return this;
        }

        public Builder setVideo(VideoPlacement videoPlacement) {
            t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var = this.videoBuilder_;
            if (t1Var == null) {
                videoPlacement.getClass();
                this.video_ = videoPlacement;
                onChanged();
            } else {
                t1Var.i(videoPlacement);
            }
            return this;
        }

        public Builder setWlang(int i10, String str) {
            str.getClass();
            ensureWlangIsMutable();
            this.wlang_.set(i10, str);
            onChanged();
            return this;
        }

        /* renamed from: getBadvList */
        public m1 m4641getBadvList() {
            return this.badv_.getUnmodifiableView();
        }

        /* renamed from: getBappList */
        public m1 m4642getBappList() {
            return this.bapp_.getUnmodifiableView();
        }

        /* renamed from: getBcatList */
        public m1 m4643getBcatList() {
            return this.bcat_.getUnmodifiableView();
        }

        /* renamed from: getWlangList */
        public m1 m4644getWlangList() {
            return this.wlang_.getUnmodifiableView();
        }

        private Builder() {
            this.tagid_ = "";
            this.sdk_ = "";
            this.sdkver_ = "";
            n0 n0Var = m0.f14459d;
            this.bcat_ = n0Var;
            this.cattax_ = 0;
            this.badv_ = n0Var;
            this.bapp_ = n0Var;
            this.battr_ = Collections.emptyList();
            this.wlang_ = n0Var;
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Placement build() {
            Placement buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Placement buildPartial() {
            Placement placement = new Placement(this);
            placement.tagid_ = this.tagid_;
            placement.ssai_ = this.ssai_;
            placement.sdk_ = this.sdk_;
            placement.sdkver_ = this.sdkver_;
            placement.reward_ = this.reward_;
            if ((this.bitField0_ & 1) != 0) {
                this.bcat_ = this.bcat_.getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            placement.bcat_ = this.bcat_;
            placement.cattax_ = this.cattax_;
            if ((this.bitField0_ & 2) != 0) {
                this.badv_ = this.badv_.getUnmodifiableView();
                this.bitField0_ &= -3;
            }
            placement.badv_ = this.badv_;
            if ((this.bitField0_ & 4) != 0) {
                this.bapp_ = this.bapp_.getUnmodifiableView();
                this.bitField0_ &= -5;
            }
            placement.bapp_ = this.bapp_;
            if ((this.bitField0_ & 8) != 0) {
                this.battr_ = Collections.unmodifiableList(this.battr_);
                this.bitField0_ &= -9;
            }
            placement.battr_ = this.battr_;
            if ((this.bitField0_ & 16) != 0) {
                this.wlang_ = this.wlang_.getUnmodifiableView();
                this.bitField0_ &= -17;
            }
            placement.wlang_ = this.wlang_;
            placement.secure_ = this.secure_;
            placement.admx_ = this.admx_;
            placement.curlx_ = this.curlx_;
            t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
            if (t1Var == null) {
                placement.display_ = this.display_;
            } else {
                placement.display_ = t1Var.a();
            }
            t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var2 = this.videoBuilder_;
            if (t1Var2 == null) {
                placement.video_ = this.video_;
            } else {
                placement.video_ = t1Var2.a();
            }
            t1<Struct, Struct.Builder, x1> t1Var3 = this.extBuilder_;
            if (t1Var3 == null) {
                placement.ext_ = this.ext_;
            } else {
                placement.ext_ = t1Var3.a();
            }
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var != null) {
                placement.extProto_ = p1Var.f();
            } else {
                if ((this.bitField0_ & 32) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    this.bitField0_ &= -33;
                }
                placement.extProto_ = this.extProto_;
            }
            onBuilt();
            return placement;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Placement mo4630getDefaultInstanceForType() {
            return Placement.getDefaultInstance();
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
            this.tagid_ = "";
            this.ssai_ = 0;
            this.sdk_ = "";
            this.sdkver_ = "";
            this.reward_ = false;
            n0 n0Var = m0.f14459d;
            this.bcat_ = n0Var;
            int i10 = this.bitField0_;
            this.cattax_ = 0;
            this.badv_ = n0Var;
            this.bapp_ = n0Var;
            this.bitField0_ = i10 & (-8);
            this.battr_ = Collections.emptyList();
            int i11 = this.bitField0_;
            this.wlang_ = n0Var;
            this.bitField0_ = i11 & (-25);
            this.secure_ = false;
            this.admx_ = false;
            this.curlx_ = false;
            if (this.displayBuilder_ == null) {
                this.display_ = null;
            } else {
                this.display_ = null;
                this.displayBuilder_ = null;
            }
            if (this.videoBuilder_ == null) {
                this.video_ = null;
            } else {
                this.video_ = null;
                this.videoBuilder_ = null;
            }
            if (this.extBuilder_ == null) {
                this.ext_ = null;
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var == null) {
                this.extProto_ = Collections.emptyList();
                this.bitField0_ &= -33;
            } else {
                p1Var.g();
            }
            return this;
        }

        public Builder setDisplay(DisplayPlacement.Builder builder) {
            t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
            if (t1Var == null) {
                this.display_ = builder.build();
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

        public Builder setVideo(VideoPlacement.Builder builder) {
            t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var = this.videoBuilder_;
            if (t1Var == null) {
                this.video_ = builder.build();
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
            if (message instanceof Placement) {
                return mergeFrom((Placement) message);
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

        public Builder mergeFrom(Placement placement) {
            if (placement == Placement.getDefaultInstance()) {
                return this;
            }
            if (!placement.getTagid().isEmpty()) {
                this.tagid_ = placement.tagid_;
                onChanged();
            }
            if (placement.getSsai() != 0) {
                setSsai(placement.getSsai());
            }
            if (!placement.getSdk().isEmpty()) {
                this.sdk_ = placement.sdk_;
                onChanged();
            }
            if (!placement.getSdkver().isEmpty()) {
                this.sdkver_ = placement.sdkver_;
                onChanged();
            }
            if (placement.getReward()) {
                setReward(placement.getReward());
            }
            if (!placement.bcat_.isEmpty()) {
                if (this.bcat_.isEmpty()) {
                    this.bcat_ = placement.bcat_;
                    this.bitField0_ &= -2;
                } else {
                    ensureBcatIsMutable();
                    this.bcat_.addAll(placement.bcat_);
                }
                onChanged();
            }
            if (placement.cattax_ != 0) {
                setCattaxValue(placement.getCattaxValue());
            }
            if (!placement.badv_.isEmpty()) {
                if (this.badv_.isEmpty()) {
                    this.badv_ = placement.badv_;
                    this.bitField0_ &= -3;
                } else {
                    ensureBadvIsMutable();
                    this.badv_.addAll(placement.badv_);
                }
                onChanged();
            }
            if (!placement.bapp_.isEmpty()) {
                if (this.bapp_.isEmpty()) {
                    this.bapp_ = placement.bapp_;
                    this.bitField0_ &= -5;
                } else {
                    ensureBappIsMutable();
                    this.bapp_.addAll(placement.bapp_);
                }
                onChanged();
            }
            if (!placement.battr_.isEmpty()) {
                if (this.battr_.isEmpty()) {
                    this.battr_ = placement.battr_;
                    this.bitField0_ &= -9;
                } else {
                    ensureBattrIsMutable();
                    this.battr_.addAll(placement.battr_);
                }
                onChanged();
            }
            if (!placement.wlang_.isEmpty()) {
                if (this.wlang_.isEmpty()) {
                    this.wlang_ = placement.wlang_;
                    this.bitField0_ &= -17;
                } else {
                    ensureWlangIsMutable();
                    this.wlang_.addAll(placement.wlang_);
                }
                onChanged();
            }
            if (placement.getSecure()) {
                setSecure(placement.getSecure());
            }
            if (placement.getAdmx()) {
                setAdmx(placement.getAdmx());
            }
            if (placement.getCurlx()) {
                setCurlx(placement.getCurlx());
            }
            if (placement.hasDisplay()) {
                mergeDisplay(placement.getDisplay());
            }
            if (placement.hasVideo()) {
                mergeVideo(placement.getVideo());
            }
            if (placement.hasExt()) {
                mergeExt(placement.getExt());
            }
            if (this.extProtoBuilder_ == null) {
                if (!placement.extProto_.isEmpty()) {
                    if (this.extProto_.isEmpty()) {
                        this.extProto_ = placement.extProto_;
                        this.bitField0_ &= -33;
                    } else {
                        ensureExtProtoIsMutable();
                        this.extProto_.addAll(placement.extProto_);
                    }
                    onChanged();
                }
            } else if (!placement.extProto_.isEmpty()) {
                if (!this.extProtoBuilder_.t()) {
                    this.extProtoBuilder_.a(placement.extProto_);
                } else {
                    this.extProtoBuilder_.h();
                    this.extProtoBuilder_ = null;
                    this.extProto_ = placement.extProto_;
                    this.bitField0_ &= -33;
                    this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) placement).unknownFields);
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

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.tagid_ = "";
            this.sdk_ = "";
            this.sdkver_ = "";
            n0 n0Var = m0.f14459d;
            this.bcat_ = n0Var;
            this.cattax_ = 0;
            this.badv_ = n0Var;
            this.bapp_ = n0Var;
            this.battr_ = Collections.emptyList();
            this.wlang_ = n0Var;
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
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
        public com.explorestack.protobuf.adcom.Placement.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Placement.access$22100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.explorestack.protobuf.adcom.Placement r3 = (com.explorestack.protobuf.adcom.Placement) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.explorestack.protobuf.adcom.Placement r4 = (com.explorestack.protobuf.adcom.Placement) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Placement$Builder");
        }
    }

    /* loaded from: classes3.dex */
    public static final class DisplayPlacement extends GeneratedMessageV3 implements DisplayPlacementOrBuilder {
        public static final int AMPREN_FIELD_NUMBER = 6;
        public static final int API_FIELD_NUMBER = 10;
        public static final int CLKTYPE_FIELD_NUMBER = 5;
        public static final int CONTEXT_FIELD_NUMBER = 8;
        public static final int CTYPE_FIELD_NUMBER = 11;
        public static final int DISPLAYFMT_FIELD_NUMBER = 16;
        public static final int EVENT_FIELD_NUMBER = 18;
        public static final int EXT_FIELD_NUMBER = 20;
        public static final int EXT_PROTO_FIELD_NUMBER = 19;
        public static final int H_FIELD_NUMBER = 13;
        public static final int IFRBUST_FIELD_NUMBER = 4;
        public static final int INSTL_FIELD_NUMBER = 2;
        public static final int MIME_FIELD_NUMBER = 9;
        public static final int NATIVEFMT_FIELD_NUMBER = 17;
        public static final int POS_FIELD_NUMBER = 1;
        public static final int PRIV_FIELD_NUMBER = 15;
        public static final int PTYPE_FIELD_NUMBER = 7;
        public static final int TOPFRAME_FIELD_NUMBER = 3;
        public static final int UNIT_FIELD_NUMBER = 14;
        public static final int W_FIELD_NUMBER = 12;
        private static final long serialVersionUID = 0;
        private int ampren_;
        private int apiMemoizedSerializedSize;
        private List<Integer> api_;
        private int clktype_;
        private int context_;
        private int ctypeMemoizedSerializedSize;
        private List<Integer> ctype_;
        private List<DisplayFormat> displayfmt_;
        private List<EventSpec> event_;
        private List<Any> extProto_;
        private Struct ext_;
        private int h_;
        private n0 ifrbust_;
        private boolean instl_;
        private byte memoizedIsInitialized;
        private n0 mime_;
        private NativeFormat nativefmt_;
        private int pos_;
        private boolean priv_;
        private int ptype_;
        private boolean topframe_;
        private int unit_;
        private int w_;
        private static final i0.h.a<Integer, ApiFramework> api_converter_ = new i0.h.a<Integer, ApiFramework>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.1
            @Override // com.explorestack.protobuf.i0.h.a
            public ApiFramework convert(Integer num) {
                ApiFramework valueOf = ApiFramework.valueOf(num.intValue());
                return valueOf == null ? ApiFramework.UNRECOGNIZED : valueOf;
            }
        };
        private static final i0.h.a<Integer, DisplayCreativeType> ctype_converter_ = new i0.h.a<Integer, DisplayCreativeType>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.2
            @Override // com.explorestack.protobuf.i0.h.a
            public DisplayCreativeType convert(Integer num) {
                DisplayCreativeType valueOf = DisplayCreativeType.valueOf(num.intValue());
                return valueOf == null ? DisplayCreativeType.UNRECOGNIZED : valueOf;
            }
        };
        private static final DisplayPlacement DEFAULT_INSTANCE = new DisplayPlacement();
        private static final j1<DisplayPlacement> PARSER = new com.explorestack.protobuf.b<DisplayPlacement>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.3
            @Override // com.explorestack.protobuf.j1
            public DisplayPlacement parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new DisplayPlacement(nVar, yVar);
            }
        };

        /* loaded from: classes3.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements DisplayPlacementOrBuilder {
            private int ampren_;
            private List<Integer> api_;
            private int bitField0_;
            private int clktype_;
            private int context_;
            private List<Integer> ctype_;
            private p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> displayfmtBuilder_;
            private List<DisplayFormat> displayfmt_;
            private p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> eventBuilder_;
            private List<EventSpec> event_;
            private t1<Struct, Struct.Builder, x1> extBuilder_;
            private p1<Any, Any.Builder, e> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private int h_;
            private n0 ifrbust_;
            private boolean instl_;
            private n0 mime_;
            private t1<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> nativefmtBuilder_;
            private NativeFormat nativefmt_;
            private int pos_;
            private boolean priv_;
            private int ptype_;
            private boolean topframe_;
            private int unit_;
            private int w_;

            private void ensureApiIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.api_ = new ArrayList(this.api_);
                    this.bitField0_ |= 4;
                }
            }

            private void ensureCtypeIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.ctype_ = new ArrayList(this.ctype_);
                    this.bitField0_ |= 8;
                }
            }

            private void ensureDisplayfmtIsMutable() {
                if ((this.bitField0_ & 16) == 0) {
                    this.displayfmt_ = new ArrayList(this.displayfmt_);
                    this.bitField0_ |= 16;
                }
            }

            private void ensureEventIsMutable() {
                if ((this.bitField0_ & 32) == 0) {
                    this.event_ = new ArrayList(this.event_);
                    this.bitField0_ |= 32;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 64) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 64;
                }
            }

            private void ensureIfrbustIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.ifrbust_ = new m0(this.ifrbust_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureMimeIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.mime_ = new m0(this.mime_);
                    this.bitField0_ |= 2;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.G;
            }

            private p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> getDisplayfmtFieldBuilder() {
                boolean z10;
                if (this.displayfmtBuilder_ == null) {
                    List<DisplayFormat> list = this.displayfmt_;
                    if ((this.bitField0_ & 16) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.displayfmtBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.displayfmt_ = null;
                }
                return this.displayfmtBuilder_;
            }

            private p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> getEventFieldBuilder() {
                boolean z10;
                if (this.eventBuilder_ == null) {
                    List<EventSpec> list = this.event_;
                    if ((this.bitField0_ & 32) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.eventBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.event_ = null;
                }
                return this.eventBuilder_;
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
                    if ((this.bitField0_ & 64) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.extProtoBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.extProto_ = null;
                }
                return this.extProtoBuilder_;
            }

            private t1<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> getNativefmtFieldBuilder() {
                if (this.nativefmtBuilder_ == null) {
                    this.nativefmtBuilder_ = new t1<>(getNativefmt(), getParentForChildren(), isClean());
                    this.nativefmt_ = null;
                }
                return this.nativefmtBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDisplayfmtFieldBuilder();
                    getEventFieldBuilder();
                    getExtProtoFieldBuilder();
                }
            }

            public Builder addAllApi(Iterable<? extends ApiFramework> iterable) {
                ensureApiIsMutable();
                for (ApiFramework apiFramework : iterable) {
                    this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                }
                onChanged();
                return this;
            }

            public Builder addAllApiValue(Iterable<Integer> iterable) {
                ensureApiIsMutable();
                for (Integer num : iterable) {
                    num.intValue();
                    this.api_.add(num);
                }
                onChanged();
                return this;
            }

            public Builder addAllCtype(Iterable<? extends DisplayCreativeType> iterable) {
                ensureCtypeIsMutable();
                for (DisplayCreativeType displayCreativeType : iterable) {
                    this.ctype_.add(Integer.valueOf(displayCreativeType.getNumber()));
                }
                onChanged();
                return this;
            }

            public Builder addAllCtypeValue(Iterable<Integer> iterable) {
                ensureCtypeIsMutable();
                for (Integer num : iterable) {
                    num.intValue();
                    this.ctype_.add(num);
                }
                onChanged();
                return this;
            }

            public Builder addAllDisplayfmt(Iterable<? extends DisplayFormat> iterable) {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    ensureDisplayfmtIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.displayfmt_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addAllEvent(Iterable<? extends EventSpec> iterable) {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    ensureEventIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.event_);
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

            public Builder addAllIfrbust(Iterable<String> iterable) {
                ensureIfrbustIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.ifrbust_);
                onChanged();
                return this;
            }

            public Builder addAllMime(Iterable<String> iterable) {
                ensureMimeIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.mime_);
                onChanged();
                return this;
            }

            public Builder addApi(ApiFramework apiFramework) {
                apiFramework.getClass();
                ensureApiIsMutable();
                this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                onChanged();
                return this;
            }

            public Builder addApiValue(int i10) {
                ensureApiIsMutable();
                this.api_.add(Integer.valueOf(i10));
                onChanged();
                return this;
            }

            public Builder addCtype(DisplayCreativeType displayCreativeType) {
                displayCreativeType.getClass();
                ensureCtypeIsMutable();
                this.ctype_.add(Integer.valueOf(displayCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public Builder addCtypeValue(int i10) {
                ensureCtypeIsMutable();
                this.ctype_.add(Integer.valueOf(i10));
                onChanged();
                return this;
            }

            public Builder addDisplayfmt(DisplayFormat displayFormat) {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    displayFormat.getClass();
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.add(displayFormat);
                    onChanged();
                } else {
                    p1Var.e(displayFormat);
                }
                return this;
            }

            public DisplayFormat.Builder addDisplayfmtBuilder() {
                return getDisplayfmtFieldBuilder().c(DisplayFormat.getDefaultInstance());
            }

            public Builder addEvent(EventSpec eventSpec) {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    eventSpec.getClass();
                    ensureEventIsMutable();
                    this.event_.add(eventSpec);
                    onChanged();
                } else {
                    p1Var.e(eventSpec);
                }
                return this;
            }

            public EventSpec.Builder addEventBuilder() {
                return getEventFieldBuilder().c(EventSpec.getDefaultInstance());
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

            public Builder addIfrbust(String str) {
                str.getClass();
                ensureIfrbustIsMutable();
                this.ifrbust_.add(str);
                onChanged();
                return this;
            }

            public Builder addIfrbustBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                ensureIfrbustIsMutable();
                this.ifrbust_.b(byteString);
                onChanged();
                return this;
            }

            public Builder addMime(String str) {
                str.getClass();
                ensureMimeIsMutable();
                this.mime_.add(str);
                onChanged();
                return this;
            }

            public Builder addMimeBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                ensureMimeIsMutable();
                this.mime_.b(byteString);
                onChanged();
                return this;
            }

            public Builder clearAmpren() {
                this.ampren_ = 0;
                onChanged();
                return this;
            }

            public Builder clearApi() {
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder clearClktype() {
                this.clktype_ = 0;
                onChanged();
                return this;
            }

            public Builder clearContext() {
                this.context_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCtype() {
                this.ctype_ = Collections.emptyList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public Builder clearDisplayfmt() {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    this.displayfmt_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearEvent() {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    this.event_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                    onChanged();
                } else {
                    p1Var.g();
                }
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
                    this.bitField0_ &= -65;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearH() {
                this.h_ = 0;
                onChanged();
                return this;
            }

            public Builder clearIfrbust() {
                this.ifrbust_ = m0.f14459d;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder clearInstl() {
                this.instl_ = false;
                onChanged();
                return this;
            }

            public Builder clearMime() {
                this.mime_ = m0.f14459d;
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder clearNativefmt() {
                if (this.nativefmtBuilder_ == null) {
                    this.nativefmt_ = null;
                    onChanged();
                } else {
                    this.nativefmt_ = null;
                    this.nativefmtBuilder_ = null;
                }
                return this;
            }

            public Builder clearPos() {
                this.pos_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPriv() {
                this.priv_ = false;
                onChanged();
                return this;
            }

            public Builder clearPtype() {
                this.ptype_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTopframe() {
                this.topframe_ = false;
                onChanged();
                return this;
            }

            public Builder clearUnit() {
                this.unit_ = 0;
                onChanged();
                return this;
            }

            public Builder clearW() {
                this.w_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getAmpren() {
                return this.ampren_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public ApiFramework getApi(int i10) {
                return (ApiFramework) DisplayPlacement.api_converter_.convert(this.api_.get(i10));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getApiCount() {
                return this.api_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public List<ApiFramework> getApiList() {
                return new i0.h(this.api_, DisplayPlacement.api_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getApiValue(int i10) {
                return this.api_.get(i10).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public List<Integer> getApiValueList() {
                return Collections.unmodifiableList(this.api_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public ClickType getClktype() {
                ClickType valueOf = ClickType.valueOf(this.clktype_);
                if (valueOf == null) {
                    return ClickType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getClktypeValue() {
                return this.clktype_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public DisplayContextType getContext() {
                DisplayContextType valueOf = DisplayContextType.valueOf(this.context_);
                if (valueOf == null) {
                    return DisplayContextType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getContextValue() {
                return this.context_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public DisplayCreativeType getCtype(int i10) {
                return (DisplayCreativeType) DisplayPlacement.ctype_converter_.convert(this.ctype_.get(i10));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getCtypeCount() {
                return this.ctype_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public List<DisplayCreativeType> getCtypeList() {
                return new i0.h(this.ctype_, DisplayPlacement.ctype_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getCtypeValue(int i10) {
                return this.ctype_.get(i10).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public List<Integer> getCtypeValueList() {
                return Collections.unmodifiableList(this.ctype_);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return b.G;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public DisplayFormat getDisplayfmt(int i10) {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    return this.displayfmt_.get(i10);
                }
                return p1Var.n(i10);
            }

            public DisplayFormat.Builder getDisplayfmtBuilder(int i10) {
                return getDisplayfmtFieldBuilder().k(i10);
            }

            public List<DisplayFormat.Builder> getDisplayfmtBuilderList() {
                return getDisplayfmtFieldBuilder().l();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getDisplayfmtCount() {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    return this.displayfmt_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public List<DisplayFormat> getDisplayfmtList() {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.displayfmt_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public DisplayFormatOrBuilder getDisplayfmtOrBuilder(int i10) {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    return this.displayfmt_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public List<? extends DisplayFormatOrBuilder> getDisplayfmtOrBuilderList() {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.displayfmt_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public EventSpec getEvent(int i10) {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    return this.event_.get(i10);
                }
                return p1Var.n(i10);
            }

            public EventSpec.Builder getEventBuilder(int i10) {
                return getEventFieldBuilder().k(i10);
            }

            public List<EventSpec.Builder> getEventBuilderList() {
                return getEventFieldBuilder().l();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getEventCount() {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    return this.event_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public List<EventSpec> getEventList() {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.event_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public EventSpecOrBuilder getEventOrBuilder(int i10) {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    return this.event_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public List<? extends EventSpecOrBuilder> getEventOrBuilderList() {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.event_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getExtProtoCount() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public List<Any> getExtProtoList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.extProto_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getH() {
                return this.h_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public String getIfrbust(int i10) {
                return this.ifrbust_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public ByteString getIfrbustBytes(int i10) {
                return this.ifrbust_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getIfrbustCount() {
                return this.ifrbust_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public boolean getInstl() {
                return this.instl_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public String getMime(int i10) {
                return this.mime_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public ByteString getMimeBytes(int i10) {
                return this.mime_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getMimeCount() {
                return this.mime_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public NativeFormat getNativefmt() {
                t1<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> t1Var = this.nativefmtBuilder_;
                if (t1Var == null) {
                    NativeFormat nativeFormat = this.nativefmt_;
                    if (nativeFormat == null) {
                        return NativeFormat.getDefaultInstance();
                    }
                    return nativeFormat;
                }
                return t1Var.e();
            }

            public NativeFormat.Builder getNativefmtBuilder() {
                onChanged();
                return getNativefmtFieldBuilder().d();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public NativeFormatOrBuilder getNativefmtOrBuilder() {
                t1<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> t1Var = this.nativefmtBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                NativeFormat nativeFormat = this.nativefmt_;
                if (nativeFormat == null) {
                    return NativeFormat.getDefaultInstance();
                }
                return nativeFormat;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public PlacementPosition getPos() {
                PlacementPosition valueOf = PlacementPosition.valueOf(this.pos_);
                if (valueOf == null) {
                    return PlacementPosition.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getPosValue() {
                return this.pos_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public boolean getPriv() {
                return this.priv_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public DisplayPlacementType getPtype() {
                DisplayPlacementType valueOf = DisplayPlacementType.valueOf(this.ptype_);
                if (valueOf == null) {
                    return DisplayPlacementType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getPtypeValue() {
                return this.ptype_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public boolean getTopframe() {
                return this.topframe_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public SizeUnit getUnit() {
                SizeUnit valueOf = SizeUnit.valueOf(this.unit_);
                if (valueOf == null) {
                    return SizeUnit.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getUnitValue() {
                return this.unit_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public int getW() {
                return this.w_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public boolean hasExt() {
                if (this.extBuilder_ == null && this.ext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public boolean hasNativefmt() {
                if (this.nativefmtBuilder_ == null && this.nativefmt_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.H.d(DisplayPlacement.class, Builder.class);
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

            public Builder mergeNativefmt(NativeFormat nativeFormat) {
                t1<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> t1Var = this.nativefmtBuilder_;
                if (t1Var == null) {
                    NativeFormat nativeFormat2 = this.nativefmt_;
                    if (nativeFormat2 != null) {
                        this.nativefmt_ = NativeFormat.newBuilder(nativeFormat2).mergeFrom(nativeFormat).buildPartial();
                    } else {
                        this.nativefmt_ = nativeFormat;
                    }
                    onChanged();
                } else {
                    t1Var.g(nativeFormat);
                }
                return this;
            }

            public Builder removeDisplayfmt(int i10) {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
                }
                return this;
            }

            public Builder removeEvent(int i10) {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    ensureEventIsMutable();
                    this.event_.remove(i10);
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

            public Builder setAmpren(int i10) {
                this.ampren_ = i10;
                onChanged();
                return this;
            }

            public Builder setApi(int i10, ApiFramework apiFramework) {
                apiFramework.getClass();
                ensureApiIsMutable();
                this.api_.set(i10, Integer.valueOf(apiFramework.getNumber()));
                onChanged();
                return this;
            }

            public Builder setApiValue(int i10, int i11) {
                ensureApiIsMutable();
                this.api_.set(i10, Integer.valueOf(i11));
                onChanged();
                return this;
            }

            public Builder setClktype(ClickType clickType) {
                clickType.getClass();
                this.clktype_ = clickType.getNumber();
                onChanged();
                return this;
            }

            public Builder setClktypeValue(int i10) {
                this.clktype_ = i10;
                onChanged();
                return this;
            }

            public Builder setContext(DisplayContextType displayContextType) {
                displayContextType.getClass();
                this.context_ = displayContextType.getNumber();
                onChanged();
                return this;
            }

            public Builder setContextValue(int i10) {
                this.context_ = i10;
                onChanged();
                return this;
            }

            public Builder setCtype(int i10, DisplayCreativeType displayCreativeType) {
                displayCreativeType.getClass();
                ensureCtypeIsMutable();
                this.ctype_.set(i10, Integer.valueOf(displayCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public Builder setCtypeValue(int i10, int i11) {
                ensureCtypeIsMutable();
                this.ctype_.set(i10, Integer.valueOf(i11));
                onChanged();
                return this;
            }

            public Builder setDisplayfmt(int i10, DisplayFormat displayFormat) {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    displayFormat.getClass();
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.set(i10, displayFormat);
                    onChanged();
                } else {
                    p1Var.w(i10, displayFormat);
                }
                return this;
            }

            public Builder setEvent(int i10, EventSpec eventSpec) {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    eventSpec.getClass();
                    ensureEventIsMutable();
                    this.event_.set(i10, eventSpec);
                    onChanged();
                } else {
                    p1Var.w(i10, eventSpec);
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

            public Builder setH(int i10) {
                this.h_ = i10;
                onChanged();
                return this;
            }

            public Builder setIfrbust(int i10, String str) {
                str.getClass();
                ensureIfrbustIsMutable();
                this.ifrbust_.set(i10, str);
                onChanged();
                return this;
            }

            public Builder setInstl(boolean z10) {
                this.instl_ = z10;
                onChanged();
                return this;
            }

            public Builder setMime(int i10, String str) {
                str.getClass();
                ensureMimeIsMutable();
                this.mime_.set(i10, str);
                onChanged();
                return this;
            }

            public Builder setNativefmt(NativeFormat nativeFormat) {
                t1<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> t1Var = this.nativefmtBuilder_;
                if (t1Var == null) {
                    nativeFormat.getClass();
                    this.nativefmt_ = nativeFormat;
                    onChanged();
                } else {
                    t1Var.i(nativeFormat);
                }
                return this;
            }

            public Builder setPos(PlacementPosition placementPosition) {
                placementPosition.getClass();
                this.pos_ = placementPosition.getNumber();
                onChanged();
                return this;
            }

            public Builder setPosValue(int i10) {
                this.pos_ = i10;
                onChanged();
                return this;
            }

            public Builder setPriv(boolean z10) {
                this.priv_ = z10;
                onChanged();
                return this;
            }

            public Builder setPtype(DisplayPlacementType displayPlacementType) {
                displayPlacementType.getClass();
                this.ptype_ = displayPlacementType.getNumber();
                onChanged();
                return this;
            }

            public Builder setPtypeValue(int i10) {
                this.ptype_ = i10;
                onChanged();
                return this;
            }

            public Builder setTopframe(boolean z10) {
                this.topframe_ = z10;
                onChanged();
                return this;
            }

            public Builder setUnit(SizeUnit sizeUnit) {
                sizeUnit.getClass();
                this.unit_ = sizeUnit.getNumber();
                onChanged();
                return this;
            }

            public Builder setUnitValue(int i10) {
                this.unit_ = i10;
                onChanged();
                return this;
            }

            public Builder setW(int i10) {
                this.w_ = i10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public m1 getIfrbustList() {
                return this.ifrbust_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public m1 getMimeList() {
                return this.mime_.getUnmodifiableView();
            }

            private Builder() {
                this.pos_ = 0;
                n0 n0Var = m0.f14459d;
                this.ifrbust_ = n0Var;
                this.clktype_ = 0;
                this.ptype_ = 0;
                this.context_ = 0;
                this.mime_ = n0Var;
                this.api_ = Collections.emptyList();
                this.ctype_ = Collections.emptyList();
                this.unit_ = 0;
                this.displayfmt_ = Collections.emptyList();
                this.event_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public DisplayPlacement build() {
                DisplayPlacement buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public DisplayPlacement buildPartial() {
                DisplayPlacement displayPlacement = new DisplayPlacement(this);
                displayPlacement.pos_ = this.pos_;
                displayPlacement.instl_ = this.instl_;
                displayPlacement.topframe_ = this.topframe_;
                if ((this.bitField0_ & 1) != 0) {
                    this.ifrbust_ = this.ifrbust_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                displayPlacement.ifrbust_ = this.ifrbust_;
                displayPlacement.clktype_ = this.clktype_;
                displayPlacement.ampren_ = this.ampren_;
                displayPlacement.ptype_ = this.ptype_;
                displayPlacement.context_ = this.context_;
                if ((this.bitField0_ & 2) != 0) {
                    this.mime_ = this.mime_.getUnmodifiableView();
                    this.bitField0_ &= -3;
                }
                displayPlacement.mime_ = this.mime_;
                if ((this.bitField0_ & 4) != 0) {
                    this.api_ = Collections.unmodifiableList(this.api_);
                    this.bitField0_ &= -5;
                }
                displayPlacement.api_ = this.api_;
                if ((this.bitField0_ & 8) != 0) {
                    this.ctype_ = Collections.unmodifiableList(this.ctype_);
                    this.bitField0_ &= -9;
                }
                displayPlacement.ctype_ = this.ctype_;
                displayPlacement.w_ = this.w_;
                displayPlacement.h_ = this.h_;
                displayPlacement.unit_ = this.unit_;
                displayPlacement.priv_ = this.priv_;
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var != null) {
                    displayPlacement.displayfmt_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 16) != 0) {
                        this.displayfmt_ = Collections.unmodifiableList(this.displayfmt_);
                        this.bitField0_ &= -17;
                    }
                    displayPlacement.displayfmt_ = this.displayfmt_;
                }
                t1<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> t1Var = this.nativefmtBuilder_;
                if (t1Var == null) {
                    displayPlacement.nativefmt_ = this.nativefmt_;
                } else {
                    displayPlacement.nativefmt_ = t1Var.a();
                }
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var2 = this.eventBuilder_;
                if (p1Var2 != null) {
                    displayPlacement.event_ = p1Var2.f();
                } else {
                    if ((this.bitField0_ & 32) != 0) {
                        this.event_ = Collections.unmodifiableList(this.event_);
                        this.bitField0_ &= -33;
                    }
                    displayPlacement.event_ = this.event_;
                }
                t1<Struct, Struct.Builder, x1> t1Var2 = this.extBuilder_;
                if (t1Var2 == null) {
                    displayPlacement.ext_ = this.ext_;
                } else {
                    displayPlacement.ext_ = t1Var2.a();
                }
                p1<Any, Any.Builder, e> p1Var3 = this.extProtoBuilder_;
                if (p1Var3 != null) {
                    displayPlacement.extProto_ = p1Var3.f();
                } else {
                    if ((this.bitField0_ & 64) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -65;
                    }
                    displayPlacement.extProto_ = this.extProto_;
                }
                onBuilt();
                return displayPlacement;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public DisplayPlacement mo4630getDefaultInstanceForType() {
                return DisplayPlacement.getDefaultInstance();
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

            public DisplayFormat.Builder addDisplayfmtBuilder(int i10) {
                return getDisplayfmtFieldBuilder().b(i10, DisplayFormat.getDefaultInstance());
            }

            public EventSpec.Builder addEventBuilder(int i10) {
                return getEventFieldBuilder().b(i10, EventSpec.getDefaultInstance());
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
                this.pos_ = 0;
                this.instl_ = false;
                this.topframe_ = false;
                n0 n0Var = m0.f14459d;
                this.ifrbust_ = n0Var;
                int i10 = this.bitField0_;
                this.clktype_ = 0;
                this.ampren_ = 0;
                this.ptype_ = 0;
                this.context_ = 0;
                this.mime_ = n0Var;
                this.bitField0_ = i10 & (-4);
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -5;
                this.ctype_ = Collections.emptyList();
                this.bitField0_ &= -9;
                this.w_ = 0;
                this.h_ = 0;
                this.unit_ = 0;
                this.priv_ = false;
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    this.displayfmt_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                } else {
                    p1Var.g();
                }
                if (this.nativefmtBuilder_ == null) {
                    this.nativefmt_ = null;
                } else {
                    this.nativefmt_ = null;
                    this.nativefmtBuilder_ = null;
                }
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var2 = this.eventBuilder_;
                if (p1Var2 == null) {
                    this.event_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                } else {
                    p1Var2.g();
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
                    this.bitField0_ &= -65;
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

            public Builder setNativefmt(NativeFormat.Builder builder) {
                t1<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> t1Var = this.nativefmtBuilder_;
                if (t1Var == null) {
                    this.nativefmt_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder addDisplayfmt(int i10, DisplayFormat displayFormat) {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    displayFormat.getClass();
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.add(i10, displayFormat);
                    onChanged();
                } else {
                    p1Var.d(i10, displayFormat);
                }
                return this;
            }

            public Builder addEvent(int i10, EventSpec eventSpec) {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    eventSpec.getClass();
                    ensureEventIsMutable();
                    this.event_.add(i10, eventSpec);
                    onChanged();
                } else {
                    p1Var.d(i10, eventSpec);
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
                if (message instanceof DisplayPlacement) {
                    return mergeFrom((DisplayPlacement) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setDisplayfmt(int i10, DisplayFormat.Builder builder) {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder setEvent(int i10, EventSpec.Builder builder) {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    ensureEventIsMutable();
                    this.event_.set(i10, builder.build());
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

            public Builder mergeFrom(DisplayPlacement displayPlacement) {
                if (displayPlacement == DisplayPlacement.getDefaultInstance()) {
                    return this;
                }
                if (displayPlacement.pos_ != 0) {
                    setPosValue(displayPlacement.getPosValue());
                }
                if (displayPlacement.getInstl()) {
                    setInstl(displayPlacement.getInstl());
                }
                if (displayPlacement.getTopframe()) {
                    setTopframe(displayPlacement.getTopframe());
                }
                if (!displayPlacement.ifrbust_.isEmpty()) {
                    if (this.ifrbust_.isEmpty()) {
                        this.ifrbust_ = displayPlacement.ifrbust_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureIfrbustIsMutable();
                        this.ifrbust_.addAll(displayPlacement.ifrbust_);
                    }
                    onChanged();
                }
                if (displayPlacement.clktype_ != 0) {
                    setClktypeValue(displayPlacement.getClktypeValue());
                }
                if (displayPlacement.getAmpren() != 0) {
                    setAmpren(displayPlacement.getAmpren());
                }
                if (displayPlacement.ptype_ != 0) {
                    setPtypeValue(displayPlacement.getPtypeValue());
                }
                if (displayPlacement.context_ != 0) {
                    setContextValue(displayPlacement.getContextValue());
                }
                if (!displayPlacement.mime_.isEmpty()) {
                    if (this.mime_.isEmpty()) {
                        this.mime_ = displayPlacement.mime_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureMimeIsMutable();
                        this.mime_.addAll(displayPlacement.mime_);
                    }
                    onChanged();
                }
                if (!displayPlacement.api_.isEmpty()) {
                    if (this.api_.isEmpty()) {
                        this.api_ = displayPlacement.api_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureApiIsMutable();
                        this.api_.addAll(displayPlacement.api_);
                    }
                    onChanged();
                }
                if (!displayPlacement.ctype_.isEmpty()) {
                    if (this.ctype_.isEmpty()) {
                        this.ctype_ = displayPlacement.ctype_;
                        this.bitField0_ &= -9;
                    } else {
                        ensureCtypeIsMutable();
                        this.ctype_.addAll(displayPlacement.ctype_);
                    }
                    onChanged();
                }
                if (displayPlacement.getW() != 0) {
                    setW(displayPlacement.getW());
                }
                if (displayPlacement.getH() != 0) {
                    setH(displayPlacement.getH());
                }
                if (displayPlacement.unit_ != 0) {
                    setUnitValue(displayPlacement.getUnitValue());
                }
                if (displayPlacement.getPriv()) {
                    setPriv(displayPlacement.getPriv());
                }
                if (this.displayfmtBuilder_ == null) {
                    if (!displayPlacement.displayfmt_.isEmpty()) {
                        if (this.displayfmt_.isEmpty()) {
                            this.displayfmt_ = displayPlacement.displayfmt_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureDisplayfmtIsMutable();
                            this.displayfmt_.addAll(displayPlacement.displayfmt_);
                        }
                        onChanged();
                    }
                } else if (!displayPlacement.displayfmt_.isEmpty()) {
                    if (!this.displayfmtBuilder_.t()) {
                        this.displayfmtBuilder_.a(displayPlacement.displayfmt_);
                    } else {
                        this.displayfmtBuilder_.h();
                        this.displayfmtBuilder_ = null;
                        this.displayfmt_ = displayPlacement.displayfmt_;
                        this.bitField0_ &= -17;
                        this.displayfmtBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDisplayfmtFieldBuilder() : null;
                    }
                }
                if (displayPlacement.hasNativefmt()) {
                    mergeNativefmt(displayPlacement.getNativefmt());
                }
                if (this.eventBuilder_ == null) {
                    if (!displayPlacement.event_.isEmpty()) {
                        if (this.event_.isEmpty()) {
                            this.event_ = displayPlacement.event_;
                            this.bitField0_ &= -33;
                        } else {
                            ensureEventIsMutable();
                            this.event_.addAll(displayPlacement.event_);
                        }
                        onChanged();
                    }
                } else if (!displayPlacement.event_.isEmpty()) {
                    if (!this.eventBuilder_.t()) {
                        this.eventBuilder_.a(displayPlacement.event_);
                    } else {
                        this.eventBuilder_.h();
                        this.eventBuilder_ = null;
                        this.event_ = displayPlacement.event_;
                        this.bitField0_ &= -33;
                        this.eventBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getEventFieldBuilder() : null;
                    }
                }
                if (displayPlacement.hasExt()) {
                    mergeExt(displayPlacement.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!displayPlacement.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = displayPlacement.extProto_;
                            this.bitField0_ &= -65;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(displayPlacement.extProto_);
                        }
                        onChanged();
                    }
                } else if (!displayPlacement.extProto_.isEmpty()) {
                    if (!this.extProtoBuilder_.t()) {
                        this.extProtoBuilder_.a(displayPlacement.extProto_);
                    } else {
                        this.extProtoBuilder_.h();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = displayPlacement.extProto_;
                        this.bitField0_ &= -65;
                        this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) displayPlacement).unknownFields);
                onChanged();
                return this;
            }

            public Builder addDisplayfmt(DisplayFormat.Builder builder) {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addEvent(EventSpec.Builder builder) {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    ensureEventIsMutable();
                    this.event_.add(builder.build());
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

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.pos_ = 0;
                n0 n0Var = m0.f14459d;
                this.ifrbust_ = n0Var;
                this.clktype_ = 0;
                this.ptype_ = 0;
                this.context_ = 0;
                this.mime_ = n0Var;
                this.api_ = Collections.emptyList();
                this.ctype_ = Collections.emptyList();
                this.unit_ = 0;
                this.displayfmt_ = Collections.emptyList();
                this.event_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addDisplayfmt(int i10, DisplayFormat.Builder builder) {
                p1<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> p1Var = this.displayfmtBuilder_;
                if (p1Var == null) {
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.add(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.d(i10, builder.build());
                }
                return this;
            }

            public Builder addEvent(int i10, EventSpec.Builder builder) {
                p1<EventSpec, EventSpec.Builder, EventSpecOrBuilder> p1Var = this.eventBuilder_;
                if (p1Var == null) {
                    ensureEventIsMutable();
                    this.event_.add(i10, builder.build());
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

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.adcom.Placement.DisplayPlacement.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.access$13500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.explorestack.protobuf.adcom.Placement$DisplayPlacement r3 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.explorestack.protobuf.adcom.Placement$DisplayPlacement r4 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$Builder");
            }
        }

        /* loaded from: classes3.dex */
        public static final class DisplayFormat extends GeneratedMessageV3 implements DisplayFormatOrBuilder {
            public static final int EXPDIR_FIELD_NUMBER = 5;
            public static final int EXT_FIELD_NUMBER = 7;
            public static final int EXT_PROTO_FIELD_NUMBER = 6;
            public static final int HRATIO_FIELD_NUMBER = 4;
            public static final int H_FIELD_NUMBER = 2;
            public static final int WRATIO_FIELD_NUMBER = 3;
            public static final int W_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int expdirMemoizedSerializedSize;
            private List<Integer> expdir_;
            private List<Any> extProto_;
            private Struct ext_;
            private int h_;
            private int hratio_;
            private byte memoizedIsInitialized;
            private int w_;
            private int wratio_;
            private static final i0.h.a<Integer, ExpandableDirection> expdir_converter_ = new i0.h.a<Integer, ExpandableDirection>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat.1
                @Override // com.explorestack.protobuf.i0.h.a
                public ExpandableDirection convert(Integer num) {
                    ExpandableDirection valueOf = ExpandableDirection.valueOf(num.intValue());
                    return valueOf == null ? ExpandableDirection.UNRECOGNIZED : valueOf;
                }
            };
            private static final DisplayFormat DEFAULT_INSTANCE = new DisplayFormat();
            private static final j1<DisplayFormat> PARSER = new com.explorestack.protobuf.b<DisplayFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat.2
                @Override // com.explorestack.protobuf.j1
                public DisplayFormat parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new DisplayFormat(nVar, yVar);
                }
            };

            public static DisplayFormat getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.I;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static DisplayFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static DisplayFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<DisplayFormat> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof DisplayFormat)) {
                    return super.equals(obj);
                }
                DisplayFormat displayFormat = (DisplayFormat) obj;
                if (getW() != displayFormat.getW() || getH() != displayFormat.getH() || getWratio() != displayFormat.getWratio() || getHratio() != displayFormat.getHratio() || !this.expdir_.equals(displayFormat.expdir_) || hasExt() != displayFormat.hasExt()) {
                    return false;
                }
                if ((!hasExt() || getExt().equals(displayFormat.getExt())) && getExtProtoList().equals(displayFormat.getExtProtoList()) && this.unknownFields.equals(displayFormat.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public ExpandableDirection getExpdir(int i10) {
                return expdir_converter_.convert(this.expdir_.get(i10));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public int getExpdirCount() {
                return this.expdir_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public List<ExpandableDirection> getExpdirList() {
                return new i0.h(this.expdir_, expdir_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public int getExpdirValue(int i10) {
                return this.expdir_.get(i10).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public List<Integer> getExpdirValueList() {
                return this.expdir_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public Struct getExt() {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public x1 getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public Any getExtProto(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public int getH() {
                return this.h_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public int getHratio() {
                return this.hratio_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<DisplayFormat> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                int i12 = this.w_;
                if (i12 != 0) {
                    i10 = CodedOutputStream.Y(1, i12);
                } else {
                    i10 = 0;
                }
                int i13 = this.h_;
                if (i13 != 0) {
                    i10 += CodedOutputStream.Y(2, i13);
                }
                int i14 = this.wratio_;
                if (i14 != 0) {
                    i10 += CodedOutputStream.Y(3, i14);
                }
                int i15 = this.hratio_;
                if (i15 != 0) {
                    i10 += CodedOutputStream.Y(4, i15);
                }
                int i16 = 0;
                for (int i17 = 0; i17 < this.expdir_.size(); i17++) {
                    i16 += CodedOutputStream.m(this.expdir_.get(i17).intValue());
                }
                int i18 = i10 + i16;
                if (!getExpdirList().isEmpty()) {
                    i18 = i18 + 1 + CodedOutputStream.Z(i16);
                }
                this.expdirMemoizedSerializedSize = i16;
                for (int i19 = 0; i19 < this.extProto_.size(); i19++) {
                    i18 += CodedOutputStream.G(6, this.extProto_.get(i19));
                }
                if (this.ext_ != null) {
                    i18 += CodedOutputStream.G(7, getExt());
                }
                int serializedSize = i18 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public int getW() {
                return this.w_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public int getWratio() {
                return this.wratio_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
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
                int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getW()) * 37) + 2) * 53) + getH()) * 37) + 3) * 53) + getWratio()) * 37) + 4) * 53) + getHratio();
                if (getExpdirCount() > 0) {
                    hashCode = (((hashCode * 37) + 5) * 53) + this.expdir_.hashCode();
                }
                if (hasExt()) {
                    hashCode = (((hashCode * 37) + 7) * 53) + getExt().hashCode();
                }
                if (getExtProtoCount() > 0) {
                    hashCode = (((hashCode * 37) + 6) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.J.d(DisplayFormat.class, Builder.class);
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
                return new DisplayFormat();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                int i10 = this.w_;
                if (i10 != 0) {
                    codedOutputStream.c1(1, i10);
                }
                int i11 = this.h_;
                if (i11 != 0) {
                    codedOutputStream.c1(2, i11);
                }
                int i12 = this.wratio_;
                if (i12 != 0) {
                    codedOutputStream.c1(3, i12);
                }
                int i13 = this.hratio_;
                if (i13 != 0) {
                    codedOutputStream.c1(4, i13);
                }
                if (getExpdirList().size() > 0) {
                    codedOutputStream.d1(42);
                    codedOutputStream.d1(this.expdirMemoizedSerializedSize);
                }
                for (int i14 = 0; i14 < this.expdir_.size(); i14++) {
                    codedOutputStream.w0(this.expdir_.get(i14).intValue());
                }
                for (int i15 = 0; i15 < this.extProto_.size(); i15++) {
                    codedOutputStream.L0(6, this.extProto_.get(i15));
                }
                if (this.ext_ != null) {
                    codedOutputStream.L0(7, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements DisplayFormatOrBuilder {
                private int bitField0_;
                private List<Integer> expdir_;
                private t1<Struct, Struct.Builder, x1> extBuilder_;
                private p1<Any, Any.Builder, e> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private int h_;
                private int hratio_;
                private int w_;
                private int wratio_;

                private void ensureExpdirIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.expdir_ = new ArrayList(this.expdir_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 2;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.I;
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
                        if ((this.bitField0_ & 2) != 0) {
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

                public Builder addAllExpdir(Iterable<? extends ExpandableDirection> iterable) {
                    ensureExpdirIsMutable();
                    for (ExpandableDirection expandableDirection : iterable) {
                        this.expdir_.add(Integer.valueOf(expandableDirection.getNumber()));
                    }
                    onChanged();
                    return this;
                }

                public Builder addAllExpdirValue(Iterable<Integer> iterable) {
                    ensureExpdirIsMutable();
                    for (Integer num : iterable) {
                        num.intValue();
                        this.expdir_.add(num);
                    }
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

                public Builder addExpdir(ExpandableDirection expandableDirection) {
                    expandableDirection.getClass();
                    ensureExpdirIsMutable();
                    this.expdir_.add(Integer.valueOf(expandableDirection.getNumber()));
                    onChanged();
                    return this;
                }

                public Builder addExpdirValue(int i10) {
                    ensureExpdirIsMutable();
                    this.expdir_.add(Integer.valueOf(i10));
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

                public Builder clearExpdir() {
                    this.expdir_ = Collections.emptyList();
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
                        this.bitField0_ &= -3;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder clearH() {
                    this.h_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearHratio() {
                    this.hratio_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearW() {
                    this.w_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearWratio() {
                    this.wratio_ = 0;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.I;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public ExpandableDirection getExpdir(int i10) {
                    return (ExpandableDirection) DisplayFormat.expdir_converter_.convert(this.expdir_.get(i10));
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public int getExpdirCount() {
                    return this.expdir_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public List<ExpandableDirection> getExpdirList() {
                    return new i0.h(this.expdir_, DisplayFormat.expdir_converter_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public int getExpdirValue(int i10) {
                    return this.expdir_.get(i10).intValue();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public List<Integer> getExpdirValueList() {
                    return Collections.unmodifiableList(this.expdir_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public int getExtProtoCount() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.size();
                    }
                    return p1Var.m();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public List<Any> getExtProtoList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.extProto_);
                    }
                    return p1Var.p();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public e getExtProtoOrBuilder(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public List<? extends e> getExtProtoOrBuilderList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public int getH() {
                    return this.h_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public int getHratio() {
                    return this.hratio_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public int getW() {
                    return this.w_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public int getWratio() {
                    return this.wratio_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public boolean hasExt() {
                    if (this.extBuilder_ == null && this.ext_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.J.d(DisplayFormat.class, Builder.class);
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

                public Builder setExpdir(int i10, ExpandableDirection expandableDirection) {
                    expandableDirection.getClass();
                    ensureExpdirIsMutable();
                    this.expdir_.set(i10, Integer.valueOf(expandableDirection.getNumber()));
                    onChanged();
                    return this;
                }

                public Builder setExpdirValue(int i10, int i11) {
                    ensureExpdirIsMutable();
                    this.expdir_.set(i10, Integer.valueOf(i11));
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

                public Builder setH(int i10) {
                    this.h_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setHratio(int i10) {
                    this.hratio_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setW(int i10) {
                    this.w_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setWratio(int i10) {
                    this.wratio_ = i10;
                    onChanged();
                    return this;
                }

                private Builder() {
                    this.expdir_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public DisplayFormat build() {
                    DisplayFormat buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public DisplayFormat buildPartial() {
                    DisplayFormat displayFormat = new DisplayFormat(this);
                    displayFormat.w_ = this.w_;
                    displayFormat.h_ = this.h_;
                    displayFormat.wratio_ = this.wratio_;
                    displayFormat.hratio_ = this.hratio_;
                    if ((this.bitField0_ & 1) != 0) {
                        this.expdir_ = Collections.unmodifiableList(this.expdir_);
                        this.bitField0_ &= -2;
                    }
                    displayFormat.expdir_ = this.expdir_;
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        displayFormat.ext_ = this.ext_;
                    } else {
                        displayFormat.ext_ = t1Var.a();
                    }
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        displayFormat.extProto_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 2) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -3;
                        }
                        displayFormat.extProto_ = this.extProto_;
                    }
                    onBuilt();
                    return displayFormat;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public DisplayFormat mo4630getDefaultInstanceForType() {
                    return DisplayFormat.getDefaultInstance();
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
                    this.w_ = 0;
                    this.h_ = 0;
                    this.wratio_ = 0;
                    this.hratio_ = 0;
                    this.expdir_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    if (this.extBuilder_ == null) {
                        this.ext_ = null;
                    } else {
                        this.ext_ = null;
                        this.extBuilder_ = null;
                    }
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        this.extProto_ = Collections.emptyList();
                        this.bitField0_ &= -3;
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

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.expdir_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
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
                    if (message instanceof DisplayFormat) {
                        return mergeFrom((DisplayFormat) message);
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

                public Builder mergeFrom(DisplayFormat displayFormat) {
                    if (displayFormat == DisplayFormat.getDefaultInstance()) {
                        return this;
                    }
                    if (displayFormat.getW() != 0) {
                        setW(displayFormat.getW());
                    }
                    if (displayFormat.getH() != 0) {
                        setH(displayFormat.getH());
                    }
                    if (displayFormat.getWratio() != 0) {
                        setWratio(displayFormat.getWratio());
                    }
                    if (displayFormat.getHratio() != 0) {
                        setHratio(displayFormat.getHratio());
                    }
                    if (!displayFormat.expdir_.isEmpty()) {
                        if (this.expdir_.isEmpty()) {
                            this.expdir_ = displayFormat.expdir_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureExpdirIsMutable();
                            this.expdir_.addAll(displayFormat.expdir_);
                        }
                        onChanged();
                    }
                    if (displayFormat.hasExt()) {
                        mergeExt(displayFormat.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!displayFormat.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = displayFormat.extProto_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(displayFormat.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!displayFormat.extProto_.isEmpty()) {
                        if (!this.extProtoBuilder_.t()) {
                            this.extProtoBuilder_.a(displayFormat.extProto_);
                        } else {
                            this.extProtoBuilder_.h();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = displayFormat.extProto_;
                            this.bitField0_ &= -3;
                            this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) displayFormat).unknownFields);
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
                public com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat.access$1300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$DisplayFormat r3 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$DisplayFormat r4 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$DisplayFormat$Builder");
                }
            }

            public static Builder newBuilder(DisplayFormat displayFormat) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(displayFormat);
            }

            public static DisplayFormat parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private DisplayFormat(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static DisplayFormat parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static DisplayFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public DisplayFormat mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static DisplayFormat parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private DisplayFormat() {
                this.memoizedIsInitialized = (byte) -1;
                this.expdir_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
            }

            public static DisplayFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static DisplayFormat parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static DisplayFormat parseFrom(InputStream inputStream) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private DisplayFormat(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                    this.w_ = nVar.L();
                                } else if (K == 16) {
                                    this.h_ = nVar.L();
                                } else if (K == 24) {
                                    this.wratio_ = nVar.L();
                                } else if (K == 32) {
                                    this.hratio_ = nVar.L();
                                } else if (K == 40) {
                                    int t10 = nVar.t();
                                    if (!(z11 & true)) {
                                        this.expdir_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.expdir_.add(Integer.valueOf(t10));
                                } else if (K == 42) {
                                    int p10 = nVar.p(nVar.C());
                                    while (nVar.d() > 0) {
                                        int t11 = nVar.t();
                                        if (!(z11 & true)) {
                                            this.expdir_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        this.expdir_.add(Integer.valueOf(t11));
                                    }
                                    nVar.o(p10);
                                } else if (K == 50) {
                                    if (!(z11 & true)) {
                                        this.extProto_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.extProto_.add(nVar.A(Any.parser(), yVar));
                                } else if (K != 58) {
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
                            this.expdir_ = Collections.unmodifiableList(this.expdir_);
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
                    this.expdir_ = Collections.unmodifiableList(this.expdir_);
                }
                if (z11 & true) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static DisplayFormat parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static DisplayFormat parseFrom(n nVar) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static DisplayFormat parseFrom(n nVar, y yVar) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes3.dex */
        public interface DisplayFormatOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            ExpandableDirection getExpdir(int i10);

            int getExpdirCount();

            List<ExpandableDirection> getExpdirList();

            int getExpdirValue(int i10);

            List<Integer> getExpdirValueList();

            Struct getExt();

            x1 getExtOrBuilder();

            Any getExtProto(int i10);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            e getExtProtoOrBuilder(int i10);

            List<? extends e> getExtProtoOrBuilderList();

            int getH();

            int getHratio();

            int getW();

            int getWratio();

            boolean hasExt();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes3.dex */
        public static final class EventSpec extends GeneratedMessageV3 implements EventSpecOrBuilder {
            public static final int API_FIELD_NUMBER = 3;
            public static final int EXT_FIELD_NUMBER = 9;
            public static final int EXT_PROTO_FIELD_NUMBER = 8;
            public static final int JSTRK_FIELD_NUMBER = 4;
            public static final int METHOD_FIELD_NUMBER = 2;
            public static final int PXTRK_FIELD_NUMBER = 6;
            public static final int TYPE_FIELD_NUMBER = 1;
            public static final int WJS_FIELD_NUMBER = 5;
            public static final int WPX_FIELD_NUMBER = 7;
            private static final long serialVersionUID = 0;
            private int apiMemoizedSerializedSize;
            private List<Integer> api_;
            private List<Any> extProto_;
            private Struct ext_;
            private n0 jstrk_;
            private byte memoizedIsInitialized;
            private int methodMemoizedSerializedSize;
            private List<Integer> method_;
            private n0 pxtrk_;
            private int type_;
            private boolean wjs_;
            private boolean wpx_;
            private static final i0.h.a<Integer, EventTrackingMethod> method_converter_ = new i0.h.a<Integer, EventTrackingMethod>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.1
                @Override // com.explorestack.protobuf.i0.h.a
                public EventTrackingMethod convert(Integer num) {
                    EventTrackingMethod valueOf = EventTrackingMethod.valueOf(num.intValue());
                    return valueOf == null ? EventTrackingMethod.UNRECOGNIZED : valueOf;
                }
            };
            private static final i0.h.a<Integer, ApiFramework> api_converter_ = new i0.h.a<Integer, ApiFramework>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.2
                @Override // com.explorestack.protobuf.i0.h.a
                public ApiFramework convert(Integer num) {
                    ApiFramework valueOf = ApiFramework.valueOf(num.intValue());
                    return valueOf == null ? ApiFramework.UNRECOGNIZED : valueOf;
                }
            };
            private static final EventSpec DEFAULT_INSTANCE = new EventSpec();
            private static final j1<EventSpec> PARSER = new com.explorestack.protobuf.b<EventSpec>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.3
                @Override // com.explorestack.protobuf.j1
                public EventSpec parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new EventSpec(nVar, yVar);
                }
            };

            /* loaded from: classes3.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements EventSpecOrBuilder {
                private List<Integer> api_;
                private int bitField0_;
                private t1<Struct, Struct.Builder, x1> extBuilder_;
                private p1<Any, Any.Builder, e> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private n0 jstrk_;
                private List<Integer> method_;
                private n0 pxtrk_;
                private int type_;
                private boolean wjs_;
                private boolean wpx_;

                private void ensureApiIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.api_ = new ArrayList(this.api_);
                        this.bitField0_ |= 2;
                    }
                }

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 16) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 16;
                    }
                }

                private void ensureJstrkIsMutable() {
                    if ((this.bitField0_ & 4) == 0) {
                        this.jstrk_ = new m0(this.jstrk_);
                        this.bitField0_ |= 4;
                    }
                }

                private void ensureMethodIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.method_ = new ArrayList(this.method_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensurePxtrkIsMutable() {
                    if ((this.bitField0_ & 8) == 0) {
                        this.pxtrk_ = new m0(this.pxtrk_);
                        this.bitField0_ |= 8;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.U;
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
                        if ((this.bitField0_ & 16) != 0) {
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

                public Builder addAllApi(Iterable<? extends ApiFramework> iterable) {
                    ensureApiIsMutable();
                    for (ApiFramework apiFramework : iterable) {
                        this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                    }
                    onChanged();
                    return this;
                }

                public Builder addAllApiValue(Iterable<Integer> iterable) {
                    ensureApiIsMutable();
                    for (Integer num : iterable) {
                        num.intValue();
                        this.api_.add(num);
                    }
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

                public Builder addAllJstrk(Iterable<String> iterable) {
                    ensureJstrkIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.jstrk_);
                    onChanged();
                    return this;
                }

                public Builder addAllMethod(Iterable<? extends EventTrackingMethod> iterable) {
                    ensureMethodIsMutable();
                    for (EventTrackingMethod eventTrackingMethod : iterable) {
                        this.method_.add(Integer.valueOf(eventTrackingMethod.getNumber()));
                    }
                    onChanged();
                    return this;
                }

                public Builder addAllMethodValue(Iterable<Integer> iterable) {
                    ensureMethodIsMutable();
                    for (Integer num : iterable) {
                        num.intValue();
                        this.method_.add(num);
                    }
                    onChanged();
                    return this;
                }

                public Builder addAllPxtrk(Iterable<String> iterable) {
                    ensurePxtrkIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.pxtrk_);
                    onChanged();
                    return this;
                }

                public Builder addApi(ApiFramework apiFramework) {
                    apiFramework.getClass();
                    ensureApiIsMutable();
                    this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                    onChanged();
                    return this;
                }

                public Builder addApiValue(int i10) {
                    ensureApiIsMutable();
                    this.api_.add(Integer.valueOf(i10));
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

                public Builder addJstrk(String str) {
                    str.getClass();
                    ensureJstrkIsMutable();
                    this.jstrk_.add(str);
                    onChanged();
                    return this;
                }

                public Builder addJstrkBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    ensureJstrkIsMutable();
                    this.jstrk_.b(byteString);
                    onChanged();
                    return this;
                }

                public Builder addMethod(EventTrackingMethod eventTrackingMethod) {
                    eventTrackingMethod.getClass();
                    ensureMethodIsMutable();
                    this.method_.add(Integer.valueOf(eventTrackingMethod.getNumber()));
                    onChanged();
                    return this;
                }

                public Builder addMethodValue(int i10) {
                    ensureMethodIsMutable();
                    this.method_.add(Integer.valueOf(i10));
                    onChanged();
                    return this;
                }

                public Builder addPxtrk(String str) {
                    str.getClass();
                    ensurePxtrkIsMutable();
                    this.pxtrk_.add(str);
                    onChanged();
                    return this;
                }

                public Builder addPxtrkBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    ensurePxtrkIsMutable();
                    this.pxtrk_.b(byteString);
                    onChanged();
                    return this;
                }

                public Builder clearApi() {
                    this.api_ = Collections.emptyList();
                    this.bitField0_ &= -3;
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
                        this.bitField0_ &= -17;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder clearJstrk() {
                    this.jstrk_ = m0.f14459d;
                    this.bitField0_ &= -5;
                    onChanged();
                    return this;
                }

                public Builder clearMethod() {
                    this.method_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public Builder clearPxtrk() {
                    this.pxtrk_ = m0.f14459d;
                    this.bitField0_ &= -9;
                    onChanged();
                    return this;
                }

                public Builder clearType() {
                    this.type_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearWjs() {
                    this.wjs_ = false;
                    onChanged();
                    return this;
                }

                public Builder clearWpx() {
                    this.wpx_ = false;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public ApiFramework getApi(int i10) {
                    return (ApiFramework) EventSpec.api_converter_.convert(this.api_.get(i10));
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public int getApiCount() {
                    return this.api_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public List<ApiFramework> getApiList() {
                    return new i0.h(this.api_, EventSpec.api_converter_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public int getApiValue(int i10) {
                    return this.api_.get(i10).intValue();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public List<Integer> getApiValueList() {
                    return Collections.unmodifiableList(this.api_);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.U;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public int getExtProtoCount() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.size();
                    }
                    return p1Var.m();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public List<Any> getExtProtoList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.extProto_);
                    }
                    return p1Var.p();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public e getExtProtoOrBuilder(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public List<? extends e> getExtProtoOrBuilderList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public String getJstrk(int i10) {
                    return this.jstrk_.get(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public ByteString getJstrkBytes(int i10) {
                    return this.jstrk_.getByteString(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public int getJstrkCount() {
                    return this.jstrk_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public EventTrackingMethod getMethod(int i10) {
                    return (EventTrackingMethod) EventSpec.method_converter_.convert(this.method_.get(i10));
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public int getMethodCount() {
                    return this.method_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public List<EventTrackingMethod> getMethodList() {
                    return new i0.h(this.method_, EventSpec.method_converter_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public int getMethodValue(int i10) {
                    return this.method_.get(i10).intValue();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public List<Integer> getMethodValueList() {
                    return Collections.unmodifiableList(this.method_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public String getPxtrk(int i10) {
                    return this.pxtrk_.get(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public ByteString getPxtrkBytes(int i10) {
                    return this.pxtrk_.getByteString(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public int getPxtrkCount() {
                    return this.pxtrk_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public EventType getType() {
                    EventType valueOf = EventType.valueOf(this.type_);
                    if (valueOf == null) {
                        return EventType.UNRECOGNIZED;
                    }
                    return valueOf;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public int getTypeValue() {
                    return this.type_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public boolean getWjs() {
                    return this.wjs_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public boolean getWpx() {
                    return this.wpx_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public boolean hasExt() {
                    if (this.extBuilder_ == null && this.ext_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.V.d(EventSpec.class, Builder.class);
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

                public Builder setApi(int i10, ApiFramework apiFramework) {
                    apiFramework.getClass();
                    ensureApiIsMutable();
                    this.api_.set(i10, Integer.valueOf(apiFramework.getNumber()));
                    onChanged();
                    return this;
                }

                public Builder setApiValue(int i10, int i11) {
                    ensureApiIsMutable();
                    this.api_.set(i10, Integer.valueOf(i11));
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

                public Builder setJstrk(int i10, String str) {
                    str.getClass();
                    ensureJstrkIsMutable();
                    this.jstrk_.set(i10, str);
                    onChanged();
                    return this;
                }

                public Builder setMethod(int i10, EventTrackingMethod eventTrackingMethod) {
                    eventTrackingMethod.getClass();
                    ensureMethodIsMutable();
                    this.method_.set(i10, Integer.valueOf(eventTrackingMethod.getNumber()));
                    onChanged();
                    return this;
                }

                public Builder setMethodValue(int i10, int i11) {
                    ensureMethodIsMutable();
                    this.method_.set(i10, Integer.valueOf(i11));
                    onChanged();
                    return this;
                }

                public Builder setPxtrk(int i10, String str) {
                    str.getClass();
                    ensurePxtrkIsMutable();
                    this.pxtrk_.set(i10, str);
                    onChanged();
                    return this;
                }

                public Builder setType(EventType eventType) {
                    eventType.getClass();
                    this.type_ = eventType.getNumber();
                    onChanged();
                    return this;
                }

                public Builder setTypeValue(int i10) {
                    this.type_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setWjs(boolean z10) {
                    this.wjs_ = z10;
                    onChanged();
                    return this;
                }

                public Builder setWpx(boolean z10) {
                    this.wpx_ = z10;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public m1 getJstrkList() {
                    return this.jstrk_.getUnmodifiableView();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public m1 getPxtrkList() {
                    return this.pxtrk_.getUnmodifiableView();
                }

                private Builder() {
                    this.type_ = 0;
                    this.method_ = Collections.emptyList();
                    this.api_ = Collections.emptyList();
                    n0 n0Var = m0.f14459d;
                    this.jstrk_ = n0Var;
                    this.pxtrk_ = n0Var;
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public EventSpec build() {
                    EventSpec buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public EventSpec buildPartial() {
                    EventSpec eventSpec = new EventSpec(this);
                    eventSpec.type_ = this.type_;
                    if ((this.bitField0_ & 1) != 0) {
                        this.method_ = Collections.unmodifiableList(this.method_);
                        this.bitField0_ &= -2;
                    }
                    eventSpec.method_ = this.method_;
                    if ((this.bitField0_ & 2) != 0) {
                        this.api_ = Collections.unmodifiableList(this.api_);
                        this.bitField0_ &= -3;
                    }
                    eventSpec.api_ = this.api_;
                    if ((this.bitField0_ & 4) != 0) {
                        this.jstrk_ = this.jstrk_.getUnmodifiableView();
                        this.bitField0_ &= -5;
                    }
                    eventSpec.jstrk_ = this.jstrk_;
                    eventSpec.wjs_ = this.wjs_;
                    if ((this.bitField0_ & 8) != 0) {
                        this.pxtrk_ = this.pxtrk_.getUnmodifiableView();
                        this.bitField0_ &= -9;
                    }
                    eventSpec.pxtrk_ = this.pxtrk_;
                    eventSpec.wpx_ = this.wpx_;
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        eventSpec.ext_ = this.ext_;
                    } else {
                        eventSpec.ext_ = t1Var.a();
                    }
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        eventSpec.extProto_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 16) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -17;
                        }
                        eventSpec.extProto_ = this.extProto_;
                    }
                    onBuilt();
                    return eventSpec;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public EventSpec mo4630getDefaultInstanceForType() {
                    return EventSpec.getDefaultInstance();
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
                    this.type_ = 0;
                    this.method_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    this.api_ = Collections.emptyList();
                    int i10 = this.bitField0_;
                    this.bitField0_ = i10 & (-3);
                    n0 n0Var = m0.f14459d;
                    this.jstrk_ = n0Var;
                    this.wjs_ = false;
                    this.pxtrk_ = n0Var;
                    this.bitField0_ = i10 & (-15);
                    this.wpx_ = false;
                    if (this.extBuilder_ == null) {
                        this.ext_ = null;
                    } else {
                        this.ext_ = null;
                        this.extBuilder_ = null;
                    }
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        this.extProto_ = Collections.emptyList();
                        this.bitField0_ &= -17;
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
                    if (message instanceof EventSpec) {
                        return mergeFrom((EventSpec) message);
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

                public Builder mergeFrom(EventSpec eventSpec) {
                    if (eventSpec == EventSpec.getDefaultInstance()) {
                        return this;
                    }
                    if (eventSpec.type_ != 0) {
                        setTypeValue(eventSpec.getTypeValue());
                    }
                    if (!eventSpec.method_.isEmpty()) {
                        if (this.method_.isEmpty()) {
                            this.method_ = eventSpec.method_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureMethodIsMutable();
                            this.method_.addAll(eventSpec.method_);
                        }
                        onChanged();
                    }
                    if (!eventSpec.api_.isEmpty()) {
                        if (this.api_.isEmpty()) {
                            this.api_ = eventSpec.api_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureApiIsMutable();
                            this.api_.addAll(eventSpec.api_);
                        }
                        onChanged();
                    }
                    if (!eventSpec.jstrk_.isEmpty()) {
                        if (this.jstrk_.isEmpty()) {
                            this.jstrk_ = eventSpec.jstrk_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureJstrkIsMutable();
                            this.jstrk_.addAll(eventSpec.jstrk_);
                        }
                        onChanged();
                    }
                    if (eventSpec.getWjs()) {
                        setWjs(eventSpec.getWjs());
                    }
                    if (!eventSpec.pxtrk_.isEmpty()) {
                        if (this.pxtrk_.isEmpty()) {
                            this.pxtrk_ = eventSpec.pxtrk_;
                            this.bitField0_ &= -9;
                        } else {
                            ensurePxtrkIsMutable();
                            this.pxtrk_.addAll(eventSpec.pxtrk_);
                        }
                        onChanged();
                    }
                    if (eventSpec.getWpx()) {
                        setWpx(eventSpec.getWpx());
                    }
                    if (eventSpec.hasExt()) {
                        mergeExt(eventSpec.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!eventSpec.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = eventSpec.extProto_;
                                this.bitField0_ &= -17;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(eventSpec.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!eventSpec.extProto_.isEmpty()) {
                        if (!this.extProtoBuilder_.t()) {
                            this.extProtoBuilder_.a(eventSpec.extProto_);
                        } else {
                            this.extProtoBuilder_.h();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = eventSpec.extProto_;
                            this.bitField0_ &= -17;
                            this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) eventSpec).unknownFields);
                    onChanged();
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.type_ = 0;
                    this.method_ = Collections.emptyList();
                    this.api_ = Collections.emptyList();
                    n0 n0Var = m0.f14459d;
                    this.jstrk_ = n0Var;
                    this.pxtrk_ = n0Var;
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
                public com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.access$10100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$EventSpec r3 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$EventSpec r4 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$EventSpec$Builder");
                }
            }

            public static EventSpec getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.U;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static EventSpec parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static EventSpec parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<EventSpec> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof EventSpec)) {
                    return super.equals(obj);
                }
                EventSpec eventSpec = (EventSpec) obj;
                if (this.type_ != eventSpec.type_ || !this.method_.equals(eventSpec.method_) || !this.api_.equals(eventSpec.api_) || !getJstrkList().equals(eventSpec.getJstrkList()) || getWjs() != eventSpec.getWjs() || !getPxtrkList().equals(eventSpec.getPxtrkList()) || getWpx() != eventSpec.getWpx() || hasExt() != eventSpec.hasExt()) {
                    return false;
                }
                if ((!hasExt() || getExt().equals(eventSpec.getExt())) && getExtProtoList().equals(eventSpec.getExtProtoList()) && this.unknownFields.equals(eventSpec.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public ApiFramework getApi(int i10) {
                return api_converter_.convert(this.api_.get(i10));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public int getApiCount() {
                return this.api_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public List<ApiFramework> getApiList() {
                return new i0.h(this.api_, api_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public int getApiValue(int i10) {
                return this.api_.get(i10).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public List<Integer> getApiValueList() {
                return this.api_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public Struct getExt() {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public x1 getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public Any getExtProto(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public String getJstrk(int i10) {
                return this.jstrk_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public ByteString getJstrkBytes(int i10) {
                return this.jstrk_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public int getJstrkCount() {
                return this.jstrk_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public EventTrackingMethod getMethod(int i10) {
                return method_converter_.convert(this.method_.get(i10));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public int getMethodCount() {
                return this.method_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public List<EventTrackingMethod> getMethodList() {
                return new i0.h(this.method_, method_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public int getMethodValue(int i10) {
                return this.method_.get(i10).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public List<Integer> getMethodValueList() {
                return this.method_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<EventSpec> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public String getPxtrk(int i10) {
                return this.pxtrk_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public ByteString getPxtrkBytes(int i10) {
                return this.pxtrk_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public int getPxtrkCount() {
                return this.pxtrk_.size();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if (this.type_ != EventType.EVENT_TYPE_INVALID.getNumber()) {
                    i10 = CodedOutputStream.l(1, this.type_);
                } else {
                    i10 = 0;
                }
                int i12 = 0;
                for (int i13 = 0; i13 < this.method_.size(); i13++) {
                    i12 += CodedOutputStream.m(this.method_.get(i13).intValue());
                }
                int i14 = i10 + i12;
                if (!getMethodList().isEmpty()) {
                    i14 = i14 + 1 + CodedOutputStream.Z(i12);
                }
                this.methodMemoizedSerializedSize = i12;
                int i15 = 0;
                for (int i16 = 0; i16 < this.api_.size(); i16++) {
                    i15 += CodedOutputStream.m(this.api_.get(i16).intValue());
                }
                int i17 = i14 + i15;
                if (!getApiList().isEmpty()) {
                    i17 = i17 + 1 + CodedOutputStream.Z(i15);
                }
                this.apiMemoizedSerializedSize = i15;
                int i18 = 0;
                for (int i19 = 0; i19 < this.jstrk_.size(); i19++) {
                    i18 += GeneratedMessageV3.computeStringSizeNoTag(this.jstrk_.getRaw(i19));
                }
                int size = i17 + i18 + getJstrkList().size();
                boolean z10 = this.wjs_;
                if (z10) {
                    size += CodedOutputStream.e(5, z10);
                }
                int i20 = 0;
                for (int i21 = 0; i21 < this.pxtrk_.size(); i21++) {
                    i20 += GeneratedMessageV3.computeStringSizeNoTag(this.pxtrk_.getRaw(i21));
                }
                int size2 = size + i20 + getPxtrkList().size();
                boolean z11 = this.wpx_;
                if (z11) {
                    size2 += CodedOutputStream.e(7, z11);
                }
                for (int i22 = 0; i22 < this.extProto_.size(); i22++) {
                    size2 += CodedOutputStream.G(8, this.extProto_.get(i22));
                }
                if (this.ext_ != null) {
                    size2 += CodedOutputStream.G(9, getExt());
                }
                int serializedSize = size2 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public EventType getType() {
                EventType valueOf = EventType.valueOf(this.type_);
                if (valueOf == null) {
                    return EventType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public int getTypeValue() {
                return this.type_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public boolean getWjs() {
                return this.wjs_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public boolean getWpx() {
                return this.wpx_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
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
                int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.type_;
                if (getMethodCount() > 0) {
                    hashCode = (((hashCode * 37) + 2) * 53) + this.method_.hashCode();
                }
                if (getApiCount() > 0) {
                    hashCode = (((hashCode * 37) + 3) * 53) + this.api_.hashCode();
                }
                if (getJstrkCount() > 0) {
                    hashCode = (((hashCode * 37) + 4) * 53) + getJstrkList().hashCode();
                }
                int d10 = (((hashCode * 37) + 5) * 53) + i0.d(getWjs());
                if (getPxtrkCount() > 0) {
                    d10 = (((d10 * 37) + 6) * 53) + getPxtrkList().hashCode();
                }
                int d11 = (((d10 * 37) + 7) * 53) + i0.d(getWpx());
                if (hasExt()) {
                    d11 = (((d11 * 37) + 9) * 53) + getExt().hashCode();
                }
                if (getExtProtoCount() > 0) {
                    d11 = (((d11 * 37) + 8) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (d11 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.V.d(EventSpec.class, Builder.class);
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
                return new EventSpec();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                if (this.type_ != EventType.EVENT_TYPE_INVALID.getNumber()) {
                    codedOutputStream.v0(1, this.type_);
                }
                if (getMethodList().size() > 0) {
                    codedOutputStream.d1(18);
                    codedOutputStream.d1(this.methodMemoizedSerializedSize);
                }
                for (int i10 = 0; i10 < this.method_.size(); i10++) {
                    codedOutputStream.w0(this.method_.get(i10).intValue());
                }
                if (getApiList().size() > 0) {
                    codedOutputStream.d1(26);
                    codedOutputStream.d1(this.apiMemoizedSerializedSize);
                }
                for (int i11 = 0; i11 < this.api_.size(); i11++) {
                    codedOutputStream.w0(this.api_.get(i11).intValue());
                }
                for (int i12 = 0; i12 < this.jstrk_.size(); i12++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 4, this.jstrk_.getRaw(i12));
                }
                boolean z10 = this.wjs_;
                if (z10) {
                    codedOutputStream.n0(5, z10);
                }
                for (int i13 = 0; i13 < this.pxtrk_.size(); i13++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 6, this.pxtrk_.getRaw(i13));
                }
                boolean z11 = this.wpx_;
                if (z11) {
                    codedOutputStream.n0(7, z11);
                }
                for (int i14 = 0; i14 < this.extProto_.size(); i14++) {
                    codedOutputStream.L0(8, this.extProto_.get(i14));
                }
                if (this.ext_ != null) {
                    codedOutputStream.L0(9, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            public static Builder newBuilder(EventSpec eventSpec) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(eventSpec);
            }

            public static EventSpec parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public m1 getJstrkList() {
                return this.jstrk_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public m1 getPxtrkList() {
                return this.pxtrk_;
            }

            private EventSpec(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static EventSpec parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static EventSpec parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public EventSpec mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static EventSpec parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private EventSpec() {
                this.memoizedIsInitialized = (byte) -1;
                this.type_ = 0;
                this.method_ = Collections.emptyList();
                this.api_ = Collections.emptyList();
                n0 n0Var = m0.f14459d;
                this.jstrk_ = n0Var;
                this.pxtrk_ = n0Var;
                this.extProto_ = Collections.emptyList();
            }

            public static EventSpec parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static EventSpec parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static EventSpec parseFrom(InputStream inputStream) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static EventSpec parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static EventSpec parseFrom(n nVar) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private EventSpec(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                    this.type_ = nVar.t();
                                    continue;
                                case 16:
                                    int t10 = nVar.t();
                                    if (!(z11 & true)) {
                                        this.method_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.method_.add(Integer.valueOf(t10));
                                    continue;
                                case 18:
                                    int p10 = nVar.p(nVar.C());
                                    while (nVar.d() > 0) {
                                        int t11 = nVar.t();
                                        if (!(z11 & true)) {
                                            this.method_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        this.method_.add(Integer.valueOf(t11));
                                    }
                                    nVar.o(p10);
                                    continue;
                                case 24:
                                    int t12 = nVar.t();
                                    if (!(z11 & true)) {
                                        this.api_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.api_.add(Integer.valueOf(t12));
                                    continue;
                                case 26:
                                    int p11 = nVar.p(nVar.C());
                                    while (nVar.d() > 0) {
                                        int t13 = nVar.t();
                                        if (!(z11 & true)) {
                                            this.api_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        this.api_.add(Integer.valueOf(t13));
                                    }
                                    nVar.o(p11);
                                    continue;
                                case 34:
                                    String J = nVar.J();
                                    if (!(z11 & true)) {
                                        this.jstrk_ = new m0();
                                        z11 |= true;
                                    }
                                    this.jstrk_.add(J);
                                    continue;
                                case 40:
                                    this.wjs_ = nVar.q();
                                    continue;
                                case 50:
                                    String J2 = nVar.J();
                                    if (!(z11 & true)) {
                                        this.pxtrk_ = new m0();
                                        z11 |= true;
                                    }
                                    this.pxtrk_.add(J2);
                                    continue;
                                case 56:
                                    this.wpx_ = nVar.q();
                                    continue;
                                case 66:
                                    if (!(z11 & true)) {
                                        this.extProto_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.extProto_.add(nVar.A(Any.parser(), yVar));
                                    continue;
                                case 74:
                                    Struct struct = this.ext_;
                                    Struct.Builder builder = struct != null ? struct.toBuilder() : null;
                                    Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                    this.ext_ = struct2;
                                    if (builder != null) {
                                        builder.mergeFrom(struct2);
                                        this.ext_ = builder.buildPartial();
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
                        if (z11 & true) {
                            this.method_ = Collections.unmodifiableList(this.method_);
                        }
                        if (z11 & true) {
                            this.api_ = Collections.unmodifiableList(this.api_);
                        }
                        if (z11 & true) {
                            this.jstrk_ = this.jstrk_.getUnmodifiableView();
                        }
                        if (z11 & true) {
                            this.pxtrk_ = this.pxtrk_.getUnmodifiableView();
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
                    this.method_ = Collections.unmodifiableList(this.method_);
                }
                if (z11 & true) {
                    this.api_ = Collections.unmodifiableList(this.api_);
                }
                if (z11 & true) {
                    this.jstrk_ = this.jstrk_.getUnmodifiableView();
                }
                if (z11 & true) {
                    this.pxtrk_ = this.pxtrk_.getUnmodifiableView();
                }
                if (z11 & true) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static EventSpec parseFrom(n nVar, y yVar) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes3.dex */
        public interface EventSpecOrBuilder extends MessageOrBuilder {
            ApiFramework getApi(int i10);

            int getApiCount();

            List<ApiFramework> getApiList();

            int getApiValue(int i10);

            List<Integer> getApiValueList();

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

            String getJstrk(int i10);

            ByteString getJstrkBytes(int i10);

            int getJstrkCount();

            List<String> getJstrkList();

            EventTrackingMethod getMethod(int i10);

            int getMethodCount();

            List<EventTrackingMethod> getMethodList();

            int getMethodValue(int i10);

            List<Integer> getMethodValueList();

            String getPxtrk(int i10);

            ByteString getPxtrkBytes(int i10);

            int getPxtrkCount();

            List<String> getPxtrkList();

            EventType getType();

            int getTypeValue();

            boolean getWjs();

            boolean getWpx();

            boolean hasExt();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes3.dex */
        public static final class NativeFormat extends GeneratedMessageV3 implements NativeFormatOrBuilder {
            public static final int ASSET_FIELD_NUMBER = 1;
            public static final int EXT_FIELD_NUMBER = 3;
            public static final int EXT_PROTO_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private List<AssetFormat> asset_;
            private List<Any> extProto_;
            private Struct ext_;
            private byte memoizedIsInitialized;
            private static final NativeFormat DEFAULT_INSTANCE = new NativeFormat();
            private static final j1<NativeFormat> PARSER = new com.explorestack.protobuf.b<NativeFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.1
                @Override // com.explorestack.protobuf.j1
                public NativeFormat parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new NativeFormat(nVar, yVar);
                }
            };

            /* loaded from: classes3.dex */
            public static final class AssetFormat extends GeneratedMessageV3 implements AssetFormatOrBuilder {
                public static final int DATA_FIELD_NUMBER = 6;
                public static final int EXT_FIELD_NUMBER = 8;
                public static final int EXT_PROTO_FIELD_NUMBER = 7;
                public static final int ID_FIELD_NUMBER = 1;
                public static final int IMG_FIELD_NUMBER = 4;
                public static final int REQ_FIELD_NUMBER = 2;
                public static final int TITLE_FIELD_NUMBER = 3;
                public static final int VIDEO_FIELD_NUMBER = 5;
                private static final long serialVersionUID = 0;
                private DataAssetFormat data_;
                private List<Any> extProto_;
                private Struct ext_;
                private int id_;
                private ImageAssetFormat img_;
                private byte memoizedIsInitialized;
                private boolean req_;
                private TitleAssetFormat title_;
                private VideoPlacement video_;
                private static final AssetFormat DEFAULT_INSTANCE = new AssetFormat();
                private static final j1<AssetFormat> PARSER = new com.explorestack.protobuf.b<AssetFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.1
                    @Override // com.explorestack.protobuf.j1
                    public AssetFormat parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                        return new AssetFormat(nVar, yVar);
                    }
                };

                /* loaded from: classes3.dex */
                public static final class DataAssetFormat extends GeneratedMessageV3 implements DataAssetFormatOrBuilder {
                    public static final int EXT_FIELD_NUMBER = 4;
                    public static final int EXT_PROTO_FIELD_NUMBER = 3;
                    public static final int LEN_FIELD_NUMBER = 2;
                    public static final int TYPE_FIELD_NUMBER = 1;
                    private static final long serialVersionUID = 0;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int len_;
                    private byte memoizedIsInitialized;
                    private int type_;
                    private static final DataAssetFormat DEFAULT_INSTANCE = new DataAssetFormat();
                    private static final j1<DataAssetFormat> PARSER = new com.explorestack.protobuf.b<DataAssetFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.1
                        @Override // com.explorestack.protobuf.j1
                        public DataAssetFormat parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                            return new DataAssetFormat(nVar, yVar);
                        }
                    };

                    public static DataAssetFormat getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return b.S;
                    }

                    public static Builder newBuilder() {
                        return DEFAULT_INSTANCE.toBuilder();
                    }

                    public static DataAssetFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                    }

                    public static DataAssetFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer);
                    }

                    public static j1<DataAssetFormat> parser() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (!(obj instanceof DataAssetFormat)) {
                            return super.equals(obj);
                        }
                        DataAssetFormat dataAssetFormat = (DataAssetFormat) obj;
                        if (this.type_ != dataAssetFormat.type_ || getLen() != dataAssetFormat.getLen() || hasExt() != dataAssetFormat.hasExt()) {
                            return false;
                        }
                        if ((!hasExt() || getExt().equals(dataAssetFormat.getExt())) && getExtProtoList().equals(dataAssetFormat.getExtProtoList()) && this.unknownFields.equals(dataAssetFormat.unknownFields)) {
                            return true;
                        }
                        return false;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public Struct getExt() {
                        Struct struct = this.ext_;
                        if (struct == null) {
                            return Struct.getDefaultInstance();
                        }
                        return struct;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public x1 getExtOrBuilder() {
                        return getExt();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public Any getExtProto(int i10) {
                        return this.extProto_.get(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public int getExtProtoCount() {
                        return this.extProto_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public List<Any> getExtProtoList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public e getExtProtoOrBuilder(int i10) {
                        return this.extProto_.get(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public List<? extends e> getExtProtoOrBuilderList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public int getLen() {
                        return this.len_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public j1<DataAssetFormat> getParserForType() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public int getSerializedSize() {
                        int i10;
                        int i11 = this.memoizedSize;
                        if (i11 != -1) {
                            return i11;
                        }
                        if (this.type_ != NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_INVALID.getNumber()) {
                            i10 = CodedOutputStream.l(1, this.type_);
                        } else {
                            i10 = 0;
                        }
                        int i12 = this.len_;
                        if (i12 != 0) {
                            i10 += CodedOutputStream.Y(2, i12);
                        }
                        for (int i13 = 0; i13 < this.extProto_.size(); i13++) {
                            i10 += CodedOutputStream.G(3, this.extProto_.get(i13));
                        }
                        if (this.ext_ != null) {
                            i10 += CodedOutputStream.G(4, getExt());
                        }
                        int serializedSize = i10 + this.unknownFields.getSerializedSize();
                        this.memoizedSize = serializedSize;
                        return serializedSize;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public NativeDataAssetType getType() {
                        NativeDataAssetType valueOf = NativeDataAssetType.valueOf(this.type_);
                        if (valueOf == null) {
                            return NativeDataAssetType.UNRECOGNIZED;
                        }
                        return valueOf;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public int getTypeValue() {
                        return this.type_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                    public final j2 getUnknownFields() {
                        return this.unknownFields;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
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
                        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.type_) * 37) + 2) * 53) + getLen();
                        if (hasExt()) {
                            hashCode = (((hashCode * 37) + 4) * 53) + getExt().hashCode();
                        }
                        if (getExtProtoCount() > 0) {
                            hashCode = (((hashCode * 37) + 3) * 53) + getExtProtoList().hashCode();
                        }
                        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode2;
                        return hashCode2;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3
                    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                        return b.T.d(DataAssetFormat.class, Builder.class);
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
                        return new DataAssetFormat();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                        if (this.type_ != NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_INVALID.getNumber()) {
                            codedOutputStream.v0(1, this.type_);
                        }
                        int i10 = this.len_;
                        if (i10 != 0) {
                            codedOutputStream.c1(2, i10);
                        }
                        for (int i11 = 0; i11 < this.extProto_.size(); i11++) {
                            codedOutputStream.L0(3, this.extProto_.get(i11));
                        }
                        if (this.ext_ != null) {
                            codedOutputStream.L0(4, getExt());
                        }
                        this.unknownFields.writeTo(codedOutputStream);
                    }

                    /* loaded from: classes3.dex */
                    public static final class Builder extends GeneratedMessageV3.b<Builder> implements DataAssetFormatOrBuilder {
                        private int bitField0_;
                        private t1<Struct, Struct.Builder, x1> extBuilder_;
                        private p1<Any, Any.Builder, e> extProtoBuilder_;
                        private List<Any> extProto_;
                        private Struct ext_;
                        private int len_;
                        private int type_;

                        private void ensureExtProtoIsMutable() {
                            if ((this.bitField0_ & 1) == 0) {
                                this.extProto_ = new ArrayList(this.extProto_);
                                this.bitField0_ |= 1;
                            }
                        }

                        public static final Descriptors.Descriptor getDescriptor() {
                            return b.S;
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

                        public Builder clearLen() {
                            this.len_ = 0;
                            onChanged();
                            return this;
                        }

                        public Builder clearType() {
                            this.type_ = 0;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        public Descriptors.Descriptor getDescriptorForType() {
                            return b.S;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public int getExtProtoCount() {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var == null) {
                                return this.extProto_.size();
                            }
                            return p1Var.m();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public List<Any> getExtProtoList() {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var == null) {
                                return Collections.unmodifiableList(this.extProto_);
                            }
                            return p1Var.p();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public e getExtProtoOrBuilder(int i10) {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var == null) {
                                return this.extProto_.get(i10);
                            }
                            return p1Var.q(i10);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public List<? extends e> getExtProtoOrBuilderList() {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var != null) {
                                return p1Var.r();
                            }
                            return Collections.unmodifiableList(this.extProto_);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public int getLen() {
                            return this.len_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public NativeDataAssetType getType() {
                            NativeDataAssetType valueOf = NativeDataAssetType.valueOf(this.type_);
                            if (valueOf == null) {
                                return NativeDataAssetType.UNRECOGNIZED;
                            }
                            return valueOf;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public int getTypeValue() {
                            return this.type_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public boolean hasExt() {
                            if (this.extBuilder_ == null && this.ext_ == null) {
                                return false;
                            }
                            return true;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                            return b.T.d(DataAssetFormat.class, Builder.class);
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

                        public Builder setLen(int i10) {
                            this.len_ = i10;
                            onChanged();
                            return this;
                        }

                        public Builder setType(NativeDataAssetType nativeDataAssetType) {
                            nativeDataAssetType.getClass();
                            this.type_ = nativeDataAssetType.getNumber();
                            onChanged();
                            return this;
                        }

                        public Builder setTypeValue(int i10) {
                            this.type_ = i10;
                            onChanged();
                            return this;
                        }

                        private Builder() {
                            this.type_ = 0;
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public DataAssetFormat build() {
                            DataAssetFormat buildPartial = buildPartial();
                            if (buildPartial.isInitialized()) {
                                return buildPartial;
                            }
                            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public DataAssetFormat buildPartial() {
                            DataAssetFormat dataAssetFormat = new DataAssetFormat(this);
                            dataAssetFormat.type_ = this.type_;
                            dataAssetFormat.len_ = this.len_;
                            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                            if (t1Var == null) {
                                dataAssetFormat.ext_ = this.ext_;
                            } else {
                                dataAssetFormat.ext_ = t1Var.a();
                            }
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var != null) {
                                dataAssetFormat.extProto_ = p1Var.f();
                            } else {
                                if ((this.bitField0_ & 1) != 0) {
                                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                    this.bitField0_ &= -2;
                                }
                                dataAssetFormat.extProto_ = this.extProto_;
                            }
                            onBuilt();
                            return dataAssetFormat;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                            return (Builder) super.clearField(fieldDescriptor);
                        }

                        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        /* renamed from: getDefaultInstanceForType */
                        public DataAssetFormat mo4630getDefaultInstanceForType() {
                            return DataAssetFormat.getDefaultInstance();
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
                            this.type_ = 0;
                            this.len_ = 0;
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

                        private Builder(GeneratedMessageV3.c cVar) {
                            super(cVar);
                            this.type_ = 0;
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
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
                            if (message instanceof DataAssetFormat) {
                                return mergeFrom((DataAssetFormat) message);
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

                        public Builder mergeFrom(DataAssetFormat dataAssetFormat) {
                            if (dataAssetFormat == DataAssetFormat.getDefaultInstance()) {
                                return this;
                            }
                            if (dataAssetFormat.type_ != 0) {
                                setTypeValue(dataAssetFormat.getTypeValue());
                            }
                            if (dataAssetFormat.getLen() != 0) {
                                setLen(dataAssetFormat.getLen());
                            }
                            if (dataAssetFormat.hasExt()) {
                                mergeExt(dataAssetFormat.getExt());
                            }
                            if (this.extProtoBuilder_ == null) {
                                if (!dataAssetFormat.extProto_.isEmpty()) {
                                    if (this.extProto_.isEmpty()) {
                                        this.extProto_ = dataAssetFormat.extProto_;
                                        this.bitField0_ &= -2;
                                    } else {
                                        ensureExtProtoIsMutable();
                                        this.extProto_.addAll(dataAssetFormat.extProto_);
                                    }
                                    onChanged();
                                }
                            } else if (!dataAssetFormat.extProto_.isEmpty()) {
                                if (!this.extProtoBuilder_.t()) {
                                    this.extProtoBuilder_.a(dataAssetFormat.extProto_);
                                } else {
                                    this.extProtoBuilder_.h();
                                    this.extProtoBuilder_ = null;
                                    this.extProto_ = dataAssetFormat.extProto_;
                                    this.bitField0_ &= -2;
                                    this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                                }
                            }
                            mergeUnknownFields(((GeneratedMessageV3) dataAssetFormat).unknownFields);
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
                        public com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                            /*
                                r2 = this;
                                r0 = 0
                                com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.access$5600()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat r3 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat r4 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat) r4     // Catch: java.lang.Throwable -> L11
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
                            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder");
                        }
                    }

                    public static Builder newBuilder(DataAssetFormat dataAssetFormat) {
                        return DEFAULT_INSTANCE.toBuilder().mergeFrom(dataAssetFormat);
                    }

                    public static DataAssetFormat parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer, yVar);
                    }

                    private DataAssetFormat(GeneratedMessageV3.b<?> bVar) {
                        super(bVar);
                        this.memoizedIsInitialized = (byte) -1;
                    }

                    public static DataAssetFormat parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
                    }

                    public static DataAssetFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString);
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
                    /* renamed from: getDefaultInstanceForType */
                    public DataAssetFormat mo4630getDefaultInstanceForType() {
                        return DEFAULT_INSTANCE;
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public Builder toBuilder() {
                        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                    }

                    public static DataAssetFormat parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString, yVar);
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public Builder newBuilderForType() {
                        return newBuilder();
                    }

                    private DataAssetFormat() {
                        this.memoizedIsInitialized = (byte) -1;
                        this.type_ = 0;
                        this.extProto_ = Collections.emptyList();
                    }

                    public static DataAssetFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr);
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.explorestack.protobuf.GeneratedMessageV3
                    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                        return new Builder(cVar);
                    }

                    public static DataAssetFormat parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr, yVar);
                    }

                    public static DataAssetFormat parseFrom(InputStream inputStream) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private DataAssetFormat(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                            this.type_ = nVar.t();
                                        } else if (K == 16) {
                                            this.len_ = nVar.L();
                                        } else if (K == 26) {
                                            if (!z11) {
                                                this.extProto_ = new ArrayList();
                                                z11 = true;
                                            }
                                            this.extProto_.add(nVar.A(Any.parser(), yVar));
                                        } else if (K != 34) {
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

                    public static DataAssetFormat parseFrom(InputStream inputStream, y yVar) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
                    }

                    public static DataAssetFormat parseFrom(n nVar) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
                    }

                    public static DataAssetFormat parseFrom(n nVar, y yVar) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
                    }
                }

                /* loaded from: classes3.dex */
                public interface DataAssetFormatOrBuilder extends MessageOrBuilder {
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

                    int getLen();

                    NativeDataAssetType getType();

                    int getTypeValue();

                    boolean hasExt();

                    @Override // com.explorestack.protobuf.MessageOrBuilder
                    /* synthetic */ boolean isInitialized();
                }

                /* loaded from: classes3.dex */
                public static final class ImageAssetFormat extends GeneratedMessageV3 implements ImageAssetFormatOrBuilder {
                    public static final int EXT_FIELD_NUMBER = 10;
                    public static final int EXT_PROTO_FIELD_NUMBER = 9;
                    public static final int HMIN_FIELD_NUMBER = 6;
                    public static final int HRATIO_FIELD_NUMBER = 8;
                    public static final int H_FIELD_NUMBER = 4;
                    public static final int MIME_FIELD_NUMBER = 2;
                    public static final int TYPE_FIELD_NUMBER = 1;
                    public static final int WMIN_FIELD_NUMBER = 5;
                    public static final int WRATIO_FIELD_NUMBER = 7;
                    public static final int W_FIELD_NUMBER = 3;
                    private static final long serialVersionUID = 0;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int h_;
                    private int hmin_;
                    private int hratio_;
                    private byte memoizedIsInitialized;
                    private n0 mime_;
                    private int type_;
                    private int w_;
                    private int wmin_;
                    private int wratio_;
                    private static final ImageAssetFormat DEFAULT_INSTANCE = new ImageAssetFormat();
                    private static final j1<ImageAssetFormat> PARSER = new com.explorestack.protobuf.b<ImageAssetFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.1
                        @Override // com.explorestack.protobuf.j1
                        public ImageAssetFormat parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                            return new ImageAssetFormat(nVar, yVar);
                        }
                    };

                    /* loaded from: classes3.dex */
                    public static final class Builder extends GeneratedMessageV3.b<Builder> implements ImageAssetFormatOrBuilder {
                        private int bitField0_;
                        private t1<Struct, Struct.Builder, x1> extBuilder_;
                        private p1<Any, Any.Builder, e> extProtoBuilder_;
                        private List<Any> extProto_;
                        private Struct ext_;
                        private int h_;
                        private int hmin_;
                        private int hratio_;
                        private n0 mime_;
                        private int type_;
                        private int w_;
                        private int wmin_;
                        private int wratio_;

                        private void ensureExtProtoIsMutable() {
                            if ((this.bitField0_ & 2) == 0) {
                                this.extProto_ = new ArrayList(this.extProto_);
                                this.bitField0_ |= 2;
                            }
                        }

                        private void ensureMimeIsMutable() {
                            if ((this.bitField0_ & 1) == 0) {
                                this.mime_ = new m0(this.mime_);
                                this.bitField0_ |= 1;
                            }
                        }

                        public static final Descriptors.Descriptor getDescriptor() {
                            return b.Q;
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
                                if ((this.bitField0_ & 2) != 0) {
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

                        public Builder addAllMime(Iterable<String> iterable) {
                            ensureMimeIsMutable();
                            a.AbstractC0246a.addAll((Iterable) iterable, (List) this.mime_);
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

                        public Builder addMime(String str) {
                            str.getClass();
                            ensureMimeIsMutable();
                            this.mime_.add(str);
                            onChanged();
                            return this;
                        }

                        public Builder addMimeBytes(ByteString byteString) {
                            byteString.getClass();
                            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                            ensureMimeIsMutable();
                            this.mime_.b(byteString);
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
                                this.bitField0_ &= -3;
                                onChanged();
                            } else {
                                p1Var.g();
                            }
                            return this;
                        }

                        public Builder clearH() {
                            this.h_ = 0;
                            onChanged();
                            return this;
                        }

                        public Builder clearHmin() {
                            this.hmin_ = 0;
                            onChanged();
                            return this;
                        }

                        public Builder clearHratio() {
                            this.hratio_ = 0;
                            onChanged();
                            return this;
                        }

                        public Builder clearMime() {
                            this.mime_ = m0.f14459d;
                            this.bitField0_ &= -2;
                            onChanged();
                            return this;
                        }

                        public Builder clearType() {
                            this.type_ = 0;
                            onChanged();
                            return this;
                        }

                        public Builder clearW() {
                            this.w_ = 0;
                            onChanged();
                            return this;
                        }

                        public Builder clearWmin() {
                            this.wmin_ = 0;
                            onChanged();
                            return this;
                        }

                        public Builder clearWratio() {
                            this.wratio_ = 0;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        public Descriptors.Descriptor getDescriptorForType() {
                            return b.Q;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public int getExtProtoCount() {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var == null) {
                                return this.extProto_.size();
                            }
                            return p1Var.m();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public List<Any> getExtProtoList() {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var == null) {
                                return Collections.unmodifiableList(this.extProto_);
                            }
                            return p1Var.p();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public e getExtProtoOrBuilder(int i10) {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var == null) {
                                return this.extProto_.get(i10);
                            }
                            return p1Var.q(i10);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public List<? extends e> getExtProtoOrBuilderList() {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var != null) {
                                return p1Var.r();
                            }
                            return Collections.unmodifiableList(this.extProto_);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public int getH() {
                            return this.h_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public int getHmin() {
                            return this.hmin_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public int getHratio() {
                            return this.hratio_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public String getMime(int i10) {
                            return this.mime_.get(i10);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public ByteString getMimeBytes(int i10) {
                            return this.mime_.getByteString(i10);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public int getMimeCount() {
                            return this.mime_.size();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public NativeImageAssetType getType() {
                            NativeImageAssetType valueOf = NativeImageAssetType.valueOf(this.type_);
                            if (valueOf == null) {
                                return NativeImageAssetType.UNRECOGNIZED;
                            }
                            return valueOf;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public int getTypeValue() {
                            return this.type_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public int getW() {
                            return this.w_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public int getWmin() {
                            return this.wmin_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public int getWratio() {
                            return this.wratio_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public boolean hasExt() {
                            if (this.extBuilder_ == null && this.ext_ == null) {
                                return false;
                            }
                            return true;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                            return b.R.d(ImageAssetFormat.class, Builder.class);
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

                        public Builder setH(int i10) {
                            this.h_ = i10;
                            onChanged();
                            return this;
                        }

                        public Builder setHmin(int i10) {
                            this.hmin_ = i10;
                            onChanged();
                            return this;
                        }

                        public Builder setHratio(int i10) {
                            this.hratio_ = i10;
                            onChanged();
                            return this;
                        }

                        public Builder setMime(int i10, String str) {
                            str.getClass();
                            ensureMimeIsMutable();
                            this.mime_.set(i10, str);
                            onChanged();
                            return this;
                        }

                        public Builder setType(NativeImageAssetType nativeImageAssetType) {
                            nativeImageAssetType.getClass();
                            this.type_ = nativeImageAssetType.getNumber();
                            onChanged();
                            return this;
                        }

                        public Builder setTypeValue(int i10) {
                            this.type_ = i10;
                            onChanged();
                            return this;
                        }

                        public Builder setW(int i10) {
                            this.w_ = i10;
                            onChanged();
                            return this;
                        }

                        public Builder setWmin(int i10) {
                            this.wmin_ = i10;
                            onChanged();
                            return this;
                        }

                        public Builder setWratio(int i10) {
                            this.wratio_ = i10;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public m1 getMimeList() {
                            return this.mime_.getUnmodifiableView();
                        }

                        private Builder() {
                            this.type_ = 0;
                            this.mime_ = m0.f14459d;
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public ImageAssetFormat build() {
                            ImageAssetFormat buildPartial = buildPartial();
                            if (buildPartial.isInitialized()) {
                                return buildPartial;
                            }
                            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public ImageAssetFormat buildPartial() {
                            ImageAssetFormat imageAssetFormat = new ImageAssetFormat(this);
                            imageAssetFormat.type_ = this.type_;
                            if ((this.bitField0_ & 1) != 0) {
                                this.mime_ = this.mime_.getUnmodifiableView();
                                this.bitField0_ &= -2;
                            }
                            imageAssetFormat.mime_ = this.mime_;
                            imageAssetFormat.w_ = this.w_;
                            imageAssetFormat.h_ = this.h_;
                            imageAssetFormat.wmin_ = this.wmin_;
                            imageAssetFormat.hmin_ = this.hmin_;
                            imageAssetFormat.wratio_ = this.wratio_;
                            imageAssetFormat.hratio_ = this.hratio_;
                            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                            if (t1Var == null) {
                                imageAssetFormat.ext_ = this.ext_;
                            } else {
                                imageAssetFormat.ext_ = t1Var.a();
                            }
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var != null) {
                                imageAssetFormat.extProto_ = p1Var.f();
                            } else {
                                if ((this.bitField0_ & 2) != 0) {
                                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                    this.bitField0_ &= -3;
                                }
                                imageAssetFormat.extProto_ = this.extProto_;
                            }
                            onBuilt();
                            return imageAssetFormat;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                            return (Builder) super.clearField(fieldDescriptor);
                        }

                        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        /* renamed from: getDefaultInstanceForType */
                        public ImageAssetFormat mo4630getDefaultInstanceForType() {
                            return ImageAssetFormat.getDefaultInstance();
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
                            this.type_ = 0;
                            this.mime_ = m0.f14459d;
                            this.bitField0_ &= -2;
                            this.w_ = 0;
                            this.h_ = 0;
                            this.wmin_ = 0;
                            this.hmin_ = 0;
                            this.wratio_ = 0;
                            this.hratio_ = 0;
                            if (this.extBuilder_ == null) {
                                this.ext_ = null;
                            } else {
                                this.ext_ = null;
                                this.extBuilder_ = null;
                            }
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var == null) {
                                this.extProto_ = Collections.emptyList();
                                this.bitField0_ &= -3;
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
                            if (message instanceof ImageAssetFormat) {
                                return mergeFrom((ImageAssetFormat) message);
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
                            this.type_ = 0;
                            this.mime_ = m0.f14459d;
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        public Builder mergeFrom(ImageAssetFormat imageAssetFormat) {
                            if (imageAssetFormat == ImageAssetFormat.getDefaultInstance()) {
                                return this;
                            }
                            if (imageAssetFormat.type_ != 0) {
                                setTypeValue(imageAssetFormat.getTypeValue());
                            }
                            if (!imageAssetFormat.mime_.isEmpty()) {
                                if (this.mime_.isEmpty()) {
                                    this.mime_ = imageAssetFormat.mime_;
                                    this.bitField0_ &= -2;
                                } else {
                                    ensureMimeIsMutable();
                                    this.mime_.addAll(imageAssetFormat.mime_);
                                }
                                onChanged();
                            }
                            if (imageAssetFormat.getW() != 0) {
                                setW(imageAssetFormat.getW());
                            }
                            if (imageAssetFormat.getH() != 0) {
                                setH(imageAssetFormat.getH());
                            }
                            if (imageAssetFormat.getWmin() != 0) {
                                setWmin(imageAssetFormat.getWmin());
                            }
                            if (imageAssetFormat.getHmin() != 0) {
                                setHmin(imageAssetFormat.getHmin());
                            }
                            if (imageAssetFormat.getWratio() != 0) {
                                setWratio(imageAssetFormat.getWratio());
                            }
                            if (imageAssetFormat.getHratio() != 0) {
                                setHratio(imageAssetFormat.getHratio());
                            }
                            if (imageAssetFormat.hasExt()) {
                                mergeExt(imageAssetFormat.getExt());
                            }
                            if (this.extProtoBuilder_ == null) {
                                if (!imageAssetFormat.extProto_.isEmpty()) {
                                    if (this.extProto_.isEmpty()) {
                                        this.extProto_ = imageAssetFormat.extProto_;
                                        this.bitField0_ &= -3;
                                    } else {
                                        ensureExtProtoIsMutable();
                                        this.extProto_.addAll(imageAssetFormat.extProto_);
                                    }
                                    onChanged();
                                }
                            } else if (!imageAssetFormat.extProto_.isEmpty()) {
                                if (!this.extProtoBuilder_.t()) {
                                    this.extProtoBuilder_.a(imageAssetFormat.extProto_);
                                } else {
                                    this.extProtoBuilder_.h();
                                    this.extProtoBuilder_ = null;
                                    this.extProto_ = imageAssetFormat.extProto_;
                                    this.bitField0_ &= -3;
                                    this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                                }
                            }
                            mergeUnknownFields(((GeneratedMessageV3) imageAssetFormat).unknownFields);
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
                        public com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                            /*
                                r2 = this;
                                r0 = 0
                                com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.access$4300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat r3 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat r4 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat) r4     // Catch: java.lang.Throwable -> L11
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
                            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder");
                        }
                    }

                    public static ImageAssetFormat getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return b.Q;
                    }

                    public static Builder newBuilder() {
                        return DEFAULT_INSTANCE.toBuilder();
                    }

                    public static ImageAssetFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                    }

                    public static ImageAssetFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer);
                    }

                    public static j1<ImageAssetFormat> parser() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (!(obj instanceof ImageAssetFormat)) {
                            return super.equals(obj);
                        }
                        ImageAssetFormat imageAssetFormat = (ImageAssetFormat) obj;
                        if (this.type_ != imageAssetFormat.type_ || !getMimeList().equals(imageAssetFormat.getMimeList()) || getW() != imageAssetFormat.getW() || getH() != imageAssetFormat.getH() || getWmin() != imageAssetFormat.getWmin() || getHmin() != imageAssetFormat.getHmin() || getWratio() != imageAssetFormat.getWratio() || getHratio() != imageAssetFormat.getHratio() || hasExt() != imageAssetFormat.hasExt()) {
                            return false;
                        }
                        if ((!hasExt() || getExt().equals(imageAssetFormat.getExt())) && getExtProtoList().equals(imageAssetFormat.getExtProtoList()) && this.unknownFields.equals(imageAssetFormat.unknownFields)) {
                            return true;
                        }
                        return false;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public Struct getExt() {
                        Struct struct = this.ext_;
                        if (struct == null) {
                            return Struct.getDefaultInstance();
                        }
                        return struct;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public x1 getExtOrBuilder() {
                        return getExt();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public Any getExtProto(int i10) {
                        return this.extProto_.get(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public int getExtProtoCount() {
                        return this.extProto_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public List<Any> getExtProtoList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public e getExtProtoOrBuilder(int i10) {
                        return this.extProto_.get(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public List<? extends e> getExtProtoOrBuilderList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public int getH() {
                        return this.h_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public int getHmin() {
                        return this.hmin_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public int getHratio() {
                        return this.hratio_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public String getMime(int i10) {
                        return this.mime_.get(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public ByteString getMimeBytes(int i10) {
                        return this.mime_.getByteString(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public int getMimeCount() {
                        return this.mime_.size();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public j1<ImageAssetFormat> getParserForType() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public int getSerializedSize() {
                        int i10;
                        int i11 = this.memoizedSize;
                        if (i11 != -1) {
                            return i11;
                        }
                        if (this.type_ != NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_INVALID.getNumber()) {
                            i10 = CodedOutputStream.l(1, this.type_);
                        } else {
                            i10 = 0;
                        }
                        int i12 = 0;
                        for (int i13 = 0; i13 < this.mime_.size(); i13++) {
                            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.mime_.getRaw(i13));
                        }
                        int size = i10 + i12 + getMimeList().size();
                        int i14 = this.w_;
                        if (i14 != 0) {
                            size += CodedOutputStream.Y(3, i14);
                        }
                        int i15 = this.h_;
                        if (i15 != 0) {
                            size += CodedOutputStream.Y(4, i15);
                        }
                        int i16 = this.wmin_;
                        if (i16 != 0) {
                            size += CodedOutputStream.Y(5, i16);
                        }
                        int i17 = this.hmin_;
                        if (i17 != 0) {
                            size += CodedOutputStream.Y(6, i17);
                        }
                        int i18 = this.wratio_;
                        if (i18 != 0) {
                            size += CodedOutputStream.Y(7, i18);
                        }
                        int i19 = this.hratio_;
                        if (i19 != 0) {
                            size += CodedOutputStream.Y(8, i19);
                        }
                        for (int i20 = 0; i20 < this.extProto_.size(); i20++) {
                            size += CodedOutputStream.G(9, this.extProto_.get(i20));
                        }
                        if (this.ext_ != null) {
                            size += CodedOutputStream.G(10, getExt());
                        }
                        int serializedSize = size + this.unknownFields.getSerializedSize();
                        this.memoizedSize = serializedSize;
                        return serializedSize;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public NativeImageAssetType getType() {
                        NativeImageAssetType valueOf = NativeImageAssetType.valueOf(this.type_);
                        if (valueOf == null) {
                            return NativeImageAssetType.UNRECOGNIZED;
                        }
                        return valueOf;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public int getTypeValue() {
                        return this.type_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                    public final j2 getUnknownFields() {
                        return this.unknownFields;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public int getW() {
                        return this.w_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public int getWmin() {
                        return this.wmin_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public int getWratio() {
                        return this.wratio_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
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
                        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.type_;
                        if (getMimeCount() > 0) {
                            hashCode = (((hashCode * 37) + 2) * 53) + getMimeList().hashCode();
                        }
                        int w10 = (((((((((((((((((((((((hashCode * 37) + 3) * 53) + getW()) * 37) + 4) * 53) + getH()) * 37) + 5) * 53) + getWmin()) * 37) + 6) * 53) + getHmin()) * 37) + 7) * 53) + getWratio()) * 37) + 8) * 53) + getHratio();
                        if (hasExt()) {
                            w10 = (((w10 * 37) + 10) * 53) + getExt().hashCode();
                        }
                        if (getExtProtoCount() > 0) {
                            w10 = (((w10 * 37) + 9) * 53) + getExtProtoList().hashCode();
                        }
                        int hashCode2 = (w10 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode2;
                        return hashCode2;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3
                    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                        return b.R.d(ImageAssetFormat.class, Builder.class);
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
                        return new ImageAssetFormat();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                        if (this.type_ != NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_INVALID.getNumber()) {
                            codedOutputStream.v0(1, this.type_);
                        }
                        for (int i10 = 0; i10 < this.mime_.size(); i10++) {
                            GeneratedMessageV3.writeString(codedOutputStream, 2, this.mime_.getRaw(i10));
                        }
                        int i11 = this.w_;
                        if (i11 != 0) {
                            codedOutputStream.c1(3, i11);
                        }
                        int i12 = this.h_;
                        if (i12 != 0) {
                            codedOutputStream.c1(4, i12);
                        }
                        int i13 = this.wmin_;
                        if (i13 != 0) {
                            codedOutputStream.c1(5, i13);
                        }
                        int i14 = this.hmin_;
                        if (i14 != 0) {
                            codedOutputStream.c1(6, i14);
                        }
                        int i15 = this.wratio_;
                        if (i15 != 0) {
                            codedOutputStream.c1(7, i15);
                        }
                        int i16 = this.hratio_;
                        if (i16 != 0) {
                            codedOutputStream.c1(8, i16);
                        }
                        for (int i17 = 0; i17 < this.extProto_.size(); i17++) {
                            codedOutputStream.L0(9, this.extProto_.get(i17));
                        }
                        if (this.ext_ != null) {
                            codedOutputStream.L0(10, getExt());
                        }
                        this.unknownFields.writeTo(codedOutputStream);
                    }

                    public static Builder newBuilder(ImageAssetFormat imageAssetFormat) {
                        return DEFAULT_INSTANCE.toBuilder().mergeFrom(imageAssetFormat);
                    }

                    public static ImageAssetFormat parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer, yVar);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public m1 getMimeList() {
                        return this.mime_;
                    }

                    private ImageAssetFormat(GeneratedMessageV3.b<?> bVar) {
                        super(bVar);
                        this.memoizedIsInitialized = (byte) -1;
                    }

                    public static ImageAssetFormat parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
                    }

                    public static ImageAssetFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString);
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
                    /* renamed from: getDefaultInstanceForType */
                    public ImageAssetFormat mo4630getDefaultInstanceForType() {
                        return DEFAULT_INSTANCE;
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public Builder toBuilder() {
                        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                    }

                    public static ImageAssetFormat parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString, yVar);
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public Builder newBuilderForType() {
                        return newBuilder();
                    }

                    private ImageAssetFormat() {
                        this.memoizedIsInitialized = (byte) -1;
                        this.type_ = 0;
                        this.mime_ = m0.f14459d;
                        this.extProto_ = Collections.emptyList();
                    }

                    public static ImageAssetFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr);
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.explorestack.protobuf.GeneratedMessageV3
                    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                        return new Builder(cVar);
                    }

                    public static ImageAssetFormat parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr, yVar);
                    }

                    public static ImageAssetFormat parseFrom(InputStream inputStream) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                    }

                    public static ImageAssetFormat parseFrom(InputStream inputStream, y yVar) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private ImageAssetFormat(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                            this.type_ = nVar.t();
                                            continue;
                                        case 18:
                                            String J = nVar.J();
                                            if (!(z11 & true)) {
                                                this.mime_ = new m0();
                                                z11 |= true;
                                            }
                                            this.mime_.add(J);
                                            continue;
                                        case 24:
                                            this.w_ = nVar.L();
                                            continue;
                                        case 32:
                                            this.h_ = nVar.L();
                                            continue;
                                        case 40:
                                            this.wmin_ = nVar.L();
                                            continue;
                                        case 48:
                                            this.hmin_ = nVar.L();
                                            continue;
                                        case 56:
                                            this.wratio_ = nVar.L();
                                            continue;
                                        case 64:
                                            this.hratio_ = nVar.L();
                                            continue;
                                        case 74:
                                            if (!(z11 & true)) {
                                                this.extProto_ = new ArrayList();
                                                z11 |= true;
                                            }
                                            this.extProto_.add(nVar.A(Any.parser(), yVar));
                                            continue;
                                        case 82:
                                            Struct struct = this.ext_;
                                            Struct.Builder builder = struct != null ? struct.toBuilder() : null;
                                            Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                            this.ext_ = struct2;
                                            if (builder != null) {
                                                builder.mergeFrom(struct2);
                                                this.ext_ = builder.buildPartial();
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
                                if (z11 & true) {
                                    this.mime_ = this.mime_.getUnmodifiableView();
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
                            this.mime_ = this.mime_.getUnmodifiableView();
                        }
                        if (z11 & true) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                    }

                    public static ImageAssetFormat parseFrom(n nVar) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
                    }

                    public static ImageAssetFormat parseFrom(n nVar, y yVar) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
                    }
                }

                /* loaded from: classes3.dex */
                public interface ImageAssetFormatOrBuilder extends MessageOrBuilder {
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

                    int getH();

                    int getHmin();

                    int getHratio();

                    String getMime(int i10);

                    ByteString getMimeBytes(int i10);

                    int getMimeCount();

                    List<String> getMimeList();

                    NativeImageAssetType getType();

                    int getTypeValue();

                    int getW();

                    int getWmin();

                    int getWratio();

                    boolean hasExt();

                    @Override // com.explorestack.protobuf.MessageOrBuilder
                    /* synthetic */ boolean isInitialized();
                }

                /* loaded from: classes3.dex */
                public static final class TitleAssetFormat extends GeneratedMessageV3 implements TitleAssetFormatOrBuilder {
                    public static final int EXT_FIELD_NUMBER = 3;
                    public static final int EXT_PROTO_FIELD_NUMBER = 2;
                    public static final int LEN_FIELD_NUMBER = 1;
                    private static final long serialVersionUID = 0;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int len_;
                    private byte memoizedIsInitialized;
                    private static final TitleAssetFormat DEFAULT_INSTANCE = new TitleAssetFormat();
                    private static final j1<TitleAssetFormat> PARSER = new com.explorestack.protobuf.b<TitleAssetFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.1
                        @Override // com.explorestack.protobuf.j1
                        public TitleAssetFormat parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                            return new TitleAssetFormat(nVar, yVar);
                        }
                    };

                    public static TitleAssetFormat getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return b.O;
                    }

                    public static Builder newBuilder() {
                        return DEFAULT_INSTANCE.toBuilder();
                    }

                    public static TitleAssetFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                    }

                    public static TitleAssetFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer);
                    }

                    public static j1<TitleAssetFormat> parser() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (!(obj instanceof TitleAssetFormat)) {
                            return super.equals(obj);
                        }
                        TitleAssetFormat titleAssetFormat = (TitleAssetFormat) obj;
                        if (getLen() != titleAssetFormat.getLen() || hasExt() != titleAssetFormat.hasExt()) {
                            return false;
                        }
                        if ((!hasExt() || getExt().equals(titleAssetFormat.getExt())) && getExtProtoList().equals(titleAssetFormat.getExtProtoList()) && this.unknownFields.equals(titleAssetFormat.unknownFields)) {
                            return true;
                        }
                        return false;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public Struct getExt() {
                        Struct struct = this.ext_;
                        if (struct == null) {
                            return Struct.getDefaultInstance();
                        }
                        return struct;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public x1 getExtOrBuilder() {
                        return getExt();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public Any getExtProto(int i10) {
                        return this.extProto_.get(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public int getExtProtoCount() {
                        return this.extProto_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public List<Any> getExtProtoList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public e getExtProtoOrBuilder(int i10) {
                        return this.extProto_.get(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public List<? extends e> getExtProtoOrBuilderList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public int getLen() {
                        return this.len_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public j1<TitleAssetFormat> getParserForType() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public int getSerializedSize() {
                        int i10;
                        int i11 = this.memoizedSize;
                        if (i11 != -1) {
                            return i11;
                        }
                        int i12 = this.len_;
                        if (i12 != 0) {
                            i10 = CodedOutputStream.Y(1, i12);
                        } else {
                            i10 = 0;
                        }
                        for (int i13 = 0; i13 < this.extProto_.size(); i13++) {
                            i10 += CodedOutputStream.G(2, this.extProto_.get(i13));
                        }
                        if (this.ext_ != null) {
                            i10 += CodedOutputStream.G(3, getExt());
                        }
                        int serializedSize = i10 + this.unknownFields.getSerializedSize();
                        this.memoizedSize = serializedSize;
                        return serializedSize;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                    public final j2 getUnknownFields() {
                        return this.unknownFields;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
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
                        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getLen();
                        if (hasExt()) {
                            hashCode = (((hashCode * 37) + 3) * 53) + getExt().hashCode();
                        }
                        if (getExtProtoCount() > 0) {
                            hashCode = (((hashCode * 37) + 2) * 53) + getExtProtoList().hashCode();
                        }
                        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode2;
                        return hashCode2;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3
                    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                        return b.P.d(TitleAssetFormat.class, Builder.class);
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
                        return new TitleAssetFormat();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                        int i10 = this.len_;
                        if (i10 != 0) {
                            codedOutputStream.c1(1, i10);
                        }
                        for (int i11 = 0; i11 < this.extProto_.size(); i11++) {
                            codedOutputStream.L0(2, this.extProto_.get(i11));
                        }
                        if (this.ext_ != null) {
                            codedOutputStream.L0(3, getExt());
                        }
                        this.unknownFields.writeTo(codedOutputStream);
                    }

                    /* loaded from: classes3.dex */
                    public static final class Builder extends GeneratedMessageV3.b<Builder> implements TitleAssetFormatOrBuilder {
                        private int bitField0_;
                        private t1<Struct, Struct.Builder, x1> extBuilder_;
                        private p1<Any, Any.Builder, e> extProtoBuilder_;
                        private List<Any> extProto_;
                        private Struct ext_;
                        private int len_;

                        private void ensureExtProtoIsMutable() {
                            if ((this.bitField0_ & 1) == 0) {
                                this.extProto_ = new ArrayList(this.extProto_);
                                this.bitField0_ |= 1;
                            }
                        }

                        public static final Descriptors.Descriptor getDescriptor() {
                            return b.O;
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

                        public Builder clearLen() {
                            this.len_ = 0;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        public Descriptors.Descriptor getDescriptorForType() {
                            return b.O;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public int getExtProtoCount() {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var == null) {
                                return this.extProto_.size();
                            }
                            return p1Var.m();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public List<Any> getExtProtoList() {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var == null) {
                                return Collections.unmodifiableList(this.extProto_);
                            }
                            return p1Var.p();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public e getExtProtoOrBuilder(int i10) {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var == null) {
                                return this.extProto_.get(i10);
                            }
                            return p1Var.q(i10);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public List<? extends e> getExtProtoOrBuilderList() {
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var != null) {
                                return p1Var.r();
                            }
                            return Collections.unmodifiableList(this.extProto_);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public int getLen() {
                            return this.len_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public boolean hasExt() {
                            if (this.extBuilder_ == null && this.ext_ == null) {
                                return false;
                            }
                            return true;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                            return b.P.d(TitleAssetFormat.class, Builder.class);
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

                        public Builder setLen(int i10) {
                            this.len_ = i10;
                            onChanged();
                            return this;
                        }

                        private Builder() {
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public TitleAssetFormat build() {
                            TitleAssetFormat buildPartial = buildPartial();
                            if (buildPartial.isInitialized()) {
                                return buildPartial;
                            }
                            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public TitleAssetFormat buildPartial() {
                            TitleAssetFormat titleAssetFormat = new TitleAssetFormat(this);
                            titleAssetFormat.len_ = this.len_;
                            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                            if (t1Var == null) {
                                titleAssetFormat.ext_ = this.ext_;
                            } else {
                                titleAssetFormat.ext_ = t1Var.a();
                            }
                            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                            if (p1Var != null) {
                                titleAssetFormat.extProto_ = p1Var.f();
                            } else {
                                if ((this.bitField0_ & 1) != 0) {
                                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                    this.bitField0_ &= -2;
                                }
                                titleAssetFormat.extProto_ = this.extProto_;
                            }
                            onBuilt();
                            return titleAssetFormat;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                            return (Builder) super.clearField(fieldDescriptor);
                        }

                        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        /* renamed from: getDefaultInstanceForType */
                        public TitleAssetFormat mo4630getDefaultInstanceForType() {
                            return TitleAssetFormat.getDefaultInstance();
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
                            this.len_ = 0;
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

                        private Builder(GeneratedMessageV3.c cVar) {
                            super(cVar);
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
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
                            if (message instanceof TitleAssetFormat) {
                                return mergeFrom((TitleAssetFormat) message);
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

                        public Builder mergeFrom(TitleAssetFormat titleAssetFormat) {
                            if (titleAssetFormat == TitleAssetFormat.getDefaultInstance()) {
                                return this;
                            }
                            if (titleAssetFormat.getLen() != 0) {
                                setLen(titleAssetFormat.getLen());
                            }
                            if (titleAssetFormat.hasExt()) {
                                mergeExt(titleAssetFormat.getExt());
                            }
                            if (this.extProtoBuilder_ == null) {
                                if (!titleAssetFormat.extProto_.isEmpty()) {
                                    if (this.extProto_.isEmpty()) {
                                        this.extProto_ = titleAssetFormat.extProto_;
                                        this.bitField0_ &= -2;
                                    } else {
                                        ensureExtProtoIsMutable();
                                        this.extProto_.addAll(titleAssetFormat.extProto_);
                                    }
                                    onChanged();
                                }
                            } else if (!titleAssetFormat.extProto_.isEmpty()) {
                                if (!this.extProtoBuilder_.t()) {
                                    this.extProtoBuilder_.a(titleAssetFormat.extProto_);
                                } else {
                                    this.extProtoBuilder_.h();
                                    this.extProtoBuilder_ = null;
                                    this.extProto_ = titleAssetFormat.extProto_;
                                    this.bitField0_ &= -2;
                                    this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                                }
                            }
                            mergeUnknownFields(((GeneratedMessageV3) titleAssetFormat).unknownFields);
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
                        public com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                            /*
                                r2 = this;
                                r0 = 0
                                com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.access$2500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat r3 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat r4 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat) r4     // Catch: java.lang.Throwable -> L11
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
                            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat$Builder");
                        }
                    }

                    public static Builder newBuilder(TitleAssetFormat titleAssetFormat) {
                        return DEFAULT_INSTANCE.toBuilder().mergeFrom(titleAssetFormat);
                    }

                    public static TitleAssetFormat parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer, yVar);
                    }

                    private TitleAssetFormat(GeneratedMessageV3.b<?> bVar) {
                        super(bVar);
                        this.memoizedIsInitialized = (byte) -1;
                    }

                    public static TitleAssetFormat parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
                    }

                    public static TitleAssetFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString);
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
                    /* renamed from: getDefaultInstanceForType */
                    public TitleAssetFormat mo4630getDefaultInstanceForType() {
                        return DEFAULT_INSTANCE;
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public Builder toBuilder() {
                        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                    }

                    public static TitleAssetFormat parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString, yVar);
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public Builder newBuilderForType() {
                        return newBuilder();
                    }

                    private TitleAssetFormat() {
                        this.memoizedIsInitialized = (byte) -1;
                        this.extProto_ = Collections.emptyList();
                    }

                    public static TitleAssetFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr);
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.explorestack.protobuf.GeneratedMessageV3
                    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                        return new Builder(cVar);
                    }

                    public static TitleAssetFormat parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr, yVar);
                    }

                    public static TitleAssetFormat parseFrom(InputStream inputStream) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private TitleAssetFormat(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                                this.len_ = nVar.L();
                                            } else if (K == 18) {
                                                if (!z11) {
                                                    this.extProto_ = new ArrayList();
                                                    z11 = true;
                                                }
                                                this.extProto_.add(nVar.A(Any.parser(), yVar));
                                            } else if (K != 26) {
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

                    public static TitleAssetFormat parseFrom(InputStream inputStream, y yVar) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
                    }

                    public static TitleAssetFormat parseFrom(n nVar) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
                    }

                    public static TitleAssetFormat parseFrom(n nVar, y yVar) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
                    }
                }

                /* loaded from: classes3.dex */
                public interface TitleAssetFormatOrBuilder extends MessageOrBuilder {
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

                    int getLen();

                    boolean hasExt();

                    @Override // com.explorestack.protobuf.MessageOrBuilder
                    /* synthetic */ boolean isInitialized();
                }

                public static AssetFormat getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.M;
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static AssetFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static AssetFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static j1<AssetFormat> parser() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof AssetFormat)) {
                        return super.equals(obj);
                    }
                    AssetFormat assetFormat = (AssetFormat) obj;
                    if (getId() != assetFormat.getId() || getReq() != assetFormat.getReq() || hasTitle() != assetFormat.hasTitle()) {
                        return false;
                    }
                    if ((hasTitle() && !getTitle().equals(assetFormat.getTitle())) || hasImg() != assetFormat.hasImg()) {
                        return false;
                    }
                    if ((hasImg() && !getImg().equals(assetFormat.getImg())) || hasVideo() != assetFormat.hasVideo()) {
                        return false;
                    }
                    if ((hasVideo() && !getVideo().equals(assetFormat.getVideo())) || hasData() != assetFormat.hasData()) {
                        return false;
                    }
                    if ((hasData() && !getData().equals(assetFormat.getData())) || hasExt() != assetFormat.hasExt()) {
                        return false;
                    }
                    if ((!hasExt() || getExt().equals(assetFormat.getExt())) && getExtProtoList().equals(assetFormat.getExtProtoList()) && this.unknownFields.equals(assetFormat.unknownFields)) {
                        return true;
                    }
                    return false;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public DataAssetFormat getData() {
                    DataAssetFormat dataAssetFormat = this.data_;
                    if (dataAssetFormat == null) {
                        return DataAssetFormat.getDefaultInstance();
                    }
                    return dataAssetFormat;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public DataAssetFormatOrBuilder getDataOrBuilder() {
                    return getData();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public Struct getExt() {
                    Struct struct = this.ext_;
                    if (struct == null) {
                        return Struct.getDefaultInstance();
                    }
                    return struct;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public x1 getExtOrBuilder() {
                    return getExt();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public Any getExtProto(int i10) {
                    return this.extProto_.get(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public int getExtProtoCount() {
                    return this.extProto_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public List<Any> getExtProtoList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public e getExtProtoOrBuilder(int i10) {
                    return this.extProto_.get(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public List<? extends e> getExtProtoOrBuilderList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public int getId() {
                    return this.id_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public ImageAssetFormat getImg() {
                    ImageAssetFormat imageAssetFormat = this.img_;
                    if (imageAssetFormat == null) {
                        return ImageAssetFormat.getDefaultInstance();
                    }
                    return imageAssetFormat;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public ImageAssetFormatOrBuilder getImgOrBuilder() {
                    return getImg();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public j1<AssetFormat> getParserForType() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public boolean getReq() {
                    return this.req_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public int getSerializedSize() {
                    int i10;
                    int i11 = this.memoizedSize;
                    if (i11 != -1) {
                        return i11;
                    }
                    int i12 = this.id_;
                    if (i12 != 0) {
                        i10 = CodedOutputStream.Y(1, i12);
                    } else {
                        i10 = 0;
                    }
                    boolean z10 = this.req_;
                    if (z10) {
                        i10 += CodedOutputStream.e(2, z10);
                    }
                    if (this.title_ != null) {
                        i10 += CodedOutputStream.G(3, getTitle());
                    }
                    if (this.img_ != null) {
                        i10 += CodedOutputStream.G(4, getImg());
                    }
                    if (this.video_ != null) {
                        i10 += CodedOutputStream.G(5, getVideo());
                    }
                    if (this.data_ != null) {
                        i10 += CodedOutputStream.G(6, getData());
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public TitleAssetFormat getTitle() {
                    TitleAssetFormat titleAssetFormat = this.title_;
                    if (titleAssetFormat == null) {
                        return TitleAssetFormat.getDefaultInstance();
                    }
                    return titleAssetFormat;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public TitleAssetFormatOrBuilder getTitleOrBuilder() {
                    return getTitle();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                public final j2 getUnknownFields() {
                    return this.unknownFields;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public VideoPlacement getVideo() {
                    VideoPlacement videoPlacement = this.video_;
                    if (videoPlacement == null) {
                        return VideoPlacement.getDefaultInstance();
                    }
                    return videoPlacement;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public VideoPlacementOrBuilder getVideoOrBuilder() {
                    return getVideo();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public boolean hasData() {
                    if (this.data_ != null) {
                        return true;
                    }
                    return false;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public boolean hasExt() {
                    if (this.ext_ != null) {
                        return true;
                    }
                    return false;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public boolean hasImg() {
                    if (this.img_ != null) {
                        return true;
                    }
                    return false;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public boolean hasTitle() {
                    if (this.title_ != null) {
                        return true;
                    }
                    return false;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public boolean hasVideo() {
                    if (this.video_ != null) {
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
                    int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId()) * 37) + 2) * 53) + i0.d(getReq());
                    if (hasTitle()) {
                        hashCode = (((hashCode * 37) + 3) * 53) + getTitle().hashCode();
                    }
                    if (hasImg()) {
                        hashCode = (((hashCode * 37) + 4) * 53) + getImg().hashCode();
                    }
                    if (hasVideo()) {
                        hashCode = (((hashCode * 37) + 5) * 53) + getVideo().hashCode();
                    }
                    if (hasData()) {
                        hashCode = (((hashCode * 37) + 6) * 53) + getData().hashCode();
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
                    return b.N.d(AssetFormat.class, Builder.class);
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
                    return new AssetFormat();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    int i10 = this.id_;
                    if (i10 != 0) {
                        codedOutputStream.c1(1, i10);
                    }
                    boolean z10 = this.req_;
                    if (z10) {
                        codedOutputStream.n0(2, z10);
                    }
                    if (this.title_ != null) {
                        codedOutputStream.L0(3, getTitle());
                    }
                    if (this.img_ != null) {
                        codedOutputStream.L0(4, getImg());
                    }
                    if (this.video_ != null) {
                        codedOutputStream.L0(5, getVideo());
                    }
                    if (this.data_ != null) {
                        codedOutputStream.L0(6, getData());
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
                public static final class Builder extends GeneratedMessageV3.b<Builder> implements AssetFormatOrBuilder {
                    private int bitField0_;
                    private t1<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> dataBuilder_;
                    private DataAssetFormat data_;
                    private t1<Struct, Struct.Builder, x1> extBuilder_;
                    private p1<Any, Any.Builder, e> extProtoBuilder_;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int id_;
                    private t1<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> imgBuilder_;
                    private ImageAssetFormat img_;
                    private boolean req_;
                    private t1<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> titleBuilder_;
                    private TitleAssetFormat title_;
                    private t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> videoBuilder_;
                    private VideoPlacement video_;

                    private void ensureExtProtoIsMutable() {
                        if ((this.bitField0_ & 1) == 0) {
                            this.extProto_ = new ArrayList(this.extProto_);
                            this.bitField0_ |= 1;
                        }
                    }

                    private t1<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> getDataFieldBuilder() {
                        if (this.dataBuilder_ == null) {
                            this.dataBuilder_ = new t1<>(getData(), getParentForChildren(), isClean());
                            this.data_ = null;
                        }
                        return this.dataBuilder_;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return b.M;
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

                    private t1<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> getImgFieldBuilder() {
                        if (this.imgBuilder_ == null) {
                            this.imgBuilder_ = new t1<>(getImg(), getParentForChildren(), isClean());
                            this.img_ = null;
                        }
                        return this.imgBuilder_;
                    }

                    private t1<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> getTitleFieldBuilder() {
                        if (this.titleBuilder_ == null) {
                            this.titleBuilder_ = new t1<>(getTitle(), getParentForChildren(), isClean());
                            this.title_ = null;
                        }
                        return this.titleBuilder_;
                    }

                    private t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> getVideoFieldBuilder() {
                        if (this.videoBuilder_ == null) {
                            this.videoBuilder_ = new t1<>(getVideo(), getParentForChildren(), isClean());
                            this.video_ = null;
                        }
                        return this.videoBuilder_;
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

                    public Builder clearData() {
                        if (this.dataBuilder_ == null) {
                            this.data_ = null;
                            onChanged();
                        } else {
                            this.data_ = null;
                            this.dataBuilder_ = null;
                        }
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

                    public Builder clearId() {
                        this.id_ = 0;
                        onChanged();
                        return this;
                    }

                    public Builder clearImg() {
                        if (this.imgBuilder_ == null) {
                            this.img_ = null;
                            onChanged();
                        } else {
                            this.img_ = null;
                            this.imgBuilder_ = null;
                        }
                        return this;
                    }

                    public Builder clearReq() {
                        this.req_ = false;
                        onChanged();
                        return this;
                    }

                    public Builder clearTitle() {
                        if (this.titleBuilder_ == null) {
                            this.title_ = null;
                            onChanged();
                        } else {
                            this.title_ = null;
                            this.titleBuilder_ = null;
                        }
                        return this;
                    }

                    public Builder clearVideo() {
                        if (this.videoBuilder_ == null) {
                            this.video_ = null;
                            onChanged();
                        } else {
                            this.video_ = null;
                            this.videoBuilder_ = null;
                        }
                        return this;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public DataAssetFormat getData() {
                        t1<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> t1Var = this.dataBuilder_;
                        if (t1Var == null) {
                            DataAssetFormat dataAssetFormat = this.data_;
                            if (dataAssetFormat == null) {
                                return DataAssetFormat.getDefaultInstance();
                            }
                            return dataAssetFormat;
                        }
                        return t1Var.e();
                    }

                    public DataAssetFormat.Builder getDataBuilder() {
                        onChanged();
                        return getDataFieldBuilder().d();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public DataAssetFormatOrBuilder getDataOrBuilder() {
                        t1<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> t1Var = this.dataBuilder_;
                        if (t1Var != null) {
                            return t1Var.f();
                        }
                        DataAssetFormat dataAssetFormat = this.data_;
                        if (dataAssetFormat == null) {
                            return DataAssetFormat.getDefaultInstance();
                        }
                        return dataAssetFormat;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public Descriptors.Descriptor getDescriptorForType() {
                        return b.M;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public int getExtProtoCount() {
                        p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                        if (p1Var == null) {
                            return this.extProto_.size();
                        }
                        return p1Var.m();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public List<Any> getExtProtoList() {
                        p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                        if (p1Var == null) {
                            return Collections.unmodifiableList(this.extProto_);
                        }
                        return p1Var.p();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public e getExtProtoOrBuilder(int i10) {
                        p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                        if (p1Var == null) {
                            return this.extProto_.get(i10);
                        }
                        return p1Var.q(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public List<? extends e> getExtProtoOrBuilderList() {
                        p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                        if (p1Var != null) {
                            return p1Var.r();
                        }
                        return Collections.unmodifiableList(this.extProto_);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public int getId() {
                        return this.id_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public ImageAssetFormat getImg() {
                        t1<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> t1Var = this.imgBuilder_;
                        if (t1Var == null) {
                            ImageAssetFormat imageAssetFormat = this.img_;
                            if (imageAssetFormat == null) {
                                return ImageAssetFormat.getDefaultInstance();
                            }
                            return imageAssetFormat;
                        }
                        return t1Var.e();
                    }

                    public ImageAssetFormat.Builder getImgBuilder() {
                        onChanged();
                        return getImgFieldBuilder().d();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public ImageAssetFormatOrBuilder getImgOrBuilder() {
                        t1<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> t1Var = this.imgBuilder_;
                        if (t1Var != null) {
                            return t1Var.f();
                        }
                        ImageAssetFormat imageAssetFormat = this.img_;
                        if (imageAssetFormat == null) {
                            return ImageAssetFormat.getDefaultInstance();
                        }
                        return imageAssetFormat;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public boolean getReq() {
                        return this.req_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public TitleAssetFormat getTitle() {
                        t1<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> t1Var = this.titleBuilder_;
                        if (t1Var == null) {
                            TitleAssetFormat titleAssetFormat = this.title_;
                            if (titleAssetFormat == null) {
                                return TitleAssetFormat.getDefaultInstance();
                            }
                            return titleAssetFormat;
                        }
                        return t1Var.e();
                    }

                    public TitleAssetFormat.Builder getTitleBuilder() {
                        onChanged();
                        return getTitleFieldBuilder().d();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public TitleAssetFormatOrBuilder getTitleOrBuilder() {
                        t1<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> t1Var = this.titleBuilder_;
                        if (t1Var != null) {
                            return t1Var.f();
                        }
                        TitleAssetFormat titleAssetFormat = this.title_;
                        if (titleAssetFormat == null) {
                            return TitleAssetFormat.getDefaultInstance();
                        }
                        return titleAssetFormat;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public VideoPlacement getVideo() {
                        t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var = this.videoBuilder_;
                        if (t1Var == null) {
                            VideoPlacement videoPlacement = this.video_;
                            if (videoPlacement == null) {
                                return VideoPlacement.getDefaultInstance();
                            }
                            return videoPlacement;
                        }
                        return t1Var.e();
                    }

                    public VideoPlacement.Builder getVideoBuilder() {
                        onChanged();
                        return getVideoFieldBuilder().d();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public VideoPlacementOrBuilder getVideoOrBuilder() {
                        t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var = this.videoBuilder_;
                        if (t1Var != null) {
                            return t1Var.f();
                        }
                        VideoPlacement videoPlacement = this.video_;
                        if (videoPlacement == null) {
                            return VideoPlacement.getDefaultInstance();
                        }
                        return videoPlacement;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public boolean hasData() {
                        if (this.dataBuilder_ == null && this.data_ == null) {
                            return false;
                        }
                        return true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public boolean hasExt() {
                        if (this.extBuilder_ == null && this.ext_ == null) {
                            return false;
                        }
                        return true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public boolean hasImg() {
                        if (this.imgBuilder_ == null && this.img_ == null) {
                            return false;
                        }
                        return true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public boolean hasTitle() {
                        if (this.titleBuilder_ == null && this.title_ == null) {
                            return false;
                        }
                        return true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public boolean hasVideo() {
                        if (this.videoBuilder_ == null && this.video_ == null) {
                            return false;
                        }
                        return true;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                        return b.N.d(AssetFormat.class, Builder.class);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public final boolean isInitialized() {
                        return true;
                    }

                    public Builder mergeData(DataAssetFormat dataAssetFormat) {
                        t1<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> t1Var = this.dataBuilder_;
                        if (t1Var == null) {
                            DataAssetFormat dataAssetFormat2 = this.data_;
                            if (dataAssetFormat2 != null) {
                                this.data_ = DataAssetFormat.newBuilder(dataAssetFormat2).mergeFrom(dataAssetFormat).buildPartial();
                            } else {
                                this.data_ = dataAssetFormat;
                            }
                            onChanged();
                        } else {
                            t1Var.g(dataAssetFormat);
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

                    public Builder mergeImg(ImageAssetFormat imageAssetFormat) {
                        t1<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> t1Var = this.imgBuilder_;
                        if (t1Var == null) {
                            ImageAssetFormat imageAssetFormat2 = this.img_;
                            if (imageAssetFormat2 != null) {
                                this.img_ = ImageAssetFormat.newBuilder(imageAssetFormat2).mergeFrom(imageAssetFormat).buildPartial();
                            } else {
                                this.img_ = imageAssetFormat;
                            }
                            onChanged();
                        } else {
                            t1Var.g(imageAssetFormat);
                        }
                        return this;
                    }

                    public Builder mergeTitle(TitleAssetFormat titleAssetFormat) {
                        t1<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> t1Var = this.titleBuilder_;
                        if (t1Var == null) {
                            TitleAssetFormat titleAssetFormat2 = this.title_;
                            if (titleAssetFormat2 != null) {
                                this.title_ = TitleAssetFormat.newBuilder(titleAssetFormat2).mergeFrom(titleAssetFormat).buildPartial();
                            } else {
                                this.title_ = titleAssetFormat;
                            }
                            onChanged();
                        } else {
                            t1Var.g(titleAssetFormat);
                        }
                        return this;
                    }

                    public Builder mergeVideo(VideoPlacement videoPlacement) {
                        t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var = this.videoBuilder_;
                        if (t1Var == null) {
                            VideoPlacement videoPlacement2 = this.video_;
                            if (videoPlacement2 != null) {
                                this.video_ = VideoPlacement.newBuilder(videoPlacement2).mergeFrom(videoPlacement).buildPartial();
                            } else {
                                this.video_ = videoPlacement;
                            }
                            onChanged();
                        } else {
                            t1Var.g(videoPlacement);
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

                    public Builder setData(DataAssetFormat dataAssetFormat) {
                        t1<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> t1Var = this.dataBuilder_;
                        if (t1Var == null) {
                            dataAssetFormat.getClass();
                            this.data_ = dataAssetFormat;
                            onChanged();
                        } else {
                            t1Var.i(dataAssetFormat);
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

                    public Builder setId(int i10) {
                        this.id_ = i10;
                        onChanged();
                        return this;
                    }

                    public Builder setImg(ImageAssetFormat imageAssetFormat) {
                        t1<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> t1Var = this.imgBuilder_;
                        if (t1Var == null) {
                            imageAssetFormat.getClass();
                            this.img_ = imageAssetFormat;
                            onChanged();
                        } else {
                            t1Var.i(imageAssetFormat);
                        }
                        return this;
                    }

                    public Builder setReq(boolean z10) {
                        this.req_ = z10;
                        onChanged();
                        return this;
                    }

                    public Builder setTitle(TitleAssetFormat titleAssetFormat) {
                        t1<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> t1Var = this.titleBuilder_;
                        if (t1Var == null) {
                            titleAssetFormat.getClass();
                            this.title_ = titleAssetFormat;
                            onChanged();
                        } else {
                            t1Var.i(titleAssetFormat);
                        }
                        return this;
                    }

                    public Builder setVideo(VideoPlacement videoPlacement) {
                        t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var = this.videoBuilder_;
                        if (t1Var == null) {
                            videoPlacement.getClass();
                            this.video_ = videoPlacement;
                            onChanged();
                        } else {
                            t1Var.i(videoPlacement);
                        }
                        return this;
                    }

                    private Builder() {
                        this.extProto_ = Collections.emptyList();
                        maybeForceBuilderInitialization();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                    public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public AssetFormat build() {
                        AssetFormat buildPartial = buildPartial();
                        if (buildPartial.isInitialized()) {
                            return buildPartial;
                        }
                        throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public AssetFormat buildPartial() {
                        AssetFormat assetFormat = new AssetFormat(this);
                        assetFormat.id_ = this.id_;
                        assetFormat.req_ = this.req_;
                        t1<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> t1Var = this.titleBuilder_;
                        if (t1Var == null) {
                            assetFormat.title_ = this.title_;
                        } else {
                            assetFormat.title_ = t1Var.a();
                        }
                        t1<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> t1Var2 = this.imgBuilder_;
                        if (t1Var2 == null) {
                            assetFormat.img_ = this.img_;
                        } else {
                            assetFormat.img_ = t1Var2.a();
                        }
                        t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var3 = this.videoBuilder_;
                        if (t1Var3 == null) {
                            assetFormat.video_ = this.video_;
                        } else {
                            assetFormat.video_ = t1Var3.a();
                        }
                        t1<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> t1Var4 = this.dataBuilder_;
                        if (t1Var4 == null) {
                            assetFormat.data_ = this.data_;
                        } else {
                            assetFormat.data_ = t1Var4.a();
                        }
                        t1<Struct, Struct.Builder, x1> t1Var5 = this.extBuilder_;
                        if (t1Var5 == null) {
                            assetFormat.ext_ = this.ext_;
                        } else {
                            assetFormat.ext_ = t1Var5.a();
                        }
                        p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                        if (p1Var != null) {
                            assetFormat.extProto_ = p1Var.f();
                        } else {
                            if ((this.bitField0_ & 1) != 0) {
                                this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                this.bitField0_ &= -2;
                            }
                            assetFormat.extProto_ = this.extProto_;
                        }
                        onBuilt();
                        return assetFormat;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                    public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                        return (Builder) super.clearField(fieldDescriptor);
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    /* renamed from: getDefaultInstanceForType */
                    public AssetFormat mo4630getDefaultInstanceForType() {
                        return AssetFormat.getDefaultInstance();
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
                        this.id_ = 0;
                        this.req_ = false;
                        if (this.titleBuilder_ == null) {
                            this.title_ = null;
                        } else {
                            this.title_ = null;
                            this.titleBuilder_ = null;
                        }
                        if (this.imgBuilder_ == null) {
                            this.img_ = null;
                        } else {
                            this.img_ = null;
                            this.imgBuilder_ = null;
                        }
                        if (this.videoBuilder_ == null) {
                            this.video_ = null;
                        } else {
                            this.video_ = null;
                            this.videoBuilder_ = null;
                        }
                        if (this.dataBuilder_ == null) {
                            this.data_ = null;
                        } else {
                            this.data_ = null;
                            this.dataBuilder_ = null;
                        }
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

                    private Builder(GeneratedMessageV3.c cVar) {
                        super(cVar);
                        this.extProto_ = Collections.emptyList();
                        maybeForceBuilderInitialization();
                    }

                    public Builder setData(DataAssetFormat.Builder builder) {
                        t1<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> t1Var = this.dataBuilder_;
                        if (t1Var == null) {
                            this.data_ = builder.build();
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

                    public Builder setImg(ImageAssetFormat.Builder builder) {
                        t1<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> t1Var = this.imgBuilder_;
                        if (t1Var == null) {
                            this.img_ = builder.build();
                            onChanged();
                        } else {
                            t1Var.i(builder.build());
                        }
                        return this;
                    }

                    public Builder setTitle(TitleAssetFormat.Builder builder) {
                        t1<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> t1Var = this.titleBuilder_;
                        if (t1Var == null) {
                            this.title_ = builder.build();
                            onChanged();
                        } else {
                            t1Var.i(builder.build());
                        }
                        return this;
                    }

                    public Builder setVideo(VideoPlacement.Builder builder) {
                        t1<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> t1Var = this.videoBuilder_;
                        if (t1Var == null) {
                            this.video_ = builder.build();
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
                        if (message instanceof AssetFormat) {
                            return mergeFrom((AssetFormat) message);
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

                    public Builder mergeFrom(AssetFormat assetFormat) {
                        if (assetFormat == AssetFormat.getDefaultInstance()) {
                            return this;
                        }
                        if (assetFormat.getId() != 0) {
                            setId(assetFormat.getId());
                        }
                        if (assetFormat.getReq()) {
                            setReq(assetFormat.getReq());
                        }
                        if (assetFormat.hasTitle()) {
                            mergeTitle(assetFormat.getTitle());
                        }
                        if (assetFormat.hasImg()) {
                            mergeImg(assetFormat.getImg());
                        }
                        if (assetFormat.hasVideo()) {
                            mergeVideo(assetFormat.getVideo());
                        }
                        if (assetFormat.hasData()) {
                            mergeData(assetFormat.getData());
                        }
                        if (assetFormat.hasExt()) {
                            mergeExt(assetFormat.getExt());
                        }
                        if (this.extProtoBuilder_ == null) {
                            if (!assetFormat.extProto_.isEmpty()) {
                                if (this.extProto_.isEmpty()) {
                                    this.extProto_ = assetFormat.extProto_;
                                    this.bitField0_ &= -2;
                                } else {
                                    ensureExtProtoIsMutable();
                                    this.extProto_.addAll(assetFormat.extProto_);
                                }
                                onChanged();
                            }
                        } else if (!assetFormat.extProto_.isEmpty()) {
                            if (!this.extProtoBuilder_.t()) {
                                this.extProtoBuilder_.a(assetFormat.extProto_);
                            } else {
                                this.extProtoBuilder_.h();
                                this.extProtoBuilder_ = null;
                                this.extProto_ = assetFormat.extProto_;
                                this.bitField0_ &= -2;
                                this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                            }
                        }
                        mergeUnknownFields(((GeneratedMessageV3) assetFormat).unknownFields);
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
                    public com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                        /*
                            r2 = this;
                            r0 = 0
                            com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.access$7200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                            java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                            com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat r3 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                            com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat r4 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat) r4     // Catch: java.lang.Throwable -> L11
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
                        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder");
                    }
                }

                public static Builder newBuilder(AssetFormat assetFormat) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(assetFormat);
                }

                public static AssetFormat parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, yVar);
                }

                private AssetFormat(GeneratedMessageV3.b<?> bVar) {
                    super(bVar);
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static AssetFormat parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
                }

                public static AssetFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public AssetFormat mo4630getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                public static AssetFormat parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, yVar);
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public Builder newBuilderForType() {
                    return newBuilder();
                }

                private AssetFormat() {
                    this.memoizedIsInitialized = (byte) -1;
                    this.extProto_ = Collections.emptyList();
                }

                public static AssetFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.explorestack.protobuf.GeneratedMessageV3
                public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                    return new Builder(cVar);
                }

                public static AssetFormat parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, yVar);
                }

                public static AssetFormat parseFrom(InputStream inputStream) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                /* JADX WARN: Multi-variable type inference failed */
                private AssetFormat(n nVar, y yVar) throws InvalidProtocolBufferException {
                    this();
                    yVar.getClass();
                    j2.b g10 = j2.g();
                    boolean z10 = false;
                    Object[] objArr = null;
                    while (!z10) {
                        try {
                            try {
                                int K = nVar.K();
                                if (K != 0) {
                                    if (K == 8) {
                                        this.id_ = nVar.L();
                                    } else if (K != 16) {
                                        if (K == 26) {
                                            TitleAssetFormat titleAssetFormat = this.title_;
                                            TitleAssetFormat.Builder builder = titleAssetFormat != null ? titleAssetFormat.toBuilder() : null;
                                            TitleAssetFormat titleAssetFormat2 = (TitleAssetFormat) nVar.A(TitleAssetFormat.parser(), yVar);
                                            this.title_ = titleAssetFormat2;
                                            if (builder != null) {
                                                builder.mergeFrom(titleAssetFormat2);
                                                this.title_ = builder.buildPartial();
                                            }
                                        } else if (K == 34) {
                                            ImageAssetFormat imageAssetFormat = this.img_;
                                            ImageAssetFormat.Builder builder2 = imageAssetFormat != null ? imageAssetFormat.toBuilder() : null;
                                            ImageAssetFormat imageAssetFormat2 = (ImageAssetFormat) nVar.A(ImageAssetFormat.parser(), yVar);
                                            this.img_ = imageAssetFormat2;
                                            if (builder2 != null) {
                                                builder2.mergeFrom(imageAssetFormat2);
                                                this.img_ = builder2.buildPartial();
                                            }
                                        } else if (K == 42) {
                                            VideoPlacement videoPlacement = this.video_;
                                            VideoPlacement.Builder builder3 = videoPlacement != null ? videoPlacement.toBuilder() : null;
                                            VideoPlacement videoPlacement2 = (VideoPlacement) nVar.A(VideoPlacement.parser(), yVar);
                                            this.video_ = videoPlacement2;
                                            if (builder3 != null) {
                                                builder3.mergeFrom(videoPlacement2);
                                                this.video_ = builder3.buildPartial();
                                            }
                                        } else if (K == 50) {
                                            DataAssetFormat dataAssetFormat = this.data_;
                                            DataAssetFormat.Builder builder4 = dataAssetFormat != null ? dataAssetFormat.toBuilder() : null;
                                            DataAssetFormat dataAssetFormat2 = (DataAssetFormat) nVar.A(DataAssetFormat.parser(), yVar);
                                            this.data_ = dataAssetFormat2;
                                            if (builder4 != null) {
                                                builder4.mergeFrom(dataAssetFormat2);
                                                this.data_ = builder4.buildPartial();
                                            }
                                        } else if (K == 58) {
                                            if (objArr == null) {
                                                this.extProto_ = new ArrayList();
                                                objArr = 1;
                                            }
                                            this.extProto_.add(nVar.A(Any.parser(), yVar));
                                        } else if (K != 66) {
                                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                                            }
                                        } else {
                                            Struct struct = this.ext_;
                                            Struct.Builder builder5 = struct != null ? struct.toBuilder() : null;
                                            Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                            this.ext_ = struct2;
                                            if (builder5 != null) {
                                                builder5.mergeFrom(struct2);
                                                this.ext_ = builder5.buildPartial();
                                            }
                                        }
                                    } else {
                                        this.req_ = nVar.q();
                                    }
                                }
                                z10 = true;
                            } catch (InvalidProtocolBufferException e10) {
                                throw e10.setUnfinishedMessage(this);
                            } catch (IOException e11) {
                                throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                            }
                        } catch (Throwable th2) {
                            if (objArr != null) {
                                this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            }
                            this.unknownFields = g10.build();
                            makeExtensionsImmutable();
                            throw th2;
                        }
                    }
                    if (objArr != null) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                }

                public static AssetFormat parseFrom(InputStream inputStream, y yVar) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
                }

                public static AssetFormat parseFrom(n nVar) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
                }

                public static AssetFormat parseFrom(n nVar, y yVar) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
                }
            }

            /* loaded from: classes3.dex */
            public interface AssetFormatOrBuilder extends MessageOrBuilder {
                AssetFormat.DataAssetFormat getData();

                AssetFormat.DataAssetFormatOrBuilder getDataOrBuilder();

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

                int getId();

                AssetFormat.ImageAssetFormat getImg();

                AssetFormat.ImageAssetFormatOrBuilder getImgOrBuilder();

                boolean getReq();

                AssetFormat.TitleAssetFormat getTitle();

                AssetFormat.TitleAssetFormatOrBuilder getTitleOrBuilder();

                VideoPlacement getVideo();

                VideoPlacementOrBuilder getVideoOrBuilder();

                boolean hasData();

                boolean hasExt();

                boolean hasImg();

                boolean hasTitle();

                boolean hasVideo();

                @Override // com.explorestack.protobuf.MessageOrBuilder
                /* synthetic */ boolean isInitialized();
            }

            public static NativeFormat getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.K;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static NativeFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static NativeFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<NativeFormat> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof NativeFormat)) {
                    return super.equals(obj);
                }
                NativeFormat nativeFormat = (NativeFormat) obj;
                if (!getAssetList().equals(nativeFormat.getAssetList()) || hasExt() != nativeFormat.hasExt()) {
                    return false;
                }
                if ((!hasExt() || getExt().equals(nativeFormat.getExt())) && getExtProtoList().equals(nativeFormat.getExtProtoList()) && this.unknownFields.equals(nativeFormat.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public AssetFormat getAsset(int i10) {
                return this.asset_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public int getAssetCount() {
                return this.asset_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public List<AssetFormat> getAssetList() {
                return this.asset_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public AssetFormatOrBuilder getAssetOrBuilder(int i10) {
                return this.asset_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public List<? extends AssetFormatOrBuilder> getAssetOrBuilderList() {
                return this.asset_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public Struct getExt() {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public x1 getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public Any getExtProto(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<NativeFormat> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10 = this.memoizedSize;
                if (i10 != -1) {
                    return i10;
                }
                int i11 = 0;
                for (int i12 = 0; i12 < this.asset_.size(); i12++) {
                    i11 += CodedOutputStream.G(1, this.asset_.get(i12));
                }
                for (int i13 = 0; i13 < this.extProto_.size(); i13++) {
                    i11 += CodedOutputStream.G(2, this.extProto_.get(i13));
                }
                if (this.ext_ != null) {
                    i11 += CodedOutputStream.G(3, getExt());
                }
                int serializedSize = i11 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
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
                int hashCode = 779 + getDescriptor().hashCode();
                if (getAssetCount() > 0) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getAssetList().hashCode();
                }
                if (hasExt()) {
                    hashCode = (((hashCode * 37) + 3) * 53) + getExt().hashCode();
                }
                if (getExtProtoCount() > 0) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.L.d(NativeFormat.class, Builder.class);
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
                return new NativeFormat();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                for (int i10 = 0; i10 < this.asset_.size(); i10++) {
                    codedOutputStream.L0(1, this.asset_.get(i10));
                }
                for (int i11 = 0; i11 < this.extProto_.size(); i11++) {
                    codedOutputStream.L0(2, this.extProto_.get(i11));
                }
                if (this.ext_ != null) {
                    codedOutputStream.L0(3, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements NativeFormatOrBuilder {
                private p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> assetBuilder_;
                private List<AssetFormat> asset_;
                private int bitField0_;
                private t1<Struct, Struct.Builder, x1> extBuilder_;
                private p1<Any, Any.Builder, e> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;

                private void ensureAssetIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.asset_ = new ArrayList(this.asset_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 2;
                    }
                }

                private p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> getAssetFieldBuilder() {
                    if (this.assetBuilder_ == null) {
                        List<AssetFormat> list = this.asset_;
                        boolean z10 = true;
                        if ((this.bitField0_ & 1) == 0) {
                            z10 = false;
                        }
                        this.assetBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                        this.asset_ = null;
                    }
                    return this.assetBuilder_;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.K;
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
                        if ((this.bitField0_ & 2) != 0) {
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
                        getAssetFieldBuilder();
                        getExtProtoFieldBuilder();
                    }
                }

                public Builder addAllAsset(Iterable<? extends AssetFormat> iterable) {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        ensureAssetIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.asset_);
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

                public Builder addAsset(AssetFormat assetFormat) {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        assetFormat.getClass();
                        ensureAssetIsMutable();
                        this.asset_.add(assetFormat);
                        onChanged();
                    } else {
                        p1Var.e(assetFormat);
                    }
                    return this;
                }

                public AssetFormat.Builder addAssetBuilder() {
                    return getAssetFieldBuilder().c(AssetFormat.getDefaultInstance());
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

                public Builder clearAsset() {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        this.asset_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
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
                        this.bitField0_ &= -3;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public AssetFormat getAsset(int i10) {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        return this.asset_.get(i10);
                    }
                    return p1Var.n(i10);
                }

                public AssetFormat.Builder getAssetBuilder(int i10) {
                    return getAssetFieldBuilder().k(i10);
                }

                public List<AssetFormat.Builder> getAssetBuilderList() {
                    return getAssetFieldBuilder().l();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public int getAssetCount() {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        return this.asset_.size();
                    }
                    return p1Var.m();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public List<AssetFormat> getAssetList() {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.asset_);
                    }
                    return p1Var.p();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public AssetFormatOrBuilder getAssetOrBuilder(int i10) {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        return this.asset_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public List<? extends AssetFormatOrBuilder> getAssetOrBuilderList() {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.asset_);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.K;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public int getExtProtoCount() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.size();
                    }
                    return p1Var.m();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public List<Any> getExtProtoList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.extProto_);
                    }
                    return p1Var.p();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public e getExtProtoOrBuilder(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public List<? extends e> getExtProtoOrBuilderList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public boolean hasExt() {
                    if (this.extBuilder_ == null && this.ext_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.L.d(NativeFormat.class, Builder.class);
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

                public Builder removeAsset(int i10) {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        ensureAssetIsMutable();
                        this.asset_.remove(i10);
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

                public Builder setAsset(int i10, AssetFormat assetFormat) {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        assetFormat.getClass();
                        ensureAssetIsMutable();
                        this.asset_.set(i10, assetFormat);
                        onChanged();
                    } else {
                        p1Var.w(i10, assetFormat);
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

                private Builder() {
                    this.asset_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public NativeFormat build() {
                    NativeFormat buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public NativeFormat buildPartial() {
                    NativeFormat nativeFormat = new NativeFormat(this);
                    int i10 = this.bitField0_;
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        if ((i10 & 1) != 0) {
                            this.asset_ = Collections.unmodifiableList(this.asset_);
                            this.bitField0_ &= -2;
                        }
                        nativeFormat.asset_ = this.asset_;
                    } else {
                        nativeFormat.asset_ = p1Var.f();
                    }
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        nativeFormat.ext_ = this.ext_;
                    } else {
                        nativeFormat.ext_ = t1Var.a();
                    }
                    p1<Any, Any.Builder, e> p1Var2 = this.extProtoBuilder_;
                    if (p1Var2 != null) {
                        nativeFormat.extProto_ = p1Var2.f();
                    } else {
                        if ((this.bitField0_ & 2) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -3;
                        }
                        nativeFormat.extProto_ = this.extProto_;
                    }
                    onBuilt();
                    return nativeFormat;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public NativeFormat mo4630getDefaultInstanceForType() {
                    return NativeFormat.getDefaultInstance();
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

                public AssetFormat.Builder addAssetBuilder(int i10) {
                    return getAssetFieldBuilder().b(i10, AssetFormat.getDefaultInstance());
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
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        this.asset_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                    } else {
                        p1Var.g();
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
                        this.bitField0_ &= -3;
                    } else {
                        p1Var2.g();
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

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.asset_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                public Builder addAsset(int i10, AssetFormat assetFormat) {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        assetFormat.getClass();
                        ensureAssetIsMutable();
                        this.asset_.add(i10, assetFormat);
                        onChanged();
                    } else {
                        p1Var.d(i10, assetFormat);
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
                    if (message instanceof NativeFormat) {
                        return mergeFrom((NativeFormat) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder setAsset(int i10, AssetFormat.Builder builder) {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        ensureAssetIsMutable();
                        this.asset_.set(i10, builder.build());
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

                public Builder mergeFrom(NativeFormat nativeFormat) {
                    if (nativeFormat == NativeFormat.getDefaultInstance()) {
                        return this;
                    }
                    if (this.assetBuilder_ == null) {
                        if (!nativeFormat.asset_.isEmpty()) {
                            if (this.asset_.isEmpty()) {
                                this.asset_ = nativeFormat.asset_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureAssetIsMutable();
                                this.asset_.addAll(nativeFormat.asset_);
                            }
                            onChanged();
                        }
                    } else if (!nativeFormat.asset_.isEmpty()) {
                        if (!this.assetBuilder_.t()) {
                            this.assetBuilder_.a(nativeFormat.asset_);
                        } else {
                            this.assetBuilder_.h();
                            this.assetBuilder_ = null;
                            this.asset_ = nativeFormat.asset_;
                            this.bitField0_ &= -2;
                            this.assetBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getAssetFieldBuilder() : null;
                        }
                    }
                    if (nativeFormat.hasExt()) {
                        mergeExt(nativeFormat.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!nativeFormat.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = nativeFormat.extProto_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(nativeFormat.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!nativeFormat.extProto_.isEmpty()) {
                        if (!this.extProtoBuilder_.t()) {
                            this.extProtoBuilder_.a(nativeFormat.extProto_);
                        } else {
                            this.extProtoBuilder_.h();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = nativeFormat.extProto_;
                            this.bitField0_ &= -3;
                            this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) nativeFormat).unknownFields);
                    onChanged();
                    return this;
                }

                public Builder addAsset(AssetFormat.Builder builder) {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        ensureAssetIsMutable();
                        this.asset_.add(builder.build());
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

                public Builder addAsset(int i10, AssetFormat.Builder builder) {
                    p1<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> p1Var = this.assetBuilder_;
                    if (p1Var == null) {
                        ensureAssetIsMutable();
                        this.asset_.add(i10, builder.build());
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

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.access$8400()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat r3 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat r4 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$Builder");
                }
            }

            public static Builder newBuilder(NativeFormat nativeFormat) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(nativeFormat);
            }

            public static NativeFormat parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private NativeFormat(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static NativeFormat parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static NativeFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public NativeFormat mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static NativeFormat parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private NativeFormat() {
                this.memoizedIsInitialized = (byte) -1;
                this.asset_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
            }

            public static NativeFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static NativeFormat parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static NativeFormat parseFrom(InputStream inputStream) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private NativeFormat(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                            this.asset_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        this.asset_.add(nVar.A(AssetFormat.parser(), yVar));
                                    } else if (K == 18) {
                                        if (!(z11 & true)) {
                                            this.extProto_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        this.extProto_.add(nVar.A(Any.parser(), yVar));
                                    } else if (K != 26) {
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
                        if (z11 & true) {
                            this.asset_ = Collections.unmodifiableList(this.asset_);
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
                    this.asset_ = Collections.unmodifiableList(this.asset_);
                }
                if (z11 & true) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static NativeFormat parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static NativeFormat parseFrom(n nVar) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static NativeFormat parseFrom(n nVar, y yVar) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes3.dex */
        public interface NativeFormatOrBuilder extends MessageOrBuilder {
            NativeFormat.AssetFormat getAsset(int i10);

            int getAssetCount();

            List<NativeFormat.AssetFormat> getAssetList();

            NativeFormat.AssetFormatOrBuilder getAssetOrBuilder(int i10);

            List<? extends NativeFormat.AssetFormatOrBuilder> getAssetOrBuilderList();

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

            boolean hasExt();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public static DisplayPlacement getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.G;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DisplayPlacement parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DisplayPlacement parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<DisplayPlacement> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DisplayPlacement)) {
                return super.equals(obj);
            }
            DisplayPlacement displayPlacement = (DisplayPlacement) obj;
            if (this.pos_ != displayPlacement.pos_ || getInstl() != displayPlacement.getInstl() || getTopframe() != displayPlacement.getTopframe() || !getIfrbustList().equals(displayPlacement.getIfrbustList()) || this.clktype_ != displayPlacement.clktype_ || getAmpren() != displayPlacement.getAmpren() || this.ptype_ != displayPlacement.ptype_ || this.context_ != displayPlacement.context_ || !getMimeList().equals(displayPlacement.getMimeList()) || !this.api_.equals(displayPlacement.api_) || !this.ctype_.equals(displayPlacement.ctype_) || getW() != displayPlacement.getW() || getH() != displayPlacement.getH() || this.unit_ != displayPlacement.unit_ || getPriv() != displayPlacement.getPriv() || !getDisplayfmtList().equals(displayPlacement.getDisplayfmtList()) || hasNativefmt() != displayPlacement.hasNativefmt()) {
                return false;
            }
            if ((hasNativefmt() && !getNativefmt().equals(displayPlacement.getNativefmt())) || !getEventList().equals(displayPlacement.getEventList()) || hasExt() != displayPlacement.hasExt()) {
                return false;
            }
            if ((!hasExt() || getExt().equals(displayPlacement.getExt())) && getExtProtoList().equals(displayPlacement.getExtProtoList()) && this.unknownFields.equals(displayPlacement.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getAmpren() {
            return this.ampren_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public ApiFramework getApi(int i10) {
            return api_converter_.convert(this.api_.get(i10));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getApiCount() {
            return this.api_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public List<ApiFramework> getApiList() {
            return new i0.h(this.api_, api_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getApiValue(int i10) {
            return this.api_.get(i10).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public List<Integer> getApiValueList() {
            return this.api_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public ClickType getClktype() {
            ClickType valueOf = ClickType.valueOf(this.clktype_);
            if (valueOf == null) {
                return ClickType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getClktypeValue() {
            return this.clktype_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public DisplayContextType getContext() {
            DisplayContextType valueOf = DisplayContextType.valueOf(this.context_);
            if (valueOf == null) {
                return DisplayContextType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getContextValue() {
            return this.context_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public DisplayCreativeType getCtype(int i10) {
            return ctype_converter_.convert(this.ctype_.get(i10));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getCtypeCount() {
            return this.ctype_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public List<DisplayCreativeType> getCtypeList() {
            return new i0.h(this.ctype_, ctype_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getCtypeValue(int i10) {
            return this.ctype_.get(i10).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public List<Integer> getCtypeValueList() {
            return this.ctype_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public DisplayFormat getDisplayfmt(int i10) {
            return this.displayfmt_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getDisplayfmtCount() {
            return this.displayfmt_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public List<DisplayFormat> getDisplayfmtList() {
            return this.displayfmt_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public DisplayFormatOrBuilder getDisplayfmtOrBuilder(int i10) {
            return this.displayfmt_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public List<? extends DisplayFormatOrBuilder> getDisplayfmtOrBuilderList() {
            return this.displayfmt_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public EventSpec getEvent(int i10) {
            return this.event_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getEventCount() {
            return this.event_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public List<EventSpec> getEventList() {
            return this.event_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public EventSpecOrBuilder getEventOrBuilder(int i10) {
            return this.event_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public List<? extends EventSpecOrBuilder> getEventOrBuilderList() {
            return this.event_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public Struct getExt() {
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public x1 getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public Any getExtProto(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public e getExtProtoOrBuilder(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public List<? extends e> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getH() {
            return this.h_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public String getIfrbust(int i10) {
            return this.ifrbust_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public ByteString getIfrbustBytes(int i10) {
            return this.ifrbust_.getByteString(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getIfrbustCount() {
            return this.ifrbust_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public boolean getInstl() {
            return this.instl_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public String getMime(int i10) {
            return this.mime_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public ByteString getMimeBytes(int i10) {
            return this.mime_.getByteString(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getMimeCount() {
            return this.mime_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public NativeFormat getNativefmt() {
            NativeFormat nativeFormat = this.nativefmt_;
            if (nativeFormat == null) {
                return NativeFormat.getDefaultInstance();
            }
            return nativeFormat;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public NativeFormatOrBuilder getNativefmtOrBuilder() {
            return getNativefmt();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<DisplayPlacement> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public PlacementPosition getPos() {
            PlacementPosition valueOf = PlacementPosition.valueOf(this.pos_);
            if (valueOf == null) {
                return PlacementPosition.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getPosValue() {
            return this.pos_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public boolean getPriv() {
            return this.priv_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public DisplayPlacementType getPtype() {
            DisplayPlacementType valueOf = DisplayPlacementType.valueOf(this.ptype_);
            if (valueOf == null) {
                return DisplayPlacementType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getPtypeValue() {
            return this.ptype_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (this.pos_ != PlacementPosition.PLACEMENT_POSITION_INVALID.getNumber()) {
                i10 = CodedOutputStream.l(1, this.pos_);
            } else {
                i10 = 0;
            }
            boolean z10 = this.instl_;
            if (z10) {
                i10 += CodedOutputStream.e(2, z10);
            }
            boolean z11 = this.topframe_;
            if (z11) {
                i10 += CodedOutputStream.e(3, z11);
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.ifrbust_.size(); i13++) {
                i12 += GeneratedMessageV3.computeStringSizeNoTag(this.ifrbust_.getRaw(i13));
            }
            int size = i10 + i12 + getIfrbustList().size();
            if (this.clktype_ != ClickType.CLICK_TYPE_NON_CLICKABLE.getNumber()) {
                size += CodedOutputStream.l(5, this.clktype_);
            }
            int i14 = this.ampren_;
            if (i14 != 0) {
                size += CodedOutputStream.Y(6, i14);
            }
            if (this.ptype_ != DisplayPlacementType.DISPLAY_PLACEMENT_TYPE_INVALID.getNumber()) {
                size += CodedOutputStream.l(7, this.ptype_);
            }
            if (this.context_ != DisplayContextType.DISPLAY_CONTEXT_TYPE_INVALID.getNumber()) {
                size += CodedOutputStream.l(8, this.context_);
            }
            int i15 = 0;
            for (int i16 = 0; i16 < this.mime_.size(); i16++) {
                i15 += GeneratedMessageV3.computeStringSizeNoTag(this.mime_.getRaw(i16));
            }
            int size2 = size + i15 + getMimeList().size();
            int i17 = 0;
            for (int i18 = 0; i18 < this.api_.size(); i18++) {
                i17 += CodedOutputStream.m(this.api_.get(i18).intValue());
            }
            int i19 = size2 + i17;
            if (!getApiList().isEmpty()) {
                i19 = i19 + 1 + CodedOutputStream.Z(i17);
            }
            this.apiMemoizedSerializedSize = i17;
            int i20 = 0;
            for (int i21 = 0; i21 < this.ctype_.size(); i21++) {
                i20 += CodedOutputStream.m(this.ctype_.get(i21).intValue());
            }
            int i22 = i19 + i20;
            if (!getCtypeList().isEmpty()) {
                i22 = i22 + 1 + CodedOutputStream.Z(i20);
            }
            this.ctypeMemoizedSerializedSize = i20;
            int i23 = this.w_;
            if (i23 != 0) {
                i22 += CodedOutputStream.Y(12, i23);
            }
            int i24 = this.h_;
            if (i24 != 0) {
                i22 += CodedOutputStream.Y(13, i24);
            }
            if (this.unit_ != SizeUnit.SIZE_UNIT_INVALID.getNumber()) {
                i22 += CodedOutputStream.l(14, this.unit_);
            }
            boolean z12 = this.priv_;
            if (z12) {
                i22 += CodedOutputStream.e(15, z12);
            }
            for (int i25 = 0; i25 < this.displayfmt_.size(); i25++) {
                i22 += CodedOutputStream.G(16, this.displayfmt_.get(i25));
            }
            if (this.nativefmt_ != null) {
                i22 += CodedOutputStream.G(17, getNativefmt());
            }
            for (int i26 = 0; i26 < this.event_.size(); i26++) {
                i22 += CodedOutputStream.G(18, this.event_.get(i26));
            }
            for (int i27 = 0; i27 < this.extProto_.size(); i27++) {
                i22 += CodedOutputStream.G(19, this.extProto_.get(i27));
            }
            if (this.ext_ != null) {
                i22 += CodedOutputStream.G(20, getExt());
            }
            int serializedSize = i22 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public boolean getTopframe() {
            return this.topframe_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public SizeUnit getUnit() {
            SizeUnit valueOf = SizeUnit.valueOf(this.unit_);
            if (valueOf == null) {
                return SizeUnit.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getUnitValue() {
            return this.unit_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public int getW() {
            return this.w_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public boolean hasExt() {
            if (this.ext_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public boolean hasNativefmt() {
            if (this.nativefmt_ != null) {
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
            int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.pos_) * 37) + 2) * 53) + i0.d(getInstl())) * 37) + 3) * 53) + i0.d(getTopframe());
            if (getIfrbustCount() > 0) {
                hashCode = (((hashCode * 37) + 4) * 53) + getIfrbustList().hashCode();
            }
            int ampren = (((((((((((((((hashCode * 37) + 5) * 53) + this.clktype_) * 37) + 6) * 53) + getAmpren()) * 37) + 7) * 53) + this.ptype_) * 37) + 8) * 53) + this.context_;
            if (getMimeCount() > 0) {
                ampren = (((ampren * 37) + 9) * 53) + getMimeList().hashCode();
            }
            if (getApiCount() > 0) {
                ampren = (((ampren * 37) + 10) * 53) + this.api_.hashCode();
            }
            if (getCtypeCount() > 0) {
                ampren = (((ampren * 37) + 11) * 53) + this.ctype_.hashCode();
            }
            int w10 = (((((((((((((((ampren * 37) + 12) * 53) + getW()) * 37) + 13) * 53) + getH()) * 37) + 14) * 53) + this.unit_) * 37) + 15) * 53) + i0.d(getPriv());
            if (getDisplayfmtCount() > 0) {
                w10 = (((w10 * 37) + 16) * 53) + getDisplayfmtList().hashCode();
            }
            if (hasNativefmt()) {
                w10 = (((w10 * 37) + 17) * 53) + getNativefmt().hashCode();
            }
            if (getEventCount() > 0) {
                w10 = (((w10 * 37) + 18) * 53) + getEventList().hashCode();
            }
            if (hasExt()) {
                w10 = (((w10 * 37) + 20) * 53) + getExt().hashCode();
            }
            if (getExtProtoCount() > 0) {
                w10 = (((w10 * 37) + 19) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (w10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.H.d(DisplayPlacement.class, Builder.class);
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
            return new DisplayPlacement();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if (this.pos_ != PlacementPosition.PLACEMENT_POSITION_INVALID.getNumber()) {
                codedOutputStream.v0(1, this.pos_);
            }
            boolean z10 = this.instl_;
            if (z10) {
                codedOutputStream.n0(2, z10);
            }
            boolean z11 = this.topframe_;
            if (z11) {
                codedOutputStream.n0(3, z11);
            }
            for (int i10 = 0; i10 < this.ifrbust_.size(); i10++) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.ifrbust_.getRaw(i10));
            }
            if (this.clktype_ != ClickType.CLICK_TYPE_NON_CLICKABLE.getNumber()) {
                codedOutputStream.v0(5, this.clktype_);
            }
            int i11 = this.ampren_;
            if (i11 != 0) {
                codedOutputStream.c1(6, i11);
            }
            if (this.ptype_ != DisplayPlacementType.DISPLAY_PLACEMENT_TYPE_INVALID.getNumber()) {
                codedOutputStream.v0(7, this.ptype_);
            }
            if (this.context_ != DisplayContextType.DISPLAY_CONTEXT_TYPE_INVALID.getNumber()) {
                codedOutputStream.v0(8, this.context_);
            }
            for (int i12 = 0; i12 < this.mime_.size(); i12++) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.mime_.getRaw(i12));
            }
            if (getApiList().size() > 0) {
                codedOutputStream.d1(82);
                codedOutputStream.d1(this.apiMemoizedSerializedSize);
            }
            for (int i13 = 0; i13 < this.api_.size(); i13++) {
                codedOutputStream.w0(this.api_.get(i13).intValue());
            }
            if (getCtypeList().size() > 0) {
                codedOutputStream.d1(90);
                codedOutputStream.d1(this.ctypeMemoizedSerializedSize);
            }
            for (int i14 = 0; i14 < this.ctype_.size(); i14++) {
                codedOutputStream.w0(this.ctype_.get(i14).intValue());
            }
            int i15 = this.w_;
            if (i15 != 0) {
                codedOutputStream.c1(12, i15);
            }
            int i16 = this.h_;
            if (i16 != 0) {
                codedOutputStream.c1(13, i16);
            }
            if (this.unit_ != SizeUnit.SIZE_UNIT_INVALID.getNumber()) {
                codedOutputStream.v0(14, this.unit_);
            }
            boolean z12 = this.priv_;
            if (z12) {
                codedOutputStream.n0(15, z12);
            }
            for (int i17 = 0; i17 < this.displayfmt_.size(); i17++) {
                codedOutputStream.L0(16, this.displayfmt_.get(i17));
            }
            if (this.nativefmt_ != null) {
                codedOutputStream.L0(17, getNativefmt());
            }
            for (int i18 = 0; i18 < this.event_.size(); i18++) {
                codedOutputStream.L0(18, this.event_.get(i18));
            }
            for (int i19 = 0; i19 < this.extProto_.size(); i19++) {
                codedOutputStream.L0(19, this.extProto_.get(i19));
            }
            if (this.ext_ != null) {
                codedOutputStream.L0(20, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static Builder newBuilder(DisplayPlacement displayPlacement) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(displayPlacement);
        }

        public static DisplayPlacement parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public m1 getIfrbustList() {
            return this.ifrbust_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public m1 getMimeList() {
            return this.mime_;
        }

        private DisplayPlacement(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DisplayPlacement parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static DisplayPlacement parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public DisplayPlacement mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static DisplayPlacement parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private DisplayPlacement() {
            this.memoizedIsInitialized = (byte) -1;
            this.pos_ = 0;
            n0 n0Var = m0.f14459d;
            this.ifrbust_ = n0Var;
            this.clktype_ = 0;
            this.ptype_ = 0;
            this.context_ = 0;
            this.mime_ = n0Var;
            this.api_ = Collections.emptyList();
            this.ctype_ = Collections.emptyList();
            this.unit_ = 0;
            this.displayfmt_ = Collections.emptyList();
            this.event_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        public static DisplayPlacement parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static DisplayPlacement parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static DisplayPlacement parseFrom(InputStream inputStream) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static DisplayPlacement parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static DisplayPlacement parseFrom(n nVar) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static DisplayPlacement parseFrom(n nVar, y yVar) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private DisplayPlacement(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                this.pos_ = nVar.t();
                                continue;
                            case 16:
                                this.instl_ = nVar.q();
                                continue;
                            case 24:
                                this.topframe_ = nVar.q();
                                continue;
                            case 34:
                                String J = nVar.J();
                                boolean z12 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z12) {
                                    this.ifrbust_ = new m0();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.ifrbust_.add(J);
                                continue;
                            case 40:
                                this.clktype_ = nVar.t();
                                continue;
                            case 48:
                                this.ampren_ = nVar.L();
                                continue;
                            case 56:
                                this.ptype_ = nVar.t();
                                continue;
                            case 64:
                                this.context_ = nVar.t();
                                continue;
                            case 74:
                                String J2 = nVar.J();
                                boolean z13 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z13) {
                                    this.mime_ = new m0();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.mime_.add(J2);
                                continue;
                            case 80:
                                int t10 = nVar.t();
                                boolean z14 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z14) {
                                    this.api_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.api_.add(Integer.valueOf(t10));
                                continue;
                            case 82:
                                int p10 = nVar.p(nVar.C());
                                z11 = z11;
                                while (nVar.d() > 0) {
                                    int t11 = nVar.t();
                                    if (!((z11 ? 1 : 0) & true)) {
                                        this.api_ = new ArrayList();
                                        z11 = (z11 ? 1 : 0) | true;
                                    }
                                    this.api_.add(Integer.valueOf(t11));
                                    z11 = z11;
                                }
                                nVar.o(p10);
                                continue;
                            case 88:
                                int t12 = nVar.t();
                                boolean z15 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z15) {
                                    this.ctype_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.ctype_.add(Integer.valueOf(t12));
                                continue;
                            case 90:
                                int p11 = nVar.p(nVar.C());
                                z11 = z11;
                                while (nVar.d() > 0) {
                                    int t13 = nVar.t();
                                    if (!((z11 ? 1 : 0) & true)) {
                                        this.ctype_ = new ArrayList();
                                        z11 = (z11 ? 1 : 0) | true;
                                    }
                                    this.ctype_.add(Integer.valueOf(t13));
                                    z11 = z11;
                                }
                                nVar.o(p11);
                                continue;
                            case 96:
                                this.w_ = nVar.L();
                                continue;
                            case 104:
                                this.h_ = nVar.L();
                                continue;
                            case 112:
                                this.unit_ = nVar.t();
                                continue;
                            case 120:
                                this.priv_ = nVar.q();
                                continue;
                            case 130:
                                boolean z16 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z16) {
                                    this.displayfmt_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.displayfmt_.add(nVar.A(DisplayFormat.parser(), yVar));
                                continue;
                            case 138:
                                NativeFormat nativeFormat = this.nativefmt_;
                                NativeFormat.Builder builder = nativeFormat != null ? nativeFormat.toBuilder() : null;
                                NativeFormat nativeFormat2 = (NativeFormat) nVar.A(NativeFormat.parser(), yVar);
                                this.nativefmt_ = nativeFormat2;
                                if (builder != null) {
                                    builder.mergeFrom(nativeFormat2);
                                    this.nativefmt_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 146:
                                boolean z17 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z17) {
                                    this.event_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.event_.add(nVar.A(EventSpec.parser(), yVar));
                                continue;
                            case 154:
                                boolean z18 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z18) {
                                    this.extProto_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.extProto_.add(nVar.A(Any.parser(), yVar));
                                continue;
                            case 162:
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
                        this.ifrbust_ = this.ifrbust_.getUnmodifiableView();
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.mime_ = this.mime_.getUnmodifiableView();
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.api_ = Collections.unmodifiableList(this.api_);
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.ctype_ = Collections.unmodifiableList(this.ctype_);
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.displayfmt_ = Collections.unmodifiableList(this.displayfmt_);
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.event_ = Collections.unmodifiableList(this.event_);
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
                this.ifrbust_ = this.ifrbust_.getUnmodifiableView();
            }
            if ((z11 ? 1 : 0) & true) {
                this.mime_ = this.mime_.getUnmodifiableView();
            }
            if ((z11 ? 1 : 0) & true) {
                this.api_ = Collections.unmodifiableList(this.api_);
            }
            if ((z11 ? 1 : 0) & true) {
                this.ctype_ = Collections.unmodifiableList(this.ctype_);
            }
            if ((z11 ? 1 : 0) & true) {
                this.displayfmt_ = Collections.unmodifiableList(this.displayfmt_);
            }
            if ((z11 ? 1 : 0) & true) {
                this.event_ = Collections.unmodifiableList(this.event_);
            }
            if ((z11 ? 1 : 0) & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public interface DisplayPlacementOrBuilder extends MessageOrBuilder {
        int getAmpren();

        ApiFramework getApi(int i10);

        int getApiCount();

        List<ApiFramework> getApiList();

        int getApiValue(int i10);

        List<Integer> getApiValueList();

        ClickType getClktype();

        int getClktypeValue();

        DisplayContextType getContext();

        int getContextValue();

        DisplayCreativeType getCtype(int i10);

        int getCtypeCount();

        List<DisplayCreativeType> getCtypeList();

        int getCtypeValue(int i10);

        List<Integer> getCtypeValueList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        DisplayPlacement.DisplayFormat getDisplayfmt(int i10);

        int getDisplayfmtCount();

        List<DisplayPlacement.DisplayFormat> getDisplayfmtList();

        DisplayPlacement.DisplayFormatOrBuilder getDisplayfmtOrBuilder(int i10);

        List<? extends DisplayPlacement.DisplayFormatOrBuilder> getDisplayfmtOrBuilderList();

        DisplayPlacement.EventSpec getEvent(int i10);

        int getEventCount();

        List<DisplayPlacement.EventSpec> getEventList();

        DisplayPlacement.EventSpecOrBuilder getEventOrBuilder(int i10);

        List<? extends DisplayPlacement.EventSpecOrBuilder> getEventOrBuilderList();

        Struct getExt();

        x1 getExtOrBuilder();

        Any getExtProto(int i10);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        e getExtProtoOrBuilder(int i10);

        List<? extends e> getExtProtoOrBuilderList();

        int getH();

        String getIfrbust(int i10);

        ByteString getIfrbustBytes(int i10);

        int getIfrbustCount();

        List<String> getIfrbustList();

        boolean getInstl();

        String getMime(int i10);

        ByteString getMimeBytes(int i10);

        int getMimeCount();

        List<String> getMimeList();

        DisplayPlacement.NativeFormat getNativefmt();

        DisplayPlacement.NativeFormatOrBuilder getNativefmtOrBuilder();

        PlacementPosition getPos();

        int getPosValue();

        boolean getPriv();

        DisplayPlacementType getPtype();

        int getPtypeValue();

        boolean getTopframe();

        SizeUnit getUnit();

        int getUnitValue();

        int getW();

        boolean hasExt();

        boolean hasNativefmt();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes3.dex */
    public static final class VideoPlacement extends GeneratedMessageV3 implements VideoPlacementOrBuilder {
        public static final int API_FIELD_NUMBER = 11;
        public static final int BOXING_FIELD_NUMBER = 24;
        public static final int CLKTYPE_FIELD_NUMBER = 9;
        public static final int COMPTYPE_FIELD_NUMBER = 26;
        public static final int COMP_FIELD_NUMBER = 25;
        public static final int CTYPE_FIELD_NUMBER = 12;
        public static final int DELAY_FIELD_NUMBER = 3;
        public static final int DELIVERY_FIELD_NUMBER = 21;
        public static final int EXT_FIELD_NUMBER = 28;
        public static final int EXT_PROTO_FIELD_NUMBER = 27;
        public static final int H_FIELD_NUMBER = 14;
        public static final int LINEAR_FIELD_NUMBER = 23;
        public static final int MAXBITR_FIELD_NUMBER = 20;
        public static final int MAXDUR_FIELD_NUMBER = 17;
        public static final int MAXEXT_FIELD_NUMBER = 18;
        public static final int MAXSEQ_FIELD_NUMBER = 22;
        public static final int MIME_FIELD_NUMBER = 10;
        public static final int MINBITR_FIELD_NUMBER = 19;
        public static final int MINDUR_FIELD_NUMBER = 16;
        public static final int PLAYEND_FIELD_NUMBER = 8;
        public static final int PLAYMETHOD_FIELD_NUMBER = 7;
        public static final int POS_FIELD_NUMBER = 2;
        public static final int PTYPE_FIELD_NUMBER = 1;
        public static final int SKIPAFTER_FIELD_NUMBER = 6;
        public static final int SKIPMIN_FIELD_NUMBER = 5;
        public static final int SKIP_FIELD_NUMBER = 4;
        public static final int UNIT_FIELD_NUMBER = 15;
        public static final int W_FIELD_NUMBER = 13;
        private static final long serialVersionUID = 0;
        private int apiMemoizedSerializedSize;
        private List<Integer> api_;
        private boolean boxing_;
        private int clktype_;
        private List<Companion> comp_;
        private int comptypeMemoizedSerializedSize;
        private List<Integer> comptype_;
        private int ctypeMemoizedSerializedSize;
        private List<Integer> ctype_;
        private int delay_;
        private int deliveryMemoizedSerializedSize;
        private List<Integer> delivery_;
        private List<Any> extProto_;
        private Struct ext_;
        private int h_;
        private int linear_;
        private int maxbitr_;
        private int maxdur_;
        private int maxext_;
        private int maxseq_;
        private byte memoizedIsInitialized;
        private n0 mime_;
        private int minbitr_;
        private int mindur_;
        private int playend_;
        private int playmethod_;
        private int pos_;
        private int ptype_;
        private boolean skip_;
        private int skipafter_;
        private int skipmin_;
        private int unit_;
        private int w_;
        private static final i0.h.a<Integer, ApiFramework> api_converter_ = new i0.h.a<Integer, ApiFramework>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.1
            @Override // com.explorestack.protobuf.i0.h.a
            public ApiFramework convert(Integer num) {
                ApiFramework valueOf = ApiFramework.valueOf(num.intValue());
                return valueOf == null ? ApiFramework.UNRECOGNIZED : valueOf;
            }
        };
        private static final i0.h.a<Integer, VideoCreativeType> ctype_converter_ = new i0.h.a<Integer, VideoCreativeType>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.2
            @Override // com.explorestack.protobuf.i0.h.a
            public VideoCreativeType convert(Integer num) {
                VideoCreativeType valueOf = VideoCreativeType.valueOf(num.intValue());
                return valueOf == null ? VideoCreativeType.UNRECOGNIZED : valueOf;
            }
        };
        private static final i0.h.a<Integer, DeliveryMethod> delivery_converter_ = new i0.h.a<Integer, DeliveryMethod>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.3
            @Override // com.explorestack.protobuf.i0.h.a
            public DeliveryMethod convert(Integer num) {
                DeliveryMethod valueOf = DeliveryMethod.valueOf(num.intValue());
                return valueOf == null ? DeliveryMethod.UNRECOGNIZED : valueOf;
            }
        };
        private static final i0.h.a<Integer, CompanionType> comptype_converter_ = new i0.h.a<Integer, CompanionType>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.4
            @Override // com.explorestack.protobuf.i0.h.a
            public CompanionType convert(Integer num) {
                CompanionType valueOf = CompanionType.valueOf(num.intValue());
                return valueOf == null ? CompanionType.UNRECOGNIZED : valueOf;
            }
        };
        private static final VideoPlacement DEFAULT_INSTANCE = new VideoPlacement();
        private static final j1<VideoPlacement> PARSER = new com.explorestack.protobuf.b<VideoPlacement>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.5
            @Override // com.explorestack.protobuf.j1
            public VideoPlacement parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new VideoPlacement(nVar, yVar);
            }
        };

        /* loaded from: classes3.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements VideoPlacementOrBuilder {
            private List<Integer> api_;
            private int bitField0_;
            private boolean boxing_;
            private int clktype_;
            private p1<Companion, Companion.Builder, CompanionOrBuilder> compBuilder_;
            private List<Companion> comp_;
            private List<Integer> comptype_;
            private List<Integer> ctype_;
            private int delay_;
            private List<Integer> delivery_;
            private t1<Struct, Struct.Builder, x1> extBuilder_;
            private p1<Any, Any.Builder, e> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private int h_;
            private int linear_;
            private int maxbitr_;
            private int maxdur_;
            private int maxext_;
            private int maxseq_;
            private n0 mime_;
            private int minbitr_;
            private int mindur_;
            private int playend_;
            private int playmethod_;
            private int pos_;
            private int ptype_;
            private boolean skip_;
            private int skipafter_;
            private int skipmin_;
            private int unit_;
            private int w_;

            private void ensureApiIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.api_ = new ArrayList(this.api_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureCompIsMutable() {
                if ((this.bitField0_ & 16) == 0) {
                    this.comp_ = new ArrayList(this.comp_);
                    this.bitField0_ |= 16;
                }
            }

            private void ensureComptypeIsMutable() {
                if ((this.bitField0_ & 32) == 0) {
                    this.comptype_ = new ArrayList(this.comptype_);
                    this.bitField0_ |= 32;
                }
            }

            private void ensureCtypeIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.ctype_ = new ArrayList(this.ctype_);
                    this.bitField0_ |= 4;
                }
            }

            private void ensureDeliveryIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.delivery_ = new ArrayList(this.delivery_);
                    this.bitField0_ |= 8;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 64) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 64;
                }
            }

            private void ensureMimeIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.mime_ = new m0(this.mime_);
                    this.bitField0_ |= 1;
                }
            }

            private p1<Companion, Companion.Builder, CompanionOrBuilder> getCompFieldBuilder() {
                boolean z10;
                if (this.compBuilder_ == null) {
                    List<Companion> list = this.comp_;
                    if ((this.bitField0_ & 16) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.compBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.comp_ = null;
                }
                return this.compBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.W;
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
                    if ((this.bitField0_ & 64) != 0) {
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
                    getCompFieldBuilder();
                    getExtProtoFieldBuilder();
                }
            }

            public Builder addAllApi(Iterable<? extends ApiFramework> iterable) {
                ensureApiIsMutable();
                for (ApiFramework apiFramework : iterable) {
                    this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                }
                onChanged();
                return this;
            }

            public Builder addAllApiValue(Iterable<Integer> iterable) {
                ensureApiIsMutable();
                for (Integer num : iterable) {
                    num.intValue();
                    this.api_.add(num);
                }
                onChanged();
                return this;
            }

            public Builder addAllComp(Iterable<? extends Companion> iterable) {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    ensureCompIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.comp_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addAllComptype(Iterable<? extends CompanionType> iterable) {
                ensureComptypeIsMutable();
                for (CompanionType companionType : iterable) {
                    this.comptype_.add(Integer.valueOf(companionType.getNumber()));
                }
                onChanged();
                return this;
            }

            public Builder addAllComptypeValue(Iterable<Integer> iterable) {
                ensureComptypeIsMutable();
                for (Integer num : iterable) {
                    num.intValue();
                    this.comptype_.add(num);
                }
                onChanged();
                return this;
            }

            public Builder addAllCtype(Iterable<? extends VideoCreativeType> iterable) {
                ensureCtypeIsMutable();
                for (VideoCreativeType videoCreativeType : iterable) {
                    this.ctype_.add(Integer.valueOf(videoCreativeType.getNumber()));
                }
                onChanged();
                return this;
            }

            public Builder addAllCtypeValue(Iterable<Integer> iterable) {
                ensureCtypeIsMutable();
                for (Integer num : iterable) {
                    num.intValue();
                    this.ctype_.add(num);
                }
                onChanged();
                return this;
            }

            public Builder addAllDelivery(Iterable<? extends DeliveryMethod> iterable) {
                ensureDeliveryIsMutable();
                for (DeliveryMethod deliveryMethod : iterable) {
                    this.delivery_.add(Integer.valueOf(deliveryMethod.getNumber()));
                }
                onChanged();
                return this;
            }

            public Builder addAllDeliveryValue(Iterable<Integer> iterable) {
                ensureDeliveryIsMutable();
                for (Integer num : iterable) {
                    num.intValue();
                    this.delivery_.add(num);
                }
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

            public Builder addAllMime(Iterable<String> iterable) {
                ensureMimeIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.mime_);
                onChanged();
                return this;
            }

            public Builder addApi(ApiFramework apiFramework) {
                apiFramework.getClass();
                ensureApiIsMutable();
                this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                onChanged();
                return this;
            }

            public Builder addApiValue(int i10) {
                ensureApiIsMutable();
                this.api_.add(Integer.valueOf(i10));
                onChanged();
                return this;
            }

            public Builder addComp(Companion companion) {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    companion.getClass();
                    ensureCompIsMutable();
                    this.comp_.add(companion);
                    onChanged();
                } else {
                    p1Var.e(companion);
                }
                return this;
            }

            public Companion.Builder addCompBuilder() {
                return getCompFieldBuilder().c(Companion.getDefaultInstance());
            }

            public Builder addComptype(CompanionType companionType) {
                companionType.getClass();
                ensureComptypeIsMutable();
                this.comptype_.add(Integer.valueOf(companionType.getNumber()));
                onChanged();
                return this;
            }

            public Builder addComptypeValue(int i10) {
                ensureComptypeIsMutable();
                this.comptype_.add(Integer.valueOf(i10));
                onChanged();
                return this;
            }

            public Builder addCtype(VideoCreativeType videoCreativeType) {
                videoCreativeType.getClass();
                ensureCtypeIsMutable();
                this.ctype_.add(Integer.valueOf(videoCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public Builder addCtypeValue(int i10) {
                ensureCtypeIsMutable();
                this.ctype_.add(Integer.valueOf(i10));
                onChanged();
                return this;
            }

            public Builder addDelivery(DeliveryMethod deliveryMethod) {
                deliveryMethod.getClass();
                ensureDeliveryIsMutable();
                this.delivery_.add(Integer.valueOf(deliveryMethod.getNumber()));
                onChanged();
                return this;
            }

            public Builder addDeliveryValue(int i10) {
                ensureDeliveryIsMutable();
                this.delivery_.add(Integer.valueOf(i10));
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

            public Builder addMime(String str) {
                str.getClass();
                ensureMimeIsMutable();
                this.mime_.add(str);
                onChanged();
                return this;
            }

            public Builder addMimeBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                ensureMimeIsMutable();
                this.mime_.b(byteString);
                onChanged();
                return this;
            }

            public Builder clearApi() {
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder clearBoxing() {
                this.boxing_ = false;
                onChanged();
                return this;
            }

            public Builder clearClktype() {
                this.clktype_ = 0;
                onChanged();
                return this;
            }

            public Builder clearComp() {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    this.comp_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearComptype() {
                this.comptype_ = Collections.emptyList();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public Builder clearCtype() {
                this.ctype_ = Collections.emptyList();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder clearDelay() {
                this.delay_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDelivery() {
                this.delivery_ = Collections.emptyList();
                this.bitField0_ &= -9;
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
                    this.bitField0_ &= -65;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearH() {
                this.h_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLinear() {
                this.linear_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMaxbitr() {
                this.maxbitr_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMaxdur() {
                this.maxdur_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMaxext() {
                this.maxext_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMaxseq() {
                this.maxseq_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMime() {
                this.mime_ = m0.f14459d;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder clearMinbitr() {
                this.minbitr_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMindur() {
                this.mindur_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPlayend() {
                this.playend_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPlaymethod() {
                this.playmethod_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPos() {
                this.pos_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPtype() {
                this.ptype_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSkip() {
                this.skip_ = false;
                onChanged();
                return this;
            }

            public Builder clearSkipafter() {
                this.skipafter_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSkipmin() {
                this.skipmin_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUnit() {
                this.unit_ = 0;
                onChanged();
                return this;
            }

            public Builder clearW() {
                this.w_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public ApiFramework getApi(int i10) {
                return (ApiFramework) VideoPlacement.api_converter_.convert(this.api_.get(i10));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getApiCount() {
                return this.api_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<ApiFramework> getApiList() {
                return new i0.h(this.api_, VideoPlacement.api_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getApiValue(int i10) {
                return this.api_.get(i10).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<Integer> getApiValueList() {
                return Collections.unmodifiableList(this.api_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public boolean getBoxing() {
                return this.boxing_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public ClickType getClktype() {
                ClickType valueOf = ClickType.valueOf(this.clktype_);
                if (valueOf == null) {
                    return ClickType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getClktypeValue() {
                return this.clktype_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public Companion getComp(int i10) {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    return this.comp_.get(i10);
                }
                return p1Var.n(i10);
            }

            public Companion.Builder getCompBuilder(int i10) {
                return getCompFieldBuilder().k(i10);
            }

            public List<Companion.Builder> getCompBuilderList() {
                return getCompFieldBuilder().l();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getCompCount() {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    return this.comp_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<Companion> getCompList() {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.comp_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public CompanionOrBuilder getCompOrBuilder(int i10) {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    return this.comp_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<? extends CompanionOrBuilder> getCompOrBuilderList() {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.comp_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public CompanionType getComptype(int i10) {
                return (CompanionType) VideoPlacement.comptype_converter_.convert(this.comptype_.get(i10));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getComptypeCount() {
                return this.comptype_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<CompanionType> getComptypeList() {
                return new i0.h(this.comptype_, VideoPlacement.comptype_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getComptypeValue(int i10) {
                return this.comptype_.get(i10).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<Integer> getComptypeValueList() {
                return Collections.unmodifiableList(this.comptype_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public VideoCreativeType getCtype(int i10) {
                return (VideoCreativeType) VideoPlacement.ctype_converter_.convert(this.ctype_.get(i10));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getCtypeCount() {
                return this.ctype_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<VideoCreativeType> getCtypeList() {
                return new i0.h(this.ctype_, VideoPlacement.ctype_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getCtypeValue(int i10) {
                return this.ctype_.get(i10).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<Integer> getCtypeValueList() {
                return Collections.unmodifiableList(this.ctype_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getDelay() {
                return this.delay_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public DeliveryMethod getDelivery(int i10) {
                return (DeliveryMethod) VideoPlacement.delivery_converter_.convert(this.delivery_.get(i10));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getDeliveryCount() {
                return this.delivery_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<DeliveryMethod> getDeliveryList() {
                return new i0.h(this.delivery_, VideoPlacement.delivery_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getDeliveryValue(int i10) {
                return this.delivery_.get(i10).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<Integer> getDeliveryValueList() {
                return Collections.unmodifiableList(this.delivery_);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return b.W;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getExtProtoCount() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<Any> getExtProtoList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.extProto_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getH() {
                return this.h_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public LinearityMode getLinear() {
                LinearityMode valueOf = LinearityMode.valueOf(this.linear_);
                if (valueOf == null) {
                    return LinearityMode.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getLinearValue() {
                return this.linear_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getMaxbitr() {
                return this.maxbitr_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getMaxdur() {
                return this.maxdur_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getMaxext() {
                return this.maxext_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getMaxseq() {
                return this.maxseq_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public String getMime(int i10) {
                return this.mime_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public ByteString getMimeBytes(int i10) {
                return this.mime_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getMimeCount() {
                return this.mime_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getMinbitr() {
                return this.minbitr_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getMindur() {
                return this.mindur_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public PlaybackCessationMode getPlayend() {
                PlaybackCessationMode valueOf = PlaybackCessationMode.valueOf(this.playend_);
                if (valueOf == null) {
                    return PlaybackCessationMode.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getPlayendValue() {
                return this.playend_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public PlaybackMethod getPlaymethod() {
                PlaybackMethod valueOf = PlaybackMethod.valueOf(this.playmethod_);
                if (valueOf == null) {
                    return PlaybackMethod.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getPlaymethodValue() {
                return this.playmethod_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public PlacementPosition getPos() {
                PlacementPosition valueOf = PlacementPosition.valueOf(this.pos_);
                if (valueOf == null) {
                    return PlacementPosition.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getPosValue() {
                return this.pos_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public VideoPlacementType getPtype() {
                VideoPlacementType valueOf = VideoPlacementType.valueOf(this.ptype_);
                if (valueOf == null) {
                    return VideoPlacementType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getPtypeValue() {
                return this.ptype_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public boolean getSkip() {
                return this.skip_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getSkipafter() {
                return this.skipafter_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getSkipmin() {
                return this.skipmin_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public SizeUnit getUnit() {
                SizeUnit valueOf = SizeUnit.valueOf(this.unit_);
                if (valueOf == null) {
                    return SizeUnit.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getUnitValue() {
                return this.unit_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public int getW() {
                return this.w_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public boolean hasExt() {
                if (this.extBuilder_ == null && this.ext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.X.d(VideoPlacement.class, Builder.class);
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

            public Builder removeComp(int i10) {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    ensureCompIsMutable();
                    this.comp_.remove(i10);
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

            public Builder setApi(int i10, ApiFramework apiFramework) {
                apiFramework.getClass();
                ensureApiIsMutable();
                this.api_.set(i10, Integer.valueOf(apiFramework.getNumber()));
                onChanged();
                return this;
            }

            public Builder setApiValue(int i10, int i11) {
                ensureApiIsMutable();
                this.api_.set(i10, Integer.valueOf(i11));
                onChanged();
                return this;
            }

            public Builder setBoxing(boolean z10) {
                this.boxing_ = z10;
                onChanged();
                return this;
            }

            public Builder setClktype(ClickType clickType) {
                clickType.getClass();
                this.clktype_ = clickType.getNumber();
                onChanged();
                return this;
            }

            public Builder setClktypeValue(int i10) {
                this.clktype_ = i10;
                onChanged();
                return this;
            }

            public Builder setComp(int i10, Companion companion) {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    companion.getClass();
                    ensureCompIsMutable();
                    this.comp_.set(i10, companion);
                    onChanged();
                } else {
                    p1Var.w(i10, companion);
                }
                return this;
            }

            public Builder setComptype(int i10, CompanionType companionType) {
                companionType.getClass();
                ensureComptypeIsMutable();
                this.comptype_.set(i10, Integer.valueOf(companionType.getNumber()));
                onChanged();
                return this;
            }

            public Builder setComptypeValue(int i10, int i11) {
                ensureComptypeIsMutable();
                this.comptype_.set(i10, Integer.valueOf(i11));
                onChanged();
                return this;
            }

            public Builder setCtype(int i10, VideoCreativeType videoCreativeType) {
                videoCreativeType.getClass();
                ensureCtypeIsMutable();
                this.ctype_.set(i10, Integer.valueOf(videoCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public Builder setCtypeValue(int i10, int i11) {
                ensureCtypeIsMutable();
                this.ctype_.set(i10, Integer.valueOf(i11));
                onChanged();
                return this;
            }

            public Builder setDelay(int i10) {
                this.delay_ = i10;
                onChanged();
                return this;
            }

            public Builder setDelivery(int i10, DeliveryMethod deliveryMethod) {
                deliveryMethod.getClass();
                ensureDeliveryIsMutable();
                this.delivery_.set(i10, Integer.valueOf(deliveryMethod.getNumber()));
                onChanged();
                return this;
            }

            public Builder setDeliveryValue(int i10, int i11) {
                ensureDeliveryIsMutable();
                this.delivery_.set(i10, Integer.valueOf(i11));
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

            public Builder setH(int i10) {
                this.h_ = i10;
                onChanged();
                return this;
            }

            public Builder setLinear(LinearityMode linearityMode) {
                linearityMode.getClass();
                this.linear_ = linearityMode.getNumber();
                onChanged();
                return this;
            }

            public Builder setLinearValue(int i10) {
                this.linear_ = i10;
                onChanged();
                return this;
            }

            public Builder setMaxbitr(int i10) {
                this.maxbitr_ = i10;
                onChanged();
                return this;
            }

            public Builder setMaxdur(int i10) {
                this.maxdur_ = i10;
                onChanged();
                return this;
            }

            public Builder setMaxext(int i10) {
                this.maxext_ = i10;
                onChanged();
                return this;
            }

            public Builder setMaxseq(int i10) {
                this.maxseq_ = i10;
                onChanged();
                return this;
            }

            public Builder setMime(int i10, String str) {
                str.getClass();
                ensureMimeIsMutable();
                this.mime_.set(i10, str);
                onChanged();
                return this;
            }

            public Builder setMinbitr(int i10) {
                this.minbitr_ = i10;
                onChanged();
                return this;
            }

            public Builder setMindur(int i10) {
                this.mindur_ = i10;
                onChanged();
                return this;
            }

            public Builder setPlayend(PlaybackCessationMode playbackCessationMode) {
                playbackCessationMode.getClass();
                this.playend_ = playbackCessationMode.getNumber();
                onChanged();
                return this;
            }

            public Builder setPlayendValue(int i10) {
                this.playend_ = i10;
                onChanged();
                return this;
            }

            public Builder setPlaymethod(PlaybackMethod playbackMethod) {
                playbackMethod.getClass();
                this.playmethod_ = playbackMethod.getNumber();
                onChanged();
                return this;
            }

            public Builder setPlaymethodValue(int i10) {
                this.playmethod_ = i10;
                onChanged();
                return this;
            }

            public Builder setPos(PlacementPosition placementPosition) {
                placementPosition.getClass();
                this.pos_ = placementPosition.getNumber();
                onChanged();
                return this;
            }

            public Builder setPosValue(int i10) {
                this.pos_ = i10;
                onChanged();
                return this;
            }

            public Builder setPtype(VideoPlacementType videoPlacementType) {
                videoPlacementType.getClass();
                this.ptype_ = videoPlacementType.getNumber();
                onChanged();
                return this;
            }

            public Builder setPtypeValue(int i10) {
                this.ptype_ = i10;
                onChanged();
                return this;
            }

            public Builder setSkip(boolean z10) {
                this.skip_ = z10;
                onChanged();
                return this;
            }

            public Builder setSkipafter(int i10) {
                this.skipafter_ = i10;
                onChanged();
                return this;
            }

            public Builder setSkipmin(int i10) {
                this.skipmin_ = i10;
                onChanged();
                return this;
            }

            public Builder setUnit(SizeUnit sizeUnit) {
                sizeUnit.getClass();
                this.unit_ = sizeUnit.getNumber();
                onChanged();
                return this;
            }

            public Builder setUnitValue(int i10) {
                this.unit_ = i10;
                onChanged();
                return this;
            }

            public Builder setW(int i10) {
                this.w_ = i10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public m1 getMimeList() {
                return this.mime_.getUnmodifiableView();
            }

            private Builder() {
                this.ptype_ = 0;
                this.pos_ = 0;
                this.playmethod_ = 0;
                this.playend_ = 0;
                this.clktype_ = 0;
                this.mime_ = m0.f14459d;
                this.api_ = Collections.emptyList();
                this.ctype_ = Collections.emptyList();
                this.unit_ = 0;
                this.delivery_ = Collections.emptyList();
                this.linear_ = 0;
                this.comp_ = Collections.emptyList();
                this.comptype_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public VideoPlacement build() {
                VideoPlacement buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public VideoPlacement buildPartial() {
                VideoPlacement videoPlacement = new VideoPlacement(this);
                videoPlacement.ptype_ = this.ptype_;
                videoPlacement.pos_ = this.pos_;
                videoPlacement.delay_ = this.delay_;
                videoPlacement.skip_ = this.skip_;
                videoPlacement.skipmin_ = this.skipmin_;
                videoPlacement.skipafter_ = this.skipafter_;
                videoPlacement.playmethod_ = this.playmethod_;
                videoPlacement.playend_ = this.playend_;
                videoPlacement.clktype_ = this.clktype_;
                if ((this.bitField0_ & 1) != 0) {
                    this.mime_ = this.mime_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                videoPlacement.mime_ = this.mime_;
                if ((this.bitField0_ & 2) != 0) {
                    this.api_ = Collections.unmodifiableList(this.api_);
                    this.bitField0_ &= -3;
                }
                videoPlacement.api_ = this.api_;
                if ((this.bitField0_ & 4) != 0) {
                    this.ctype_ = Collections.unmodifiableList(this.ctype_);
                    this.bitField0_ &= -5;
                }
                videoPlacement.ctype_ = this.ctype_;
                videoPlacement.w_ = this.w_;
                videoPlacement.h_ = this.h_;
                videoPlacement.unit_ = this.unit_;
                videoPlacement.mindur_ = this.mindur_;
                videoPlacement.maxdur_ = this.maxdur_;
                videoPlacement.maxext_ = this.maxext_;
                videoPlacement.minbitr_ = this.minbitr_;
                videoPlacement.maxbitr_ = this.maxbitr_;
                if ((this.bitField0_ & 8) != 0) {
                    this.delivery_ = Collections.unmodifiableList(this.delivery_);
                    this.bitField0_ &= -9;
                }
                videoPlacement.delivery_ = this.delivery_;
                videoPlacement.maxseq_ = this.maxseq_;
                videoPlacement.linear_ = this.linear_;
                videoPlacement.boxing_ = this.boxing_;
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var != null) {
                    videoPlacement.comp_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 16) != 0) {
                        this.comp_ = Collections.unmodifiableList(this.comp_);
                        this.bitField0_ &= -17;
                    }
                    videoPlacement.comp_ = this.comp_;
                }
                if ((this.bitField0_ & 32) != 0) {
                    this.comptype_ = Collections.unmodifiableList(this.comptype_);
                    this.bitField0_ &= -33;
                }
                videoPlacement.comptype_ = this.comptype_;
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    videoPlacement.ext_ = this.ext_;
                } else {
                    videoPlacement.ext_ = t1Var.a();
                }
                p1<Any, Any.Builder, e> p1Var2 = this.extProtoBuilder_;
                if (p1Var2 != null) {
                    videoPlacement.extProto_ = p1Var2.f();
                } else {
                    if ((this.bitField0_ & 64) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -65;
                    }
                    videoPlacement.extProto_ = this.extProto_;
                }
                onBuilt();
                return videoPlacement;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public VideoPlacement mo4630getDefaultInstanceForType() {
                return VideoPlacement.getDefaultInstance();
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

            public Companion.Builder addCompBuilder(int i10) {
                return getCompFieldBuilder().b(i10, Companion.getDefaultInstance());
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
                this.ptype_ = 0;
                this.pos_ = 0;
                this.delay_ = 0;
                this.skip_ = false;
                this.skipmin_ = 0;
                this.skipafter_ = 0;
                this.playmethod_ = 0;
                this.playend_ = 0;
                this.clktype_ = 0;
                this.mime_ = m0.f14459d;
                this.bitField0_ &= -2;
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -3;
                this.ctype_ = Collections.emptyList();
                this.bitField0_ &= -5;
                this.w_ = 0;
                this.h_ = 0;
                this.unit_ = 0;
                this.mindur_ = 0;
                this.maxdur_ = 0;
                this.maxext_ = 0;
                this.minbitr_ = 0;
                this.maxbitr_ = 0;
                this.delivery_ = Collections.emptyList();
                this.bitField0_ &= -9;
                this.maxseq_ = 0;
                this.linear_ = 0;
                this.boxing_ = false;
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    this.comp_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                } else {
                    p1Var.g();
                }
                this.comptype_ = Collections.emptyList();
                this.bitField0_ &= -33;
                if (this.extBuilder_ == null) {
                    this.ext_ = null;
                } else {
                    this.ext_ = null;
                    this.extBuilder_ = null;
                }
                p1<Any, Any.Builder, e> p1Var2 = this.extProtoBuilder_;
                if (p1Var2 == null) {
                    this.extProto_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                } else {
                    p1Var2.g();
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

            public Builder addComp(int i10, Companion companion) {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    companion.getClass();
                    ensureCompIsMutable();
                    this.comp_.add(i10, companion);
                    onChanged();
                } else {
                    p1Var.d(i10, companion);
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
                if (message instanceof VideoPlacement) {
                    return mergeFrom((VideoPlacement) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setComp(int i10, Companion.Builder builder) {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    ensureCompIsMutable();
                    this.comp_.set(i10, builder.build());
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

            public Builder mergeFrom(VideoPlacement videoPlacement) {
                if (videoPlacement == VideoPlacement.getDefaultInstance()) {
                    return this;
                }
                if (videoPlacement.ptype_ != 0) {
                    setPtypeValue(videoPlacement.getPtypeValue());
                }
                if (videoPlacement.pos_ != 0) {
                    setPosValue(videoPlacement.getPosValue());
                }
                if (videoPlacement.getDelay() != 0) {
                    setDelay(videoPlacement.getDelay());
                }
                if (videoPlacement.getSkip()) {
                    setSkip(videoPlacement.getSkip());
                }
                if (videoPlacement.getSkipmin() != 0) {
                    setSkipmin(videoPlacement.getSkipmin());
                }
                if (videoPlacement.getSkipafter() != 0) {
                    setSkipafter(videoPlacement.getSkipafter());
                }
                if (videoPlacement.playmethod_ != 0) {
                    setPlaymethodValue(videoPlacement.getPlaymethodValue());
                }
                if (videoPlacement.playend_ != 0) {
                    setPlayendValue(videoPlacement.getPlayendValue());
                }
                if (videoPlacement.clktype_ != 0) {
                    setClktypeValue(videoPlacement.getClktypeValue());
                }
                if (!videoPlacement.mime_.isEmpty()) {
                    if (this.mime_.isEmpty()) {
                        this.mime_ = videoPlacement.mime_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureMimeIsMutable();
                        this.mime_.addAll(videoPlacement.mime_);
                    }
                    onChanged();
                }
                if (!videoPlacement.api_.isEmpty()) {
                    if (this.api_.isEmpty()) {
                        this.api_ = videoPlacement.api_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureApiIsMutable();
                        this.api_.addAll(videoPlacement.api_);
                    }
                    onChanged();
                }
                if (!videoPlacement.ctype_.isEmpty()) {
                    if (this.ctype_.isEmpty()) {
                        this.ctype_ = videoPlacement.ctype_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureCtypeIsMutable();
                        this.ctype_.addAll(videoPlacement.ctype_);
                    }
                    onChanged();
                }
                if (videoPlacement.getW() != 0) {
                    setW(videoPlacement.getW());
                }
                if (videoPlacement.getH() != 0) {
                    setH(videoPlacement.getH());
                }
                if (videoPlacement.unit_ != 0) {
                    setUnitValue(videoPlacement.getUnitValue());
                }
                if (videoPlacement.getMindur() != 0) {
                    setMindur(videoPlacement.getMindur());
                }
                if (videoPlacement.getMaxdur() != 0) {
                    setMaxdur(videoPlacement.getMaxdur());
                }
                if (videoPlacement.getMaxext() != 0) {
                    setMaxext(videoPlacement.getMaxext());
                }
                if (videoPlacement.getMinbitr() != 0) {
                    setMinbitr(videoPlacement.getMinbitr());
                }
                if (videoPlacement.getMaxbitr() != 0) {
                    setMaxbitr(videoPlacement.getMaxbitr());
                }
                if (!videoPlacement.delivery_.isEmpty()) {
                    if (this.delivery_.isEmpty()) {
                        this.delivery_ = videoPlacement.delivery_;
                        this.bitField0_ &= -9;
                    } else {
                        ensureDeliveryIsMutable();
                        this.delivery_.addAll(videoPlacement.delivery_);
                    }
                    onChanged();
                }
                if (videoPlacement.getMaxseq() != 0) {
                    setMaxseq(videoPlacement.getMaxseq());
                }
                if (videoPlacement.linear_ != 0) {
                    setLinearValue(videoPlacement.getLinearValue());
                }
                if (videoPlacement.getBoxing()) {
                    setBoxing(videoPlacement.getBoxing());
                }
                if (this.compBuilder_ == null) {
                    if (!videoPlacement.comp_.isEmpty()) {
                        if (this.comp_.isEmpty()) {
                            this.comp_ = videoPlacement.comp_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureCompIsMutable();
                            this.comp_.addAll(videoPlacement.comp_);
                        }
                        onChanged();
                    }
                } else if (!videoPlacement.comp_.isEmpty()) {
                    if (!this.compBuilder_.t()) {
                        this.compBuilder_.a(videoPlacement.comp_);
                    } else {
                        this.compBuilder_.h();
                        this.compBuilder_ = null;
                        this.comp_ = videoPlacement.comp_;
                        this.bitField0_ &= -17;
                        this.compBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getCompFieldBuilder() : null;
                    }
                }
                if (!videoPlacement.comptype_.isEmpty()) {
                    if (this.comptype_.isEmpty()) {
                        this.comptype_ = videoPlacement.comptype_;
                        this.bitField0_ &= -33;
                    } else {
                        ensureComptypeIsMutable();
                        this.comptype_.addAll(videoPlacement.comptype_);
                    }
                    onChanged();
                }
                if (videoPlacement.hasExt()) {
                    mergeExt(videoPlacement.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!videoPlacement.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = videoPlacement.extProto_;
                            this.bitField0_ &= -65;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(videoPlacement.extProto_);
                        }
                        onChanged();
                    }
                } else if (!videoPlacement.extProto_.isEmpty()) {
                    if (!this.extProtoBuilder_.t()) {
                        this.extProtoBuilder_.a(videoPlacement.extProto_);
                    } else {
                        this.extProtoBuilder_.h();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = videoPlacement.extProto_;
                        this.bitField0_ &= -65;
                        this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) videoPlacement).unknownFields);
                onChanged();
                return this;
            }

            public Builder addComp(Companion.Builder builder) {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    ensureCompIsMutable();
                    this.comp_.add(builder.build());
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

            public Builder addComp(int i10, Companion.Builder builder) {
                p1<Companion, Companion.Builder, CompanionOrBuilder> p1Var = this.compBuilder_;
                if (p1Var == null) {
                    ensureCompIsMutable();
                    this.comp_.add(i10, builder.build());
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

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.ptype_ = 0;
                this.pos_ = 0;
                this.playmethod_ = 0;
                this.playend_ = 0;
                this.clktype_ = 0;
                this.mime_ = m0.f14459d;
                this.api_ = Collections.emptyList();
                this.ctype_ = Collections.emptyList();
                this.unit_ = 0;
                this.delivery_ = Collections.emptyList();
                this.linear_ = 0;
                this.comp_ = Collections.emptyList();
                this.comptype_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.adcom.Placement.VideoPlacement.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Placement.VideoPlacement.access$19000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.explorestack.protobuf.adcom.Placement$VideoPlacement r3 = (com.explorestack.protobuf.adcom.Placement.VideoPlacement) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.explorestack.protobuf.adcom.Placement$VideoPlacement r4 = (com.explorestack.protobuf.adcom.Placement.VideoPlacement) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.VideoPlacement.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Placement$VideoPlacement$Builder");
            }
        }

        /* loaded from: classes3.dex */
        public static final class Companion extends GeneratedMessageV3 implements CompanionOrBuilder {
            public static final int DISPLAY_FIELD_NUMBER = 3;
            public static final int EXT_FIELD_NUMBER = 5;
            public static final int EXT_PROTO_FIELD_NUMBER = 4;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int VCM_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private DisplayPlacement display_;
            private List<Any> extProto_;
            private Struct ext_;
            private volatile Object id_;
            private byte memoizedIsInitialized;
            private int vcm_;
            private static final Companion DEFAULT_INSTANCE = new Companion();
            private static final j1<Companion> PARSER = new com.explorestack.protobuf.b<Companion>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion.1
                @Override // com.explorestack.protobuf.j1
                public Companion parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Companion(nVar, yVar);
                }
            };

            public static Companion getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.Y;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Companion parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Companion) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Companion parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Companion> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Companion)) {
                    return super.equals(obj);
                }
                Companion companion = (Companion) obj;
                if (!getId().equals(companion.getId()) || getVcm() != companion.getVcm() || hasDisplay() != companion.hasDisplay()) {
                    return false;
                }
                if ((hasDisplay() && !getDisplay().equals(companion.getDisplay())) || hasExt() != companion.hasExt()) {
                    return false;
                }
                if ((!hasExt() || getExt().equals(companion.getExt())) && getExtProtoList().equals(companion.getExtProtoList()) && this.unknownFields.equals(companion.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public DisplayPlacement getDisplay() {
                DisplayPlacement displayPlacement = this.display_;
                if (displayPlacement == null) {
                    return DisplayPlacement.getDefaultInstance();
                }
                return displayPlacement;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public DisplayPlacementOrBuilder getDisplayOrBuilder() {
                return getDisplay();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public Struct getExt() {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public x1 getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public Any getExtProto(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
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
            public j1<Companion> getParserForType() {
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
                int i12 = this.vcm_;
                if (i12 != 0) {
                    i10 += CodedOutputStream.Y(2, i12);
                }
                if (this.display_ != null) {
                    i10 += CodedOutputStream.G(3, getDisplay());
                }
                for (int i13 = 0; i13 < this.extProto_.size(); i13++) {
                    i10 += CodedOutputStream.G(4, this.extProto_.get(i13));
                }
                if (this.ext_ != null) {
                    i10 += CodedOutputStream.G(5, getExt());
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public int getVcm() {
                return this.vcm_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public boolean hasDisplay() {
                if (this.display_ != null) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
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
                int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getVcm();
                if (hasDisplay()) {
                    hashCode = (((hashCode * 37) + 3) * 53) + getDisplay().hashCode();
                }
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
                return b.Z.d(Companion.class, Builder.class);
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
                return new Companion();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getIdBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
                }
                int i10 = this.vcm_;
                if (i10 != 0) {
                    codedOutputStream.c1(2, i10);
                }
                if (this.display_ != null) {
                    codedOutputStream.L0(3, getDisplay());
                }
                for (int i11 = 0; i11 < this.extProto_.size(); i11++) {
                    codedOutputStream.L0(4, this.extProto_.get(i11));
                }
                if (this.ext_ != null) {
                    codedOutputStream.L0(5, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements CompanionOrBuilder {
                private int bitField0_;
                private t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> displayBuilder_;
                private DisplayPlacement display_;
                private t1<Struct, Struct.Builder, x1> extBuilder_;
                private p1<Any, Any.Builder, e> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object id_;
                private int vcm_;

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 1;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.Y;
                }

                private t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> getDisplayFieldBuilder() {
                    if (this.displayBuilder_ == null) {
                        this.displayBuilder_ = new t1<>(getDisplay(), getParentForChildren(), isClean());
                        this.display_ = null;
                    }
                    return this.displayBuilder_;
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

                public Builder clearDisplay() {
                    if (this.displayBuilder_ == null) {
                        this.display_ = null;
                        onChanged();
                    } else {
                        this.display_ = null;
                        this.displayBuilder_ = null;
                    }
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

                public Builder clearId() {
                    this.id_ = Companion.getDefaultInstance().getId();
                    onChanged();
                    return this;
                }

                public Builder clearVcm() {
                    this.vcm_ = 0;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.Y;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public DisplayPlacement getDisplay() {
                    t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
                    if (t1Var == null) {
                        DisplayPlacement displayPlacement = this.display_;
                        if (displayPlacement == null) {
                            return DisplayPlacement.getDefaultInstance();
                        }
                        return displayPlacement;
                    }
                    return t1Var.e();
                }

                public DisplayPlacement.Builder getDisplayBuilder() {
                    onChanged();
                    return getDisplayFieldBuilder().d();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public DisplayPlacementOrBuilder getDisplayOrBuilder() {
                    t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    DisplayPlacement displayPlacement = this.display_;
                    if (displayPlacement == null) {
                        return DisplayPlacement.getDefaultInstance();
                    }
                    return displayPlacement;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public int getExtProtoCount() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.size();
                    }
                    return p1Var.m();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public List<Any> getExtProtoList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.extProto_);
                    }
                    return p1Var.p();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public e getExtProtoOrBuilder(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public List<? extends e> getExtProtoOrBuilderList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public String getId() {
                    Object obj = this.id_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.id_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.id_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public int getVcm() {
                    return this.vcm_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public boolean hasDisplay() {
                    if (this.displayBuilder_ == null && this.display_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public boolean hasExt() {
                    if (this.extBuilder_ == null && this.ext_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.Z.d(Companion.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder mergeDisplay(DisplayPlacement displayPlacement) {
                    t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
                    if (t1Var == null) {
                        DisplayPlacement displayPlacement2 = this.display_;
                        if (displayPlacement2 != null) {
                            this.display_ = DisplayPlacement.newBuilder(displayPlacement2).mergeFrom(displayPlacement).buildPartial();
                        } else {
                            this.display_ = displayPlacement;
                        }
                        onChanged();
                    } else {
                        t1Var.g(displayPlacement);
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

                public Builder setDisplay(DisplayPlacement displayPlacement) {
                    t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
                    if (t1Var == null) {
                        displayPlacement.getClass();
                        this.display_ = displayPlacement;
                        onChanged();
                    } else {
                        t1Var.i(displayPlacement);
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

                public Builder setVcm(int i10) {
                    this.vcm_ = i10;
                    onChanged();
                    return this;
                }

                private Builder() {
                    this.id_ = "";
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Companion build() {
                    Companion buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Companion buildPartial() {
                    Companion companion = new Companion(this);
                    companion.id_ = this.id_;
                    companion.vcm_ = this.vcm_;
                    t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
                    if (t1Var == null) {
                        companion.display_ = this.display_;
                    } else {
                        companion.display_ = t1Var.a();
                    }
                    t1<Struct, Struct.Builder, x1> t1Var2 = this.extBuilder_;
                    if (t1Var2 == null) {
                        companion.ext_ = this.ext_;
                    } else {
                        companion.ext_ = t1Var2.a();
                    }
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        companion.extProto_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 1) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -2;
                        }
                        companion.extProto_ = this.extProto_;
                    }
                    onBuilt();
                    return companion;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Companion mo4630getDefaultInstanceForType() {
                    return Companion.getDefaultInstance();
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
                    this.vcm_ = 0;
                    if (this.displayBuilder_ == null) {
                        this.display_ = null;
                    } else {
                        this.display_ = null;
                        this.displayBuilder_ = null;
                    }
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

                public Builder setDisplay(DisplayPlacement.Builder builder) {
                    t1<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> t1Var = this.displayBuilder_;
                    if (t1Var == null) {
                        this.display_ = builder.build();
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

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.id_ = "";
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
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
                    if (message instanceof Companion) {
                        return mergeFrom((Companion) message);
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

                public Builder mergeFrom(Companion companion) {
                    if (companion == Companion.getDefaultInstance()) {
                        return this;
                    }
                    if (!companion.getId().isEmpty()) {
                        this.id_ = companion.id_;
                        onChanged();
                    }
                    if (companion.getVcm() != 0) {
                        setVcm(companion.getVcm());
                    }
                    if (companion.hasDisplay()) {
                        mergeDisplay(companion.getDisplay());
                    }
                    if (companion.hasExt()) {
                        mergeExt(companion.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!companion.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = companion.extProto_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(companion.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!companion.extProto_.isEmpty()) {
                        if (!this.extProtoBuilder_.t()) {
                            this.extProtoBuilder_.a(companion.extProto_);
                        } else {
                            this.extProtoBuilder_.h();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = companion.extProto_;
                            this.bitField0_ &= -2;
                            this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) companion).unknownFields);
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
                public com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion.access$15200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.adcom.Placement$VideoPlacement$Companion r3 = (com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.adcom.Placement$VideoPlacement$Companion r4 = (com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Placement$VideoPlacement$Companion$Builder");
                }
            }

            public static Builder newBuilder(Companion companion) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(companion);
            }

            public static Companion parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private Companion(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Companion parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Companion) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Companion parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Companion mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Companion parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private Companion() {
                this.memoizedIsInitialized = (byte) -1;
                this.id_ = "";
                this.extProto_ = Collections.emptyList();
            }

            public static Companion parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Companion parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Companion parseFrom(InputStream inputStream) throws IOException {
                return (Companion) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Companion(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                Object[] objArr = null;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 10) {
                                    this.id_ = nVar.J();
                                } else if (K != 16) {
                                    if (K == 26) {
                                        DisplayPlacement displayPlacement = this.display_;
                                        DisplayPlacement.Builder builder = displayPlacement != null ? displayPlacement.toBuilder() : null;
                                        DisplayPlacement displayPlacement2 = (DisplayPlacement) nVar.A(DisplayPlacement.parser(), yVar);
                                        this.display_ = displayPlacement2;
                                        if (builder != null) {
                                            builder.mergeFrom(displayPlacement2);
                                            this.display_ = builder.buildPartial();
                                        }
                                    } else if (K == 34) {
                                        if (objArr == null) {
                                            this.extProto_ = new ArrayList();
                                            objArr = 1;
                                        }
                                        this.extProto_.add(nVar.A(Any.parser(), yVar));
                                    } else if (K != 42) {
                                        if (!parseUnknownField(nVar, g10, yVar, K)) {
                                        }
                                    } else {
                                        Struct struct = this.ext_;
                                        Struct.Builder builder2 = struct != null ? struct.toBuilder() : null;
                                        Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                        this.ext_ = struct2;
                                        if (builder2 != null) {
                                            builder2.mergeFrom(struct2);
                                            this.ext_ = builder2.buildPartial();
                                        }
                                    }
                                } else {
                                    this.vcm_ = nVar.L();
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        if (objArr != null) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if (objArr != null) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static Companion parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Companion) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static Companion parseFrom(n nVar) throws IOException {
                return (Companion) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static Companion parseFrom(n nVar, y yVar) throws IOException {
                return (Companion) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes3.dex */
        public interface CompanionOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            DisplayPlacement getDisplay();

            DisplayPlacementOrBuilder getDisplayOrBuilder();

            Struct getExt();

            x1 getExtOrBuilder();

            Any getExtProto(int i10);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            e getExtProtoOrBuilder(int i10);

            List<? extends e> getExtProtoOrBuilderList();

            String getId();

            ByteString getIdBytes();

            int getVcm();

            boolean hasDisplay();

            boolean hasExt();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public static VideoPlacement getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.W;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static VideoPlacement parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static VideoPlacement parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<VideoPlacement> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof VideoPlacement)) {
                return super.equals(obj);
            }
            VideoPlacement videoPlacement = (VideoPlacement) obj;
            if (this.ptype_ != videoPlacement.ptype_ || this.pos_ != videoPlacement.pos_ || getDelay() != videoPlacement.getDelay() || getSkip() != videoPlacement.getSkip() || getSkipmin() != videoPlacement.getSkipmin() || getSkipafter() != videoPlacement.getSkipafter() || this.playmethod_ != videoPlacement.playmethod_ || this.playend_ != videoPlacement.playend_ || this.clktype_ != videoPlacement.clktype_ || !getMimeList().equals(videoPlacement.getMimeList()) || !this.api_.equals(videoPlacement.api_) || !this.ctype_.equals(videoPlacement.ctype_) || getW() != videoPlacement.getW() || getH() != videoPlacement.getH() || this.unit_ != videoPlacement.unit_ || getMindur() != videoPlacement.getMindur() || getMaxdur() != videoPlacement.getMaxdur() || getMaxext() != videoPlacement.getMaxext() || getMinbitr() != videoPlacement.getMinbitr() || getMaxbitr() != videoPlacement.getMaxbitr() || !this.delivery_.equals(videoPlacement.delivery_) || getMaxseq() != videoPlacement.getMaxseq() || this.linear_ != videoPlacement.linear_ || getBoxing() != videoPlacement.getBoxing() || !getCompList().equals(videoPlacement.getCompList()) || !this.comptype_.equals(videoPlacement.comptype_) || hasExt() != videoPlacement.hasExt()) {
                return false;
            }
            if ((!hasExt() || getExt().equals(videoPlacement.getExt())) && getExtProtoList().equals(videoPlacement.getExtProtoList()) && this.unknownFields.equals(videoPlacement.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public ApiFramework getApi(int i10) {
            return api_converter_.convert(this.api_.get(i10));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getApiCount() {
            return this.api_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<ApiFramework> getApiList() {
            return new i0.h(this.api_, api_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getApiValue(int i10) {
            return this.api_.get(i10).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<Integer> getApiValueList() {
            return this.api_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public boolean getBoxing() {
            return this.boxing_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public ClickType getClktype() {
            ClickType valueOf = ClickType.valueOf(this.clktype_);
            if (valueOf == null) {
                return ClickType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getClktypeValue() {
            return this.clktype_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public Companion getComp(int i10) {
            return this.comp_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getCompCount() {
            return this.comp_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<Companion> getCompList() {
            return this.comp_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public CompanionOrBuilder getCompOrBuilder(int i10) {
            return this.comp_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<? extends CompanionOrBuilder> getCompOrBuilderList() {
            return this.comp_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public CompanionType getComptype(int i10) {
            return comptype_converter_.convert(this.comptype_.get(i10));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getComptypeCount() {
            return this.comptype_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<CompanionType> getComptypeList() {
            return new i0.h(this.comptype_, comptype_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getComptypeValue(int i10) {
            return this.comptype_.get(i10).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<Integer> getComptypeValueList() {
            return this.comptype_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public VideoCreativeType getCtype(int i10) {
            return ctype_converter_.convert(this.ctype_.get(i10));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getCtypeCount() {
            return this.ctype_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<VideoCreativeType> getCtypeList() {
            return new i0.h(this.ctype_, ctype_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getCtypeValue(int i10) {
            return this.ctype_.get(i10).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<Integer> getCtypeValueList() {
            return this.ctype_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getDelay() {
            return this.delay_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public DeliveryMethod getDelivery(int i10) {
            return delivery_converter_.convert(this.delivery_.get(i10));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getDeliveryCount() {
            return this.delivery_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<DeliveryMethod> getDeliveryList() {
            return new i0.h(this.delivery_, delivery_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getDeliveryValue(int i10) {
            return this.delivery_.get(i10).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<Integer> getDeliveryValueList() {
            return this.delivery_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public Struct getExt() {
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public x1 getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public Any getExtProto(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public e getExtProtoOrBuilder(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public List<? extends e> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getH() {
            return this.h_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public LinearityMode getLinear() {
            LinearityMode valueOf = LinearityMode.valueOf(this.linear_);
            if (valueOf == null) {
                return LinearityMode.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getLinearValue() {
            return this.linear_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getMaxbitr() {
            return this.maxbitr_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getMaxdur() {
            return this.maxdur_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getMaxext() {
            return this.maxext_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getMaxseq() {
            return this.maxseq_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public String getMime(int i10) {
            return this.mime_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public ByteString getMimeBytes(int i10) {
            return this.mime_.getByteString(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getMimeCount() {
            return this.mime_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getMinbitr() {
            return this.minbitr_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getMindur() {
            return this.mindur_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<VideoPlacement> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public PlaybackCessationMode getPlayend() {
            PlaybackCessationMode valueOf = PlaybackCessationMode.valueOf(this.playend_);
            if (valueOf == null) {
                return PlaybackCessationMode.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getPlayendValue() {
            return this.playend_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public PlaybackMethod getPlaymethod() {
            PlaybackMethod valueOf = PlaybackMethod.valueOf(this.playmethod_);
            if (valueOf == null) {
                return PlaybackMethod.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getPlaymethodValue() {
            return this.playmethod_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public PlacementPosition getPos() {
            PlacementPosition valueOf = PlacementPosition.valueOf(this.pos_);
            if (valueOf == null) {
                return PlacementPosition.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getPosValue() {
            return this.pos_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public VideoPlacementType getPtype() {
            VideoPlacementType valueOf = VideoPlacementType.valueOf(this.ptype_);
            if (valueOf == null) {
                return VideoPlacementType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getPtypeValue() {
            return this.ptype_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (this.ptype_ != VideoPlacementType.VIDEO_PLACEMENT_TYPE_INVALID.getNumber()) {
                i10 = CodedOutputStream.l(1, this.ptype_);
            } else {
                i10 = 0;
            }
            if (this.pos_ != PlacementPosition.PLACEMENT_POSITION_INVALID.getNumber()) {
                i10 += CodedOutputStream.l(2, this.pos_);
            }
            int i12 = this.delay_;
            if (i12 != 0) {
                i10 += CodedOutputStream.x(3, i12);
            }
            boolean z10 = this.skip_;
            if (z10) {
                i10 += CodedOutputStream.e(4, z10);
            }
            int i13 = this.skipmin_;
            if (i13 != 0) {
                i10 += CodedOutputStream.Y(5, i13);
            }
            int i14 = this.skipafter_;
            if (i14 != 0) {
                i10 += CodedOutputStream.Y(6, i14);
            }
            if (this.playmethod_ != PlaybackMethod.PLAYBACK_METHOD_INVALID.getNumber()) {
                i10 += CodedOutputStream.l(7, this.playmethod_);
            }
            if (this.playend_ != PlaybackCessationMode.PLAYBACK_CESSATION_MODE_INVALID.getNumber()) {
                i10 += CodedOutputStream.l(8, this.playend_);
            }
            if (this.clktype_ != ClickType.CLICK_TYPE_NON_CLICKABLE.getNumber()) {
                i10 += CodedOutputStream.l(9, this.clktype_);
            }
            int i15 = 0;
            for (int i16 = 0; i16 < this.mime_.size(); i16++) {
                i15 += GeneratedMessageV3.computeStringSizeNoTag(this.mime_.getRaw(i16));
            }
            int size = i10 + i15 + getMimeList().size();
            int i17 = 0;
            for (int i18 = 0; i18 < this.api_.size(); i18++) {
                i17 += CodedOutputStream.m(this.api_.get(i18).intValue());
            }
            int i19 = size + i17;
            if (!getApiList().isEmpty()) {
                i19 = i19 + 1 + CodedOutputStream.Z(i17);
            }
            this.apiMemoizedSerializedSize = i17;
            int i20 = 0;
            for (int i21 = 0; i21 < this.ctype_.size(); i21++) {
                i20 += CodedOutputStream.m(this.ctype_.get(i21).intValue());
            }
            int i22 = i19 + i20;
            if (!getCtypeList().isEmpty()) {
                i22 = i22 + 1 + CodedOutputStream.Z(i20);
            }
            this.ctypeMemoizedSerializedSize = i20;
            int i23 = this.w_;
            if (i23 != 0) {
                i22 += CodedOutputStream.Y(13, i23);
            }
            int i24 = this.h_;
            if (i24 != 0) {
                i22 += CodedOutputStream.Y(14, i24);
            }
            if (this.unit_ != SizeUnit.SIZE_UNIT_INVALID.getNumber()) {
                i22 += CodedOutputStream.l(15, this.unit_);
            }
            int i25 = this.mindur_;
            if (i25 != 0) {
                i22 += CodedOutputStream.Y(16, i25);
            }
            int i26 = this.maxdur_;
            if (i26 != 0) {
                i22 += CodedOutputStream.Y(17, i26);
            }
            int i27 = this.maxext_;
            if (i27 != 0) {
                i22 += CodedOutputStream.x(18, i27);
            }
            int i28 = this.minbitr_;
            if (i28 != 0) {
                i22 += CodedOutputStream.Y(19, i28);
            }
            int i29 = this.maxbitr_;
            if (i29 != 0) {
                i22 += CodedOutputStream.Y(20, i29);
            }
            int i30 = 0;
            for (int i31 = 0; i31 < this.delivery_.size(); i31++) {
                i30 += CodedOutputStream.m(this.delivery_.get(i31).intValue());
            }
            int i32 = i22 + i30;
            if (!getDeliveryList().isEmpty()) {
                i32 = i32 + 2 + CodedOutputStream.Z(i30);
            }
            this.deliveryMemoizedSerializedSize = i30;
            int i33 = this.maxseq_;
            if (i33 != 0) {
                i32 += CodedOutputStream.Y(22, i33);
            }
            if (this.linear_ != LinearityMode.LINEARITY_MODE_INVALID.getNumber()) {
                i32 += CodedOutputStream.l(23, this.linear_);
            }
            boolean z11 = this.boxing_;
            if (z11) {
                i32 += CodedOutputStream.e(24, z11);
            }
            for (int i34 = 0; i34 < this.comp_.size(); i34++) {
                i32 += CodedOutputStream.G(25, this.comp_.get(i34));
            }
            int i35 = 0;
            for (int i36 = 0; i36 < this.comptype_.size(); i36++) {
                i35 += CodedOutputStream.m(this.comptype_.get(i36).intValue());
            }
            int i37 = i32 + i35;
            if (!getComptypeList().isEmpty()) {
                i37 = i37 + 2 + CodedOutputStream.Z(i35);
            }
            this.comptypeMemoizedSerializedSize = i35;
            for (int i38 = 0; i38 < this.extProto_.size(); i38++) {
                i37 += CodedOutputStream.G(27, this.extProto_.get(i38));
            }
            if (this.ext_ != null) {
                i37 += CodedOutputStream.G(28, getExt());
            }
            int serializedSize = i37 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public boolean getSkip() {
            return this.skip_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getSkipafter() {
            return this.skipafter_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getSkipmin() {
            return this.skipmin_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public SizeUnit getUnit() {
            SizeUnit valueOf = SizeUnit.valueOf(this.unit_);
            if (valueOf == null) {
                return SizeUnit.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getUnitValue() {
            return this.unit_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public int getW() {
            return this.w_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
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
            int hashCode = ((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.ptype_) * 37) + 2) * 53) + this.pos_) * 37) + 3) * 53) + getDelay()) * 37) + 4) * 53) + i0.d(getSkip())) * 37) + 5) * 53) + getSkipmin()) * 37) + 6) * 53) + getSkipafter()) * 37) + 7) * 53) + this.playmethod_) * 37) + 8) * 53) + this.playend_) * 37) + 9) * 53) + this.clktype_;
            if (getMimeCount() > 0) {
                hashCode = (((hashCode * 37) + 10) * 53) + getMimeList().hashCode();
            }
            if (getApiCount() > 0) {
                hashCode = (((hashCode * 37) + 11) * 53) + this.api_.hashCode();
            }
            if (getCtypeCount() > 0) {
                hashCode = (((hashCode * 37) + 12) * 53) + this.ctype_.hashCode();
            }
            int w10 = (((((((((((((((((((((((((((((((hashCode * 37) + 13) * 53) + getW()) * 37) + 14) * 53) + getH()) * 37) + 15) * 53) + this.unit_) * 37) + 16) * 53) + getMindur()) * 37) + 17) * 53) + getMaxdur()) * 37) + 18) * 53) + getMaxext()) * 37) + 19) * 53) + getMinbitr()) * 37) + 20) * 53) + getMaxbitr();
            if (getDeliveryCount() > 0) {
                w10 = (((w10 * 37) + 21) * 53) + this.delivery_.hashCode();
            }
            int maxseq = (((((((((((w10 * 37) + 22) * 53) + getMaxseq()) * 37) + 23) * 53) + this.linear_) * 37) + 24) * 53) + i0.d(getBoxing());
            if (getCompCount() > 0) {
                maxseq = (((maxseq * 37) + 25) * 53) + getCompList().hashCode();
            }
            if (getComptypeCount() > 0) {
                maxseq = (((maxseq * 37) + 26) * 53) + this.comptype_.hashCode();
            }
            if (hasExt()) {
                maxseq = (((maxseq * 37) + 28) * 53) + getExt().hashCode();
            }
            if (getExtProtoCount() > 0) {
                maxseq = (((maxseq * 37) + 27) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (maxseq * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.X.d(VideoPlacement.class, Builder.class);
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
            return new VideoPlacement();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if (this.ptype_ != VideoPlacementType.VIDEO_PLACEMENT_TYPE_INVALID.getNumber()) {
                codedOutputStream.v0(1, this.ptype_);
            }
            if (this.pos_ != PlacementPosition.PLACEMENT_POSITION_INVALID.getNumber()) {
                codedOutputStream.v0(2, this.pos_);
            }
            int i10 = this.delay_;
            if (i10 != 0) {
                codedOutputStream.H0(3, i10);
            }
            boolean z10 = this.skip_;
            if (z10) {
                codedOutputStream.n0(4, z10);
            }
            int i11 = this.skipmin_;
            if (i11 != 0) {
                codedOutputStream.c1(5, i11);
            }
            int i12 = this.skipafter_;
            if (i12 != 0) {
                codedOutputStream.c1(6, i12);
            }
            if (this.playmethod_ != PlaybackMethod.PLAYBACK_METHOD_INVALID.getNumber()) {
                codedOutputStream.v0(7, this.playmethod_);
            }
            if (this.playend_ != PlaybackCessationMode.PLAYBACK_CESSATION_MODE_INVALID.getNumber()) {
                codedOutputStream.v0(8, this.playend_);
            }
            if (this.clktype_ != ClickType.CLICK_TYPE_NON_CLICKABLE.getNumber()) {
                codedOutputStream.v0(9, this.clktype_);
            }
            for (int i13 = 0; i13 < this.mime_.size(); i13++) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.mime_.getRaw(i13));
            }
            if (getApiList().size() > 0) {
                codedOutputStream.d1(90);
                codedOutputStream.d1(this.apiMemoizedSerializedSize);
            }
            for (int i14 = 0; i14 < this.api_.size(); i14++) {
                codedOutputStream.w0(this.api_.get(i14).intValue());
            }
            if (getCtypeList().size() > 0) {
                codedOutputStream.d1(98);
                codedOutputStream.d1(this.ctypeMemoizedSerializedSize);
            }
            for (int i15 = 0; i15 < this.ctype_.size(); i15++) {
                codedOutputStream.w0(this.ctype_.get(i15).intValue());
            }
            int i16 = this.w_;
            if (i16 != 0) {
                codedOutputStream.c1(13, i16);
            }
            int i17 = this.h_;
            if (i17 != 0) {
                codedOutputStream.c1(14, i17);
            }
            if (this.unit_ != SizeUnit.SIZE_UNIT_INVALID.getNumber()) {
                codedOutputStream.v0(15, this.unit_);
            }
            int i18 = this.mindur_;
            if (i18 != 0) {
                codedOutputStream.c1(16, i18);
            }
            int i19 = this.maxdur_;
            if (i19 != 0) {
                codedOutputStream.c1(17, i19);
            }
            int i20 = this.maxext_;
            if (i20 != 0) {
                codedOutputStream.H0(18, i20);
            }
            int i21 = this.minbitr_;
            if (i21 != 0) {
                codedOutputStream.c1(19, i21);
            }
            int i22 = this.maxbitr_;
            if (i22 != 0) {
                codedOutputStream.c1(20, i22);
            }
            if (getDeliveryList().size() > 0) {
                codedOutputStream.d1(170);
                codedOutputStream.d1(this.deliveryMemoizedSerializedSize);
            }
            for (int i23 = 0; i23 < this.delivery_.size(); i23++) {
                codedOutputStream.w0(this.delivery_.get(i23).intValue());
            }
            int i24 = this.maxseq_;
            if (i24 != 0) {
                codedOutputStream.c1(22, i24);
            }
            if (this.linear_ != LinearityMode.LINEARITY_MODE_INVALID.getNumber()) {
                codedOutputStream.v0(23, this.linear_);
            }
            boolean z11 = this.boxing_;
            if (z11) {
                codedOutputStream.n0(24, z11);
            }
            for (int i25 = 0; i25 < this.comp_.size(); i25++) {
                codedOutputStream.L0(25, this.comp_.get(i25));
            }
            if (getComptypeList().size() > 0) {
                codedOutputStream.d1(210);
                codedOutputStream.d1(this.comptypeMemoizedSerializedSize);
            }
            for (int i26 = 0; i26 < this.comptype_.size(); i26++) {
                codedOutputStream.w0(this.comptype_.get(i26).intValue());
            }
            for (int i27 = 0; i27 < this.extProto_.size(); i27++) {
                codedOutputStream.L0(27, this.extProto_.get(i27));
            }
            if (this.ext_ != null) {
                codedOutputStream.L0(28, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static Builder newBuilder(VideoPlacement videoPlacement) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(videoPlacement);
        }

        public static VideoPlacement parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public m1 getMimeList() {
            return this.mime_;
        }

        private VideoPlacement(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static VideoPlacement parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static VideoPlacement parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public VideoPlacement mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static VideoPlacement parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private VideoPlacement() {
            this.memoizedIsInitialized = (byte) -1;
            this.ptype_ = 0;
            this.pos_ = 0;
            this.playmethod_ = 0;
            this.playend_ = 0;
            this.clktype_ = 0;
            this.mime_ = m0.f14459d;
            this.api_ = Collections.emptyList();
            this.ctype_ = Collections.emptyList();
            this.unit_ = 0;
            this.delivery_ = Collections.emptyList();
            this.linear_ = 0;
            this.comp_ = Collections.emptyList();
            this.comptype_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        public static VideoPlacement parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static VideoPlacement parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static VideoPlacement parseFrom(InputStream inputStream) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static VideoPlacement parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static VideoPlacement parseFrom(n nVar) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static VideoPlacement parseFrom(n nVar, y yVar) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private VideoPlacement(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                this.ptype_ = nVar.t();
                                continue;
                            case 16:
                                this.pos_ = nVar.t();
                                continue;
                            case 24:
                                this.delay_ = nVar.y();
                                continue;
                            case 32:
                                this.skip_ = nVar.q();
                                continue;
                            case 40:
                                this.skipmin_ = nVar.L();
                                continue;
                            case 48:
                                this.skipafter_ = nVar.L();
                                continue;
                            case 56:
                                this.playmethod_ = nVar.t();
                                continue;
                            case 64:
                                this.playend_ = nVar.t();
                                continue;
                            case 72:
                                this.clktype_ = nVar.t();
                                continue;
                            case 82:
                                String J = nVar.J();
                                if (!(z11 & true)) {
                                    this.mime_ = new m0();
                                    z11 |= true;
                                }
                                this.mime_.add(J);
                                continue;
                            case 88:
                                int t10 = nVar.t();
                                if (!(z11 & true)) {
                                    this.api_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.api_.add(Integer.valueOf(t10));
                                continue;
                            case 90:
                                int p10 = nVar.p(nVar.C());
                                while (nVar.d() > 0) {
                                    int t11 = nVar.t();
                                    if (!(z11 & true)) {
                                        this.api_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.api_.add(Integer.valueOf(t11));
                                }
                                nVar.o(p10);
                                continue;
                            case 96:
                                int t12 = nVar.t();
                                if (!(z11 & true)) {
                                    this.ctype_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.ctype_.add(Integer.valueOf(t12));
                                continue;
                            case 98:
                                int p11 = nVar.p(nVar.C());
                                while (nVar.d() > 0) {
                                    int t13 = nVar.t();
                                    if (!(z11 & true)) {
                                        this.ctype_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.ctype_.add(Integer.valueOf(t13));
                                }
                                nVar.o(p11);
                                continue;
                            case 104:
                                this.w_ = nVar.L();
                                continue;
                            case 112:
                                this.h_ = nVar.L();
                                continue;
                            case 120:
                                this.unit_ = nVar.t();
                                continue;
                            case 128:
                                this.mindur_ = nVar.L();
                                continue;
                            case 136:
                                this.maxdur_ = nVar.L();
                                continue;
                            case 144:
                                this.maxext_ = nVar.y();
                                continue;
                            case 152:
                                this.minbitr_ = nVar.L();
                                continue;
                            case 160:
                                this.maxbitr_ = nVar.L();
                                continue;
                            case IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION /* 168 */:
                                int t14 = nVar.t();
                                if (!(z11 & true)) {
                                    this.delivery_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.delivery_.add(Integer.valueOf(t14));
                                continue;
                            case 170:
                                int p12 = nVar.p(nVar.C());
                                while (nVar.d() > 0) {
                                    int t15 = nVar.t();
                                    if (!(z11 & true)) {
                                        this.delivery_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.delivery_.add(Integer.valueOf(t15));
                                }
                                nVar.o(p12);
                                continue;
                            case 176:
                                this.maxseq_ = nVar.L();
                                continue;
                            case 184:
                                this.linear_ = nVar.t();
                                continue;
                            case 192:
                                this.boxing_ = nVar.q();
                                continue;
                            case 202:
                                if (!(z11 & true)) {
                                    this.comp_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.comp_.add(nVar.A(Companion.parser(), yVar));
                                continue;
                            case 208:
                                int t16 = nVar.t();
                                if (!(z11 & true)) {
                                    this.comptype_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.comptype_.add(Integer.valueOf(t16));
                                continue;
                            case 210:
                                int p13 = nVar.p(nVar.C());
                                while (nVar.d() > 0) {
                                    int t17 = nVar.t();
                                    if (!(z11 & true)) {
                                        this.comptype_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.comptype_.add(Integer.valueOf(t17));
                                }
                                nVar.o(p13);
                                continue;
                            case 218:
                                if (!(z11 & true)) {
                                    this.extProto_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.extProto_.add(nVar.A(Any.parser(), yVar));
                                continue;
                            case 226:
                                Struct struct = this.ext_;
                                Struct.Builder builder = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                this.ext_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    this.ext_ = builder.buildPartial();
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
                    if (z11 & true) {
                        this.mime_ = this.mime_.getUnmodifiableView();
                    }
                    if (z11 & true) {
                        this.api_ = Collections.unmodifiableList(this.api_);
                    }
                    if (z11 & true) {
                        this.ctype_ = Collections.unmodifiableList(this.ctype_);
                    }
                    if (z11 & true) {
                        this.delivery_ = Collections.unmodifiableList(this.delivery_);
                    }
                    if (z11 & true) {
                        this.comp_ = Collections.unmodifiableList(this.comp_);
                    }
                    if (z11 & true) {
                        this.comptype_ = Collections.unmodifiableList(this.comptype_);
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
                this.mime_ = this.mime_.getUnmodifiableView();
            }
            if (z11 & true) {
                this.api_ = Collections.unmodifiableList(this.api_);
            }
            if (z11 & true) {
                this.ctype_ = Collections.unmodifiableList(this.ctype_);
            }
            if (z11 & true) {
                this.delivery_ = Collections.unmodifiableList(this.delivery_);
            }
            if (z11 & true) {
                this.comp_ = Collections.unmodifiableList(this.comp_);
            }
            if (z11 & true) {
                this.comptype_ = Collections.unmodifiableList(this.comptype_);
            }
            if (z11 & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public interface VideoPlacementOrBuilder extends MessageOrBuilder {
        ApiFramework getApi(int i10);

        int getApiCount();

        List<ApiFramework> getApiList();

        int getApiValue(int i10);

        List<Integer> getApiValueList();

        boolean getBoxing();

        ClickType getClktype();

        int getClktypeValue();

        VideoPlacement.Companion getComp(int i10);

        int getCompCount();

        List<VideoPlacement.Companion> getCompList();

        VideoPlacement.CompanionOrBuilder getCompOrBuilder(int i10);

        List<? extends VideoPlacement.CompanionOrBuilder> getCompOrBuilderList();

        CompanionType getComptype(int i10);

        int getComptypeCount();

        List<CompanionType> getComptypeList();

        int getComptypeValue(int i10);

        List<Integer> getComptypeValueList();

        VideoCreativeType getCtype(int i10);

        int getCtypeCount();

        List<VideoCreativeType> getCtypeList();

        int getCtypeValue(int i10);

        List<Integer> getCtypeValueList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        int getDelay();

        DeliveryMethod getDelivery(int i10);

        int getDeliveryCount();

        List<DeliveryMethod> getDeliveryList();

        int getDeliveryValue(int i10);

        List<Integer> getDeliveryValueList();

        Struct getExt();

        x1 getExtOrBuilder();

        Any getExtProto(int i10);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        e getExtProtoOrBuilder(int i10);

        List<? extends e> getExtProtoOrBuilderList();

        int getH();

        LinearityMode getLinear();

        int getLinearValue();

        int getMaxbitr();

        int getMaxdur();

        int getMaxext();

        int getMaxseq();

        String getMime(int i10);

        ByteString getMimeBytes(int i10);

        int getMimeCount();

        List<String> getMimeList();

        int getMinbitr();

        int getMindur();

        PlaybackCessationMode getPlayend();

        int getPlayendValue();

        PlaybackMethod getPlaymethod();

        int getPlaymethodValue();

        PlacementPosition getPos();

        int getPosValue();

        VideoPlacementType getPtype();

        int getPtypeValue();

        boolean getSkip();

        int getSkipafter();

        int getSkipmin();

        SizeUnit getUnit();

        int getUnitValue();

        int getW();

        boolean hasExt();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static Placement getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return b.E;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Placement parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Placement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Placement parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Placement> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Placement)) {
            return super.equals(obj);
        }
        Placement placement = (Placement) obj;
        if (!getTagid().equals(placement.getTagid()) || getSsai() != placement.getSsai() || !getSdk().equals(placement.getSdk()) || !getSdkver().equals(placement.getSdkver()) || getReward() != placement.getReward() || !m4639getBcatList().equals(placement.m4639getBcatList()) || this.cattax_ != placement.cattax_ || !m4637getBadvList().equals(placement.m4637getBadvList()) || !m4638getBappList().equals(placement.m4638getBappList()) || !this.battr_.equals(placement.battr_) || !m4640getWlangList().equals(placement.m4640getWlangList()) || getSecure() != placement.getSecure() || getAdmx() != placement.getAdmx() || getCurlx() != placement.getCurlx() || hasDisplay() != placement.hasDisplay()) {
            return false;
        }
        if ((hasDisplay() && !getDisplay().equals(placement.getDisplay())) || hasVideo() != placement.hasVideo()) {
            return false;
        }
        if ((hasVideo() && !getVideo().equals(placement.getVideo())) || hasExt() != placement.hasExt()) {
            return false;
        }
        if ((!hasExt() || getExt().equals(placement.getExt())) && getExtProtoList().equals(placement.getExtProtoList()) && this.unknownFields.equals(placement.unknownFields)) {
            return true;
        }
        return false;
    }

    public boolean getAdmx() {
        return this.admx_;
    }

    public String getBadv(int i10) {
        return this.badv_.get(i10);
    }

    public ByteString getBadvBytes(int i10) {
        return this.badv_.getByteString(i10);
    }

    public int getBadvCount() {
        return this.badv_.size();
    }

    public String getBapp(int i10) {
        return this.bapp_.get(i10);
    }

    public ByteString getBappBytes(int i10) {
        return this.bapp_.getByteString(i10);
    }

    public int getBappCount() {
        return this.bapp_.size();
    }

    public CreativeAttribute getBattr(int i10) {
        return battr_converter_.convert(this.battr_.get(i10));
    }

    public int getBattrCount() {
        return this.battr_.size();
    }

    public List<CreativeAttribute> getBattrList() {
        return new i0.h(this.battr_, battr_converter_);
    }

    public int getBattrValue(int i10) {
        return this.battr_.get(i10).intValue();
    }

    public List<Integer> getBattrValueList() {
        return this.battr_;
    }

    public String getBcat(int i10) {
        return this.bcat_.get(i10);
    }

    public ByteString getBcatBytes(int i10) {
        return this.bcat_.getByteString(i10);
    }

    public int getBcatCount() {
        return this.bcat_.size();
    }

    public CategoryTaxonomy getCattax() {
        CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
        if (valueOf == null) {
            return CategoryTaxonomy.UNRECOGNIZED;
        }
        return valueOf;
    }

    public int getCattaxValue() {
        return this.cattax_;
    }

    public boolean getCurlx() {
        return this.curlx_;
    }

    public DisplayPlacement getDisplay() {
        DisplayPlacement displayPlacement = this.display_;
        if (displayPlacement == null) {
            return DisplayPlacement.getDefaultInstance();
        }
        return displayPlacement;
    }

    public DisplayPlacementOrBuilder getDisplayOrBuilder() {
        return getDisplay();
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

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Placement> getParserForType() {
        return PARSER;
    }

    public boolean getReward() {
        return this.reward_;
    }

    public String getSdk() {
        Object obj = this.sdk_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sdk_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSdkBytes() {
        Object obj = this.sdk_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sdk_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getSdkver() {
        Object obj = this.sdkver_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sdkver_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSdkverBytes() {
        Object obj = this.sdkver_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sdkver_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean getSecure() {
        return this.secure_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getTagidBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.tagid_);
        } else {
            i10 = 0;
        }
        int i12 = this.ssai_;
        if (i12 != 0) {
            i10 += CodedOutputStream.Y(2, i12);
        }
        if (!getSdkBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(3, this.sdk_);
        }
        if (!getSdkverBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(4, this.sdkver_);
        }
        boolean z10 = this.reward_;
        if (z10) {
            i10 += CodedOutputStream.e(5, z10);
        }
        int i13 = 0;
        for (int i14 = 0; i14 < this.bcat_.size(); i14++) {
            i13 += GeneratedMessageV3.computeStringSizeNoTag(this.bcat_.getRaw(i14));
        }
        int size = i10 + i13 + m4639getBcatList().size();
        if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
            size += CodedOutputStream.l(7, this.cattax_);
        }
        int i15 = 0;
        for (int i16 = 0; i16 < this.badv_.size(); i16++) {
            i15 += GeneratedMessageV3.computeStringSizeNoTag(this.badv_.getRaw(i16));
        }
        int size2 = size + i15 + m4637getBadvList().size();
        int i17 = 0;
        for (int i18 = 0; i18 < this.bapp_.size(); i18++) {
            i17 += GeneratedMessageV3.computeStringSizeNoTag(this.bapp_.getRaw(i18));
        }
        int size3 = size2 + i17 + m4638getBappList().size();
        int i19 = 0;
        for (int i20 = 0; i20 < this.battr_.size(); i20++) {
            i19 += CodedOutputStream.m(this.battr_.get(i20).intValue());
        }
        int i21 = size3 + i19;
        if (!getBattrList().isEmpty()) {
            i21 = i21 + 1 + CodedOutputStream.Z(i19);
        }
        this.battrMemoizedSerializedSize = i19;
        int i22 = 0;
        for (int i23 = 0; i23 < this.wlang_.size(); i23++) {
            i22 += GeneratedMessageV3.computeStringSizeNoTag(this.wlang_.getRaw(i23));
        }
        int size4 = i21 + i22 + m4640getWlangList().size();
        boolean z11 = this.secure_;
        if (z11) {
            size4 += CodedOutputStream.e(13, z11);
        }
        boolean z12 = this.admx_;
        if (z12) {
            size4 += CodedOutputStream.e(14, z12);
        }
        boolean z13 = this.curlx_;
        if (z13) {
            size4 += CodedOutputStream.e(15, z13);
        }
        if (this.display_ != null) {
            size4 += CodedOutputStream.G(16, getDisplay());
        }
        if (this.video_ != null) {
            size4 += CodedOutputStream.G(17, getVideo());
        }
        for (int i24 = 0; i24 < this.extProto_.size(); i24++) {
            size4 += CodedOutputStream.G(19, this.extProto_.get(i24));
        }
        if (this.ext_ != null) {
            size4 += CodedOutputStream.G(20, getExt());
        }
        int serializedSize = size4 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public int getSsai() {
        return this.ssai_;
    }

    public String getTagid() {
        Object obj = this.tagid_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.tagid_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTagidBytes() {
        Object obj = this.tagid_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tagid_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    public VideoPlacement getVideo() {
        VideoPlacement videoPlacement = this.video_;
        if (videoPlacement == null) {
            return VideoPlacement.getDefaultInstance();
        }
        return videoPlacement;
    }

    public VideoPlacementOrBuilder getVideoOrBuilder() {
        return getVideo();
    }

    public String getWlang(int i10) {
        return this.wlang_.get(i10);
    }

    public ByteString getWlangBytes(int i10) {
        return this.wlang_.getByteString(i10);
    }

    public int getWlangCount() {
        return this.wlang_.size();
    }

    public boolean hasDisplay() {
        if (this.display_ != null) {
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

    public boolean hasVideo() {
        if (this.video_ != null) {
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
        int hashCode = ((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTagid().hashCode()) * 37) + 2) * 53) + getSsai()) * 37) + 3) * 53) + getSdk().hashCode()) * 37) + 4) * 53) + getSdkver().hashCode()) * 37) + 5) * 53) + i0.d(getReward());
        if (getBcatCount() > 0) {
            hashCode = (((hashCode * 37) + 6) * 53) + m4639getBcatList().hashCode();
        }
        int i11 = (((hashCode * 37) + 7) * 53) + this.cattax_;
        if (getBadvCount() > 0) {
            i11 = (((i11 * 37) + 9) * 53) + m4637getBadvList().hashCode();
        }
        if (getBappCount() > 0) {
            i11 = (((i11 * 37) + 10) * 53) + m4638getBappList().hashCode();
        }
        if (getBattrCount() > 0) {
            i11 = (((i11 * 37) + 11) * 53) + this.battr_.hashCode();
        }
        if (getWlangCount() > 0) {
            i11 = (((i11 * 37) + 12) * 53) + m4640getWlangList().hashCode();
        }
        int d10 = (((((((((((i11 * 37) + 13) * 53) + i0.d(getSecure())) * 37) + 14) * 53) + i0.d(getAdmx())) * 37) + 15) * 53) + i0.d(getCurlx());
        if (hasDisplay()) {
            d10 = (((d10 * 37) + 16) * 53) + getDisplay().hashCode();
        }
        if (hasVideo()) {
            d10 = (((d10 * 37) + 17) * 53) + getVideo().hashCode();
        }
        if (hasExt()) {
            d10 = (((d10 * 37) + 20) * 53) + getExt().hashCode();
        }
        if (getExtProtoCount() > 0) {
            d10 = (((d10 * 37) + 19) * 53) + getExtProtoList().hashCode();
        }
        int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return b.F.d(Placement.class, Builder.class);
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
        return new Placement();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (!getTagidBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.tagid_);
        }
        int i10 = this.ssai_;
        if (i10 != 0) {
            codedOutputStream.c1(2, i10);
        }
        if (!getSdkBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.sdk_);
        }
        if (!getSdkverBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.sdkver_);
        }
        boolean z10 = this.reward_;
        if (z10) {
            codedOutputStream.n0(5, z10);
        }
        for (int i11 = 0; i11 < this.bcat_.size(); i11++) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.bcat_.getRaw(i11));
        }
        if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
            codedOutputStream.v0(7, this.cattax_);
        }
        for (int i12 = 0; i12 < this.badv_.size(); i12++) {
            GeneratedMessageV3.writeString(codedOutputStream, 9, this.badv_.getRaw(i12));
        }
        for (int i13 = 0; i13 < this.bapp_.size(); i13++) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.bapp_.getRaw(i13));
        }
        if (getBattrList().size() > 0) {
            codedOutputStream.d1(90);
            codedOutputStream.d1(this.battrMemoizedSerializedSize);
        }
        for (int i14 = 0; i14 < this.battr_.size(); i14++) {
            codedOutputStream.w0(this.battr_.get(i14).intValue());
        }
        for (int i15 = 0; i15 < this.wlang_.size(); i15++) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.wlang_.getRaw(i15));
        }
        boolean z11 = this.secure_;
        if (z11) {
            codedOutputStream.n0(13, z11);
        }
        boolean z12 = this.admx_;
        if (z12) {
            codedOutputStream.n0(14, z12);
        }
        boolean z13 = this.curlx_;
        if (z13) {
            codedOutputStream.n0(15, z13);
        }
        if (this.display_ != null) {
            codedOutputStream.L0(16, getDisplay());
        }
        if (this.video_ != null) {
            codedOutputStream.L0(17, getVideo());
        }
        for (int i16 = 0; i16 < this.extProto_.size(); i16++) {
            codedOutputStream.L0(19, this.extProto_.get(i16));
        }
        if (this.ext_ != null) {
            codedOutputStream.L0(20, getExt());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static Builder newBuilder(Placement placement) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(placement);
    }

    public static Placement parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    /* renamed from: getBadvList */
    public m1 m4637getBadvList() {
        return this.badv_;
    }

    /* renamed from: getBappList */
    public m1 m4638getBappList() {
        return this.bapp_;
    }

    /* renamed from: getBcatList */
    public m1 m4639getBcatList() {
        return this.bcat_;
    }

    /* renamed from: getWlangList */
    public m1 m4640getWlangList() {
        return this.wlang_;
    }

    private Placement(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Placement parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Placement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Placement parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Placement mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Placement parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private Placement() {
        this.memoizedIsInitialized = (byte) -1;
        this.tagid_ = "";
        this.sdk_ = "";
        this.sdkver_ = "";
        n0 n0Var = m0.f14459d;
        this.bcat_ = n0Var;
        this.cattax_ = 0;
        this.badv_ = n0Var;
        this.bapp_ = n0Var;
        this.battr_ = Collections.emptyList();
        this.wlang_ = n0Var;
        this.extProto_ = Collections.emptyList();
    }

    public static Placement parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static Placement parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static Placement parseFrom(InputStream inputStream) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Placement parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Placement parseFrom(n nVar) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static Placement parseFrom(n nVar, y yVar) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Placement(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            this.tagid_ = nVar.J();
                            continue;
                        case 16:
                            this.ssai_ = nVar.L();
                            continue;
                        case 26:
                            this.sdk_ = nVar.J();
                            continue;
                        case 34:
                            this.sdkver_ = nVar.J();
                            continue;
                        case 40:
                            this.reward_ = nVar.q();
                            continue;
                        case 50:
                            String J = nVar.J();
                            boolean z12 = (z11 ? 1 : 0) & true;
                            z11 = z11;
                            if (!z12) {
                                this.bcat_ = new m0();
                                z11 = (z11 ? 1 : 0) | true;
                            }
                            this.bcat_.add(J);
                            continue;
                        case 56:
                            this.cattax_ = nVar.t();
                            continue;
                        case 74:
                            String J2 = nVar.J();
                            boolean z13 = (z11 ? 1 : 0) & true;
                            z11 = z11;
                            if (!z13) {
                                this.badv_ = new m0();
                                z11 = (z11 ? 1 : 0) | true;
                            }
                            this.badv_.add(J2);
                            continue;
                        case 82:
                            String J3 = nVar.J();
                            boolean z14 = (z11 ? 1 : 0) & true;
                            z11 = z11;
                            if (!z14) {
                                this.bapp_ = new m0();
                                z11 = (z11 ? 1 : 0) | true;
                            }
                            this.bapp_.add(J3);
                            continue;
                        case 88:
                            int t10 = nVar.t();
                            boolean z15 = (z11 ? 1 : 0) & true;
                            z11 = z11;
                            if (!z15) {
                                this.battr_ = new ArrayList();
                                z11 = (z11 ? 1 : 0) | true;
                            }
                            this.battr_.add(Integer.valueOf(t10));
                            continue;
                        case 90:
                            int p10 = nVar.p(nVar.C());
                            z11 = z11;
                            while (nVar.d() > 0) {
                                int t11 = nVar.t();
                                if (!((z11 ? 1 : 0) & true)) {
                                    this.battr_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.battr_.add(Integer.valueOf(t11));
                                z11 = z11;
                            }
                            nVar.o(p10);
                            continue;
                        case 98:
                            String J4 = nVar.J();
                            boolean z16 = (z11 ? 1 : 0) & true;
                            z11 = z11;
                            if (!z16) {
                                this.wlang_ = new m0();
                                z11 = (z11 ? 1 : 0) | true;
                            }
                            this.wlang_.add(J4);
                            continue;
                        case 104:
                            this.secure_ = nVar.q();
                            continue;
                        case 112:
                            this.admx_ = nVar.q();
                            continue;
                        case 120:
                            this.curlx_ = nVar.q();
                            continue;
                        case 130:
                            DisplayPlacement displayPlacement = this.display_;
                            DisplayPlacement.Builder builder = displayPlacement != null ? displayPlacement.toBuilder() : null;
                            DisplayPlacement displayPlacement2 = (DisplayPlacement) nVar.A(DisplayPlacement.parser(), yVar);
                            this.display_ = displayPlacement2;
                            if (builder != null) {
                                builder.mergeFrom(displayPlacement2);
                                this.display_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                        case 138:
                            VideoPlacement videoPlacement = this.video_;
                            VideoPlacement.Builder builder2 = videoPlacement != null ? videoPlacement.toBuilder() : null;
                            VideoPlacement videoPlacement2 = (VideoPlacement) nVar.A(VideoPlacement.parser(), yVar);
                            this.video_ = videoPlacement2;
                            if (builder2 != null) {
                                builder2.mergeFrom(videoPlacement2);
                                this.video_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                        case 154:
                            boolean z17 = (z11 ? 1 : 0) & true;
                            z11 = z11;
                            if (!z17) {
                                this.extProto_ = new ArrayList();
                                z11 = (z11 ? 1 : 0) | true;
                            }
                            this.extProto_.add(nVar.A(Any.parser(), yVar));
                            continue;
                        case 162:
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
                    this.bcat_ = this.bcat_.getUnmodifiableView();
                }
                if ((z11 ? 1 : 0) & true) {
                    this.badv_ = this.badv_.getUnmodifiableView();
                }
                if ((z11 ? 1 : 0) & true) {
                    this.bapp_ = this.bapp_.getUnmodifiableView();
                }
                if ((z11 ? 1 : 0) & true) {
                    this.battr_ = Collections.unmodifiableList(this.battr_);
                }
                if ((z11 ? 1 : 0) & true) {
                    this.wlang_ = this.wlang_.getUnmodifiableView();
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
            this.bcat_ = this.bcat_.getUnmodifiableView();
        }
        if ((z11 ? 1 : 0) & true) {
            this.badv_ = this.badv_.getUnmodifiableView();
        }
        if ((z11 ? 1 : 0) & true) {
            this.bapp_ = this.bapp_.getUnmodifiableView();
        }
        if ((z11 ? 1 : 0) & true) {
            this.battr_ = Collections.unmodifiableList(this.battr_);
        }
        if ((z11 ? 1 : 0) & true) {
            this.wlang_ = this.wlang_.getUnmodifiableView();
        }
        if ((z11 ? 1 : 0) & true) {
            this.extProto_ = Collections.unmodifiableList(this.extProto_);
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }
}
