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
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.model.VideoRef;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class Context extends GeneratedMessageV3 implements c {
    public static final int APP_FIELD_NUMBER = 1;
    public static final int DEVICE_FIELD_NUMBER = 2;
    public static final int EXT_FIELD_NUMBER = 7;
    public static final int EXT_PROTO_FIELD_NUMBER = 6;
    public static final int REGS_FIELD_NUMBER = 3;
    public static final int RESTRICTIONS_FIELD_NUMBER = 4;
    public static final int USER_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private App app_;
    private Device device_;
    private List<Any> extProto_;
    private Struct ext_;
    private byte memoizedIsInitialized;
    private Regs regs_;
    private Restrictions restrictions_;
    private User user_;
    private static final Context DEFAULT_INSTANCE = new Context();
    private static final j1<Context> PARSER = new com.explorestack.protobuf.b<Context>() { // from class: com.explorestack.protobuf.adcom.Context.1
        @Override // com.explorestack.protobuf.j1
        public Context parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Context(nVar, yVar);
        }
    };

    /* loaded from: classes3.dex */
    public static final class App extends GeneratedMessageV3 implements AppOrBuilder {
        public static final int BUNDLE_FIELD_NUMBER = 12;
        public static final int CATTAX_FIELD_NUMBER = 9;
        public static final int CAT_FIELD_NUMBER = 6;
        public static final int CONTENT_FIELD_NUMBER = 4;
        public static final int DOMAIN_FIELD_NUMBER = 5;
        public static final int EXT_FIELD_NUMBER = 18;
        public static final int EXT_PROTO_FIELD_NUMBER = 17;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int KEYWORDS_FIELD_NUMBER = 11;
        public static final int NAME_FIELD_NUMBER = 2;
        public static final int PAGECAT_FIELD_NUMBER = 8;
        public static final int PAID_FIELD_NUMBER = 16;
        public static final int PRIVPOLICY_FIELD_NUMBER = 10;
        public static final int PUB_FIELD_NUMBER = 3;
        public static final int RELEASE_FIELD_NUMBER = 19;
        public static final int SECTCAT_FIELD_NUMBER = 7;
        public static final int STOREID_FIELD_NUMBER = 13;
        public static final int STOREURL_FIELD_NUMBER = 14;
        public static final int VER_FIELD_NUMBER = 15;
        private static final long serialVersionUID = 0;
        private volatile Object bundle_;
        private n0 cat_;
        private int cattax_;
        private Content content_;
        private volatile Object domain_;
        private List<Any> extProto_;
        private Struct ext_;
        private volatile Object id_;
        private volatile Object keywords_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private n0 pagecat_;
        private boolean paid_;
        private boolean privpolicy_;
        private Publisher pub_;
        private Release release_;
        private n0 sectcat_;
        private volatile Object storeid_;
        private volatile Object storeurl_;
        private volatile Object ver_;
        private static final App DEFAULT_INSTANCE = new App();
        private static final j1<App> PARSER = new com.explorestack.protobuf.b<App>() { // from class: com.explorestack.protobuf.adcom.Context.App.1
            @Override // com.explorestack.protobuf.j1
            public App parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new App(nVar, yVar);
            }
        };

        /* loaded from: classes3.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements AppOrBuilder {
            private int bitField0_;
            private Object bundle_;
            private n0 cat_;
            private int cattax_;
            private t1<Content, Content.Builder, ContentOrBuilder> contentBuilder_;
            private Content content_;
            private Object domain_;
            private t1<Struct, Struct.Builder, x1> extBuilder_;
            private p1<Any, Any.Builder, e> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private Object id_;
            private Object keywords_;
            private Object name_;
            private n0 pagecat_;
            private boolean paid_;
            private boolean privpolicy_;
            private t1<Publisher, Publisher.Builder, PublisherOrBuilder> pubBuilder_;
            private Publisher pub_;
            private t1<Release, Release.Builder, ReleaseOrBuilder> releaseBuilder_;
            private Release release_;
            private n0 sectcat_;
            private Object storeid_;
            private Object storeurl_;
            private Object ver_;

            private void ensureCatIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.cat_ = new m0(this.cat_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 8;
                }
            }

            private void ensurePagecatIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.pagecat_ = new m0(this.pagecat_);
                    this.bitField0_ |= 4;
                }
            }

            private void ensureSectcatIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.sectcat_ = new m0(this.sectcat_);
                    this.bitField0_ |= 2;
                }
            }

            private t1<Content, Content.Builder, ContentOrBuilder> getContentFieldBuilder() {
                if (this.contentBuilder_ == null) {
                    this.contentBuilder_ = new t1<>(getContent(), getParentForChildren(), isClean());
                    this.content_ = null;
                }
                return this.contentBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14222c;
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

            private t1<Publisher, Publisher.Builder, PublisherOrBuilder> getPubFieldBuilder() {
                if (this.pubBuilder_ == null) {
                    this.pubBuilder_ = new t1<>(getPub(), getParentForChildren(), isClean());
                    this.pub_ = null;
                }
                return this.pubBuilder_;
            }

            private t1<Release, Release.Builder, ReleaseOrBuilder> getReleaseFieldBuilder() {
                if (this.releaseBuilder_ == null) {
                    this.releaseBuilder_ = new t1<>(getRelease(), getParentForChildren(), isClean());
                    this.release_ = null;
                }
                return this.releaseBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getExtProtoFieldBuilder();
                }
            }

            public Builder addAllCat(Iterable<String> iterable) {
                ensureCatIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.cat_);
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

            public Builder addAllPagecat(Iterable<String> iterable) {
                ensurePagecatIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.pagecat_);
                onChanged();
                return this;
            }

            public Builder addAllSectcat(Iterable<String> iterable) {
                ensureSectcatIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.sectcat_);
                onChanged();
                return this;
            }

            public Builder addCat(String str) {
                str.getClass();
                ensureCatIsMutable();
                this.cat_.add(str);
                onChanged();
                return this;
            }

            public Builder addCatBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                ensureCatIsMutable();
                this.cat_.b(byteString);
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

            public Builder addPagecat(String str) {
                str.getClass();
                ensurePagecatIsMutable();
                this.pagecat_.add(str);
                onChanged();
                return this;
            }

            public Builder addPagecatBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                ensurePagecatIsMutable();
                this.pagecat_.b(byteString);
                onChanged();
                return this;
            }

            public Builder addSectcat(String str) {
                str.getClass();
                ensureSectcatIsMutable();
                this.sectcat_.add(str);
                onChanged();
                return this;
            }

            public Builder addSectcatBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                ensureSectcatIsMutable();
                this.sectcat_.b(byteString);
                onChanged();
                return this;
            }

            public Builder clearBundle() {
                this.bundle_ = App.getDefaultInstance().getBundle();
                onChanged();
                return this;
            }

            public Builder clearCat() {
                this.cat_ = m0.f14459d;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder clearCattax() {
                this.cattax_ = 0;
                onChanged();
                return this;
            }

            public Builder clearContent() {
                if (this.contentBuilder_ == null) {
                    this.content_ = null;
                    onChanged();
                } else {
                    this.content_ = null;
                    this.contentBuilder_ = null;
                }
                return this;
            }

            public Builder clearDomain() {
                this.domain_ = App.getDefaultInstance().getDomain();
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
                this.id_ = App.getDefaultInstance().getId();
                onChanged();
                return this;
            }

            public Builder clearKeywords() {
                this.keywords_ = App.getDefaultInstance().getKeywords();
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.name_ = App.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder clearPagecat() {
                this.pagecat_ = m0.f14459d;
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public Builder clearPaid() {
                this.paid_ = false;
                onChanged();
                return this;
            }

            public Builder clearPrivpolicy() {
                this.privpolicy_ = false;
                onChanged();
                return this;
            }

            public Builder clearPub() {
                if (this.pubBuilder_ == null) {
                    this.pub_ = null;
                    onChanged();
                } else {
                    this.pub_ = null;
                    this.pubBuilder_ = null;
                }
                return this;
            }

            public Builder clearRelease() {
                if (this.releaseBuilder_ == null) {
                    this.release_ = null;
                    onChanged();
                } else {
                    this.release_ = null;
                    this.releaseBuilder_ = null;
                }
                return this;
            }

            public Builder clearSectcat() {
                this.sectcat_ = m0.f14459d;
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder clearStoreid() {
                this.storeid_ = App.getDefaultInstance().getStoreid();
                onChanged();
                return this;
            }

            public Builder clearStoreurl() {
                this.storeurl_ = App.getDefaultInstance().getStoreurl();
                onChanged();
                return this;
            }

            public Builder clearVer() {
                this.ver_ = App.getDefaultInstance().getVer();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public String getBundle() {
                Object obj = this.bundle_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.bundle_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ByteString getBundleBytes() {
                Object obj = this.bundle_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.bundle_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public String getCat(int i10) {
                return this.cat_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ByteString getCatBytes(int i10) {
                return this.cat_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public int getCatCount() {
                return this.cat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public CategoryTaxonomy getCattax() {
                CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                if (valueOf == null) {
                    return CategoryTaxonomy.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public int getCattaxValue() {
                return this.cattax_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public Content getContent() {
                t1<Content, Content.Builder, ContentOrBuilder> t1Var = this.contentBuilder_;
                if (t1Var == null) {
                    Content content = this.content_;
                    if (content == null) {
                        return Content.getDefaultInstance();
                    }
                    return content;
                }
                return t1Var.e();
            }

            public Content.Builder getContentBuilder() {
                onChanged();
                return getContentFieldBuilder().d();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ContentOrBuilder getContentOrBuilder() {
                t1<Content, Content.Builder, ContentOrBuilder> t1Var = this.contentBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Content content = this.content_;
                if (content == null) {
                    return Content.getDefaultInstance();
                }
                return content;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return b.f14222c;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public String getDomain() {
                Object obj = this.domain_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.domain_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ByteString getDomainBytes() {
                Object obj = this.domain_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.domain_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public int getExtProtoCount() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public List<Any> getExtProtoList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.extProto_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public String getId() {
                Object obj = this.id_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public String getKeywords() {
                Object obj = this.keywords_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.keywords_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ByteString getKeywordsBytes() {
                Object obj = this.keywords_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.keywords_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public String getName() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.name_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.name_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public String getPagecat(int i10) {
                return this.pagecat_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ByteString getPagecatBytes(int i10) {
                return this.pagecat_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public int getPagecatCount() {
                return this.pagecat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public boolean getPaid() {
                return this.paid_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public boolean getPrivpolicy() {
                return this.privpolicy_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public Publisher getPub() {
                t1<Publisher, Publisher.Builder, PublisherOrBuilder> t1Var = this.pubBuilder_;
                if (t1Var == null) {
                    Publisher publisher = this.pub_;
                    if (publisher == null) {
                        return Publisher.getDefaultInstance();
                    }
                    return publisher;
                }
                return t1Var.e();
            }

            public Publisher.Builder getPubBuilder() {
                onChanged();
                return getPubFieldBuilder().d();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public PublisherOrBuilder getPubOrBuilder() {
                t1<Publisher, Publisher.Builder, PublisherOrBuilder> t1Var = this.pubBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Publisher publisher = this.pub_;
                if (publisher == null) {
                    return Publisher.getDefaultInstance();
                }
                return publisher;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public Release getRelease() {
                t1<Release, Release.Builder, ReleaseOrBuilder> t1Var = this.releaseBuilder_;
                if (t1Var == null) {
                    Release release = this.release_;
                    if (release == null) {
                        return Release.getDefaultInstance();
                    }
                    return release;
                }
                return t1Var.e();
            }

            public Release.Builder getReleaseBuilder() {
                onChanged();
                return getReleaseFieldBuilder().d();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ReleaseOrBuilder getReleaseOrBuilder() {
                t1<Release, Release.Builder, ReleaseOrBuilder> t1Var = this.releaseBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Release release = this.release_;
                if (release == null) {
                    return Release.getDefaultInstance();
                }
                return release;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public String getSectcat(int i10) {
                return this.sectcat_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ByteString getSectcatBytes(int i10) {
                return this.sectcat_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public int getSectcatCount() {
                return this.sectcat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public String getStoreid() {
                Object obj = this.storeid_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.storeid_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ByteString getStoreidBytes() {
                Object obj = this.storeid_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.storeid_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public String getStoreurl() {
                Object obj = this.storeurl_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.storeurl_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ByteString getStoreurlBytes() {
                Object obj = this.storeurl_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.storeurl_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public String getVer() {
                Object obj = this.ver_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ver_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public ByteString getVerBytes() {
                Object obj = this.ver_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ver_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public boolean hasContent() {
                if (this.contentBuilder_ == null && this.content_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public boolean hasExt() {
                if (this.extBuilder_ == null && this.ext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public boolean hasPub() {
                if (this.pubBuilder_ == null && this.pub_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public boolean hasRelease() {
                if (this.releaseBuilder_ == null && this.release_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14224d.d(App.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeContent(Content content) {
                t1<Content, Content.Builder, ContentOrBuilder> t1Var = this.contentBuilder_;
                if (t1Var == null) {
                    Content content2 = this.content_;
                    if (content2 != null) {
                        this.content_ = Content.newBuilder(content2).mergeFrom(content).buildPartial();
                    } else {
                        this.content_ = content;
                    }
                    onChanged();
                } else {
                    t1Var.g(content);
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

            public Builder mergePub(Publisher publisher) {
                t1<Publisher, Publisher.Builder, PublisherOrBuilder> t1Var = this.pubBuilder_;
                if (t1Var == null) {
                    Publisher publisher2 = this.pub_;
                    if (publisher2 != null) {
                        this.pub_ = Publisher.newBuilder(publisher2).mergeFrom(publisher).buildPartial();
                    } else {
                        this.pub_ = publisher;
                    }
                    onChanged();
                } else {
                    t1Var.g(publisher);
                }
                return this;
            }

            public Builder mergeRelease(Release release) {
                t1<Release, Release.Builder, ReleaseOrBuilder> t1Var = this.releaseBuilder_;
                if (t1Var == null) {
                    Release release2 = this.release_;
                    if (release2 != null) {
                        this.release_ = Release.newBuilder(release2).mergeFrom(release).buildPartial();
                    } else {
                        this.release_ = release;
                    }
                    onChanged();
                } else {
                    t1Var.g(release);
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

            public Builder setBundle(String str) {
                str.getClass();
                this.bundle_ = str;
                onChanged();
                return this;
            }

            public Builder setBundleBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.bundle_ = byteString;
                onChanged();
                return this;
            }

            public Builder setCat(int i10, String str) {
                str.getClass();
                ensureCatIsMutable();
                this.cat_.set(i10, str);
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

            public Builder setContent(Content content) {
                t1<Content, Content.Builder, ContentOrBuilder> t1Var = this.contentBuilder_;
                if (t1Var == null) {
                    content.getClass();
                    this.content_ = content;
                    onChanged();
                } else {
                    t1Var.i(content);
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
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.domain_ = byteString;
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

            public Builder setKeywords(String str) {
                str.getClass();
                this.keywords_ = str;
                onChanged();
                return this;
            }

            public Builder setKeywordsBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.keywords_ = byteString;
                onChanged();
                return this;
            }

            public Builder setName(String str) {
                str.getClass();
                this.name_ = str;
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public Builder setPagecat(int i10, String str) {
                str.getClass();
                ensurePagecatIsMutable();
                this.pagecat_.set(i10, str);
                onChanged();
                return this;
            }

            public Builder setPaid(boolean z10) {
                this.paid_ = z10;
                onChanged();
                return this;
            }

            public Builder setPrivpolicy(boolean z10) {
                this.privpolicy_ = z10;
                onChanged();
                return this;
            }

            public Builder setPub(Publisher publisher) {
                t1<Publisher, Publisher.Builder, PublisherOrBuilder> t1Var = this.pubBuilder_;
                if (t1Var == null) {
                    publisher.getClass();
                    this.pub_ = publisher;
                    onChanged();
                } else {
                    t1Var.i(publisher);
                }
                return this;
            }

            public Builder setRelease(Release release) {
                t1<Release, Release.Builder, ReleaseOrBuilder> t1Var = this.releaseBuilder_;
                if (t1Var == null) {
                    release.getClass();
                    this.release_ = release;
                    onChanged();
                } else {
                    t1Var.i(release);
                }
                return this;
            }

            public Builder setSectcat(int i10, String str) {
                str.getClass();
                ensureSectcatIsMutable();
                this.sectcat_.set(i10, str);
                onChanged();
                return this;
            }

            public Builder setStoreid(String str) {
                str.getClass();
                this.storeid_ = str;
                onChanged();
                return this;
            }

            public Builder setStoreidBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.storeid_ = byteString;
                onChanged();
                return this;
            }

            public Builder setStoreurl(String str) {
                str.getClass();
                this.storeurl_ = str;
                onChanged();
                return this;
            }

            public Builder setStoreurlBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.storeurl_ = byteString;
                onChanged();
                return this;
            }

            public Builder setVer(String str) {
                str.getClass();
                this.ver_ = str;
                onChanged();
                return this;
            }

            public Builder setVerBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.ver_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public m1 getCatList() {
                return this.cat_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public m1 getPagecatList() {
                return this.pagecat_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
            public m1 getSectcatList() {
                return this.sectcat_.getUnmodifiableView();
            }

            private Builder() {
                this.id_ = "";
                this.name_ = "";
                this.domain_ = "";
                n0 n0Var = m0.f14459d;
                this.cat_ = n0Var;
                this.sectcat_ = n0Var;
                this.pagecat_ = n0Var;
                this.cattax_ = 0;
                this.keywords_ = "";
                this.bundle_ = "";
                this.storeid_ = "";
                this.storeurl_ = "";
                this.ver_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public App build() {
                App buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public App buildPartial() {
                App app = new App(this);
                app.id_ = this.id_;
                app.name_ = this.name_;
                t1<Publisher, Publisher.Builder, PublisherOrBuilder> t1Var = this.pubBuilder_;
                if (t1Var == null) {
                    app.pub_ = this.pub_;
                } else {
                    app.pub_ = t1Var.a();
                }
                t1<Content, Content.Builder, ContentOrBuilder> t1Var2 = this.contentBuilder_;
                if (t1Var2 == null) {
                    app.content_ = this.content_;
                } else {
                    app.content_ = t1Var2.a();
                }
                app.domain_ = this.domain_;
                if ((this.bitField0_ & 1) != 0) {
                    this.cat_ = this.cat_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                app.cat_ = this.cat_;
                if ((this.bitField0_ & 2) != 0) {
                    this.sectcat_ = this.sectcat_.getUnmodifiableView();
                    this.bitField0_ &= -3;
                }
                app.sectcat_ = this.sectcat_;
                if ((this.bitField0_ & 4) != 0) {
                    this.pagecat_ = this.pagecat_.getUnmodifiableView();
                    this.bitField0_ &= -5;
                }
                app.pagecat_ = this.pagecat_;
                app.cattax_ = this.cattax_;
                app.privpolicy_ = this.privpolicy_;
                app.keywords_ = this.keywords_;
                app.bundle_ = this.bundle_;
                app.storeid_ = this.storeid_;
                app.storeurl_ = this.storeurl_;
                app.ver_ = this.ver_;
                app.paid_ = this.paid_;
                t1<Release, Release.Builder, ReleaseOrBuilder> t1Var3 = this.releaseBuilder_;
                if (t1Var3 == null) {
                    app.release_ = this.release_;
                } else {
                    app.release_ = t1Var3.a();
                }
                t1<Struct, Struct.Builder, x1> t1Var4 = this.extBuilder_;
                if (t1Var4 == null) {
                    app.ext_ = this.ext_;
                } else {
                    app.ext_ = t1Var4.a();
                }
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    app.extProto_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 8) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -9;
                    }
                    app.extProto_ = this.extProto_;
                }
                onBuilt();
                return app;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public App mo4630getDefaultInstanceForType() {
                return App.getDefaultInstance();
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
                this.name_ = "";
                if (this.pubBuilder_ == null) {
                    this.pub_ = null;
                } else {
                    this.pub_ = null;
                    this.pubBuilder_ = null;
                }
                if (this.contentBuilder_ == null) {
                    this.content_ = null;
                } else {
                    this.content_ = null;
                    this.contentBuilder_ = null;
                }
                this.domain_ = "";
                n0 n0Var = m0.f14459d;
                this.cat_ = n0Var;
                int i10 = this.bitField0_;
                this.sectcat_ = n0Var;
                this.pagecat_ = n0Var;
                this.bitField0_ = i10 & (-8);
                this.cattax_ = 0;
                this.privpolicy_ = false;
                this.keywords_ = "";
                this.bundle_ = "";
                this.storeid_ = "";
                this.storeurl_ = "";
                this.ver_ = "";
                this.paid_ = false;
                if (this.releaseBuilder_ == null) {
                    this.release_ = null;
                } else {
                    this.release_ = null;
                    this.releaseBuilder_ = null;
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
                    this.bitField0_ &= -9;
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder setContent(Content.Builder builder) {
                t1<Content, Content.Builder, ContentOrBuilder> t1Var = this.contentBuilder_;
                if (t1Var == null) {
                    this.content_ = builder.build();
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

            public Builder setPub(Publisher.Builder builder) {
                t1<Publisher, Publisher.Builder, PublisherOrBuilder> t1Var = this.pubBuilder_;
                if (t1Var == null) {
                    this.pub_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder setRelease(Release.Builder builder) {
                t1<Release, Release.Builder, ReleaseOrBuilder> t1Var = this.releaseBuilder_;
                if (t1Var == null) {
                    this.release_ = builder.build();
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
                if (message instanceof App) {
                    return mergeFrom((App) message);
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

            public Builder mergeFrom(App app) {
                if (app == App.getDefaultInstance()) {
                    return this;
                }
                if (!app.getId().isEmpty()) {
                    this.id_ = app.id_;
                    onChanged();
                }
                if (!app.getName().isEmpty()) {
                    this.name_ = app.name_;
                    onChanged();
                }
                if (app.hasPub()) {
                    mergePub(app.getPub());
                }
                if (app.hasContent()) {
                    mergeContent(app.getContent());
                }
                if (!app.getDomain().isEmpty()) {
                    this.domain_ = app.domain_;
                    onChanged();
                }
                if (!app.cat_.isEmpty()) {
                    if (this.cat_.isEmpty()) {
                        this.cat_ = app.cat_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureCatIsMutable();
                        this.cat_.addAll(app.cat_);
                    }
                    onChanged();
                }
                if (!app.sectcat_.isEmpty()) {
                    if (this.sectcat_.isEmpty()) {
                        this.sectcat_ = app.sectcat_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureSectcatIsMutable();
                        this.sectcat_.addAll(app.sectcat_);
                    }
                    onChanged();
                }
                if (!app.pagecat_.isEmpty()) {
                    if (this.pagecat_.isEmpty()) {
                        this.pagecat_ = app.pagecat_;
                        this.bitField0_ &= -5;
                    } else {
                        ensurePagecatIsMutable();
                        this.pagecat_.addAll(app.pagecat_);
                    }
                    onChanged();
                }
                if (app.cattax_ != 0) {
                    setCattaxValue(app.getCattaxValue());
                }
                if (app.getPrivpolicy()) {
                    setPrivpolicy(app.getPrivpolicy());
                }
                if (!app.getKeywords().isEmpty()) {
                    this.keywords_ = app.keywords_;
                    onChanged();
                }
                if (!app.getBundle().isEmpty()) {
                    this.bundle_ = app.bundle_;
                    onChanged();
                }
                if (!app.getStoreid().isEmpty()) {
                    this.storeid_ = app.storeid_;
                    onChanged();
                }
                if (!app.getStoreurl().isEmpty()) {
                    this.storeurl_ = app.storeurl_;
                    onChanged();
                }
                if (!app.getVer().isEmpty()) {
                    this.ver_ = app.ver_;
                    onChanged();
                }
                if (app.getPaid()) {
                    setPaid(app.getPaid());
                }
                if (app.hasRelease()) {
                    mergeRelease(app.getRelease());
                }
                if (app.hasExt()) {
                    mergeExt(app.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!app.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = app.extProto_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(app.extProto_);
                        }
                        onChanged();
                    }
                } else if (!app.extProto_.isEmpty()) {
                    if (!this.extProtoBuilder_.t()) {
                        this.extProtoBuilder_.a(app.extProto_);
                    } else {
                        this.extProtoBuilder_.h();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = app.extProto_;
                        this.bitField0_ &= -9;
                        this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) app).unknownFields);
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
                this.id_ = "";
                this.name_ = "";
                this.domain_ = "";
                n0 n0Var = m0.f14459d;
                this.cat_ = n0Var;
                this.sectcat_ = n0Var;
                this.pagecat_ = n0Var;
                this.cattax_ = 0;
                this.keywords_ = "";
                this.bundle_ = "";
                this.storeid_ = "";
                this.storeurl_ = "";
                this.ver_ = "";
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
            public com.explorestack.protobuf.adcom.Context.App.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.App.access$12600()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.explorestack.protobuf.adcom.Context$App r3 = (com.explorestack.protobuf.adcom.Context.App) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.explorestack.protobuf.adcom.Context$App r4 = (com.explorestack.protobuf.adcom.Context.App) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.App.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$App$Builder");
            }
        }

        /* loaded from: classes3.dex */
        public static final class Content extends GeneratedMessageV3 implements ContentOrBuilder {
            public static final int ALBUM_FIELD_NUMBER = 8;
            public static final int ARTIST_FIELD_NUMBER = 6;
            public static final int CATTAX_FIELD_NUMBER = 12;
            public static final int CAT_FIELD_NUMBER = 11;
            public static final int CONTEXT_FIELD_NUMBER = 14;
            public static final int DATA_FIELD_NUMBER = 25;
            public static final int EMBED_FIELD_NUMBER = 23;
            public static final int EPISODE_FIELD_NUMBER = 2;
            public static final int EXT_FIELD_NUMBER = 27;
            public static final int EXT_PROTO_FIELD_NUMBER = 26;
            public static final int GENRE_FIELD_NUMBER = 7;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int ISRC_FIELD_NUMBER = 9;
            public static final int KEYWORDS_FIELD_NUMBER = 18;
            public static final int LANG_FIELD_NUMBER = 22;
            public static final int LEN_FIELD_NUMBER = 21;
            public static final int LIVE_FIELD_NUMBER = 19;
            public static final int MRATING_FIELD_NUMBER = 17;
            public static final int PRODQ_FIELD_NUMBER = 13;
            public static final int PRODUCER_FIELD_NUMBER = 24;
            public static final int RATING_FIELD_NUMBER = 15;
            public static final int SEASON_FIELD_NUMBER = 5;
            public static final int SERIES_FIELD_NUMBER = 4;
            public static final int SRCREL_FIELD_NUMBER = 20;
            public static final int TITLE_FIELD_NUMBER = 3;
            public static final int URATING_FIELD_NUMBER = 16;
            public static final int URL_FIELD_NUMBER = 10;
            private static final long serialVersionUID = 0;
            private volatile Object album_;
            private volatile Object artist_;
            private n0 cat_;
            private int cattax_;
            private int context_;
            private List<Data> data_;
            private boolean embed_;
            private int episode_;
            private List<Any> extProto_;
            private Struct ext_;
            private volatile Object genre_;
            private volatile Object id_;
            private volatile Object isrc_;
            private volatile Object keywords_;
            private volatile Object lang_;
            private int len_;
            private boolean live_;
            private byte memoizedIsInitialized;
            private int mrating_;
            private int prodq_;
            private Producer producer_;
            private volatile Object rating_;
            private volatile Object season_;
            private volatile Object series_;
            private int srcrel_;
            private volatile Object title_;
            private volatile Object urating_;
            private volatile Object url_;
            private static final Content DEFAULT_INSTANCE = new Content();
            private static final j1<Content> PARSER = new com.explorestack.protobuf.b<Content>() { // from class: com.explorestack.protobuf.adcom.Context.App.Content.1
                @Override // com.explorestack.protobuf.j1
                public Content parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Content(nVar, yVar);
                }
            };

            /* loaded from: classes3.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements ContentOrBuilder {
                private Object album_;
                private Object artist_;
                private int bitField0_;
                private n0 cat_;
                private int cattax_;
                private int context_;
                private p1<Data, Data.Builder, DataOrBuilder> dataBuilder_;
                private List<Data> data_;
                private boolean embed_;
                private int episode_;
                private t1<Struct, Struct.Builder, x1> extBuilder_;
                private p1<Any, Any.Builder, e> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object genre_;
                private Object id_;
                private Object isrc_;
                private Object keywords_;
                private Object lang_;
                private int len_;
                private boolean live_;
                private int mrating_;
                private int prodq_;
                private t1<Producer, Producer.Builder, ProducerOrBuilder> producerBuilder_;
                private Producer producer_;
                private Object rating_;
                private Object season_;
                private Object series_;
                private int srcrel_;
                private Object title_;
                private Object urating_;
                private Object url_;

                private void ensureCatIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.cat_ = new m0(this.cat_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensureDataIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.data_ = new ArrayList(this.data_);
                        this.bitField0_ |= 2;
                    }
                }

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 4) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 4;
                    }
                }

                private p1<Data, Data.Builder, DataOrBuilder> getDataFieldBuilder() {
                    boolean z10;
                    if (this.dataBuilder_ == null) {
                        List<Data> list = this.data_;
                        if ((this.bitField0_ & 2) != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        this.dataBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                        this.data_ = null;
                    }
                    return this.dataBuilder_;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.f14230g;
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

                private t1<Producer, Producer.Builder, ProducerOrBuilder> getProducerFieldBuilder() {
                    if (this.producerBuilder_ == null) {
                        this.producerBuilder_ = new t1<>(getProducer(), getParentForChildren(), isClean());
                        this.producer_ = null;
                    }
                    return this.producerBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        getDataFieldBuilder();
                        getExtProtoFieldBuilder();
                    }
                }

                public Builder addAllCat(Iterable<String> iterable) {
                    ensureCatIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.cat_);
                    onChanged();
                    return this;
                }

                public Builder addAllData(Iterable<? extends Data> iterable) {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        ensureDataIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.data_);
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

                public Builder addCat(String str) {
                    str.getClass();
                    ensureCatIsMutable();
                    this.cat_.add(str);
                    onChanged();
                    return this;
                }

                public Builder addCatBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    ensureCatIsMutable();
                    this.cat_.b(byteString);
                    onChanged();
                    return this;
                }

                public Builder addData(Data data) {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        data.getClass();
                        ensureDataIsMutable();
                        this.data_.add(data);
                        onChanged();
                    } else {
                        p1Var.e(data);
                    }
                    return this;
                }

                public Data.Builder addDataBuilder() {
                    return getDataFieldBuilder().c(Data.getDefaultInstance());
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

                public Builder clearAlbum() {
                    this.album_ = Content.getDefaultInstance().getAlbum();
                    onChanged();
                    return this;
                }

                public Builder clearArtist() {
                    this.artist_ = Content.getDefaultInstance().getArtist();
                    onChanged();
                    return this;
                }

                public Builder clearCat() {
                    this.cat_ = m0.f14459d;
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public Builder clearCattax() {
                    this.cattax_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearContext() {
                    this.context_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearData() {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        this.data_ = Collections.emptyList();
                        this.bitField0_ &= -3;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder clearEmbed() {
                    this.embed_ = false;
                    onChanged();
                    return this;
                }

                public Builder clearEpisode() {
                    this.episode_ = 0;
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

                public Builder clearGenre() {
                    this.genre_ = Content.getDefaultInstance().getGenre();
                    onChanged();
                    return this;
                }

                public Builder clearId() {
                    this.id_ = Content.getDefaultInstance().getId();
                    onChanged();
                    return this;
                }

                public Builder clearIsrc() {
                    this.isrc_ = Content.getDefaultInstance().getIsrc();
                    onChanged();
                    return this;
                }

                public Builder clearKeywords() {
                    this.keywords_ = Content.getDefaultInstance().getKeywords();
                    onChanged();
                    return this;
                }

                public Builder clearLang() {
                    this.lang_ = Content.getDefaultInstance().getLang();
                    onChanged();
                    return this;
                }

                public Builder clearLen() {
                    this.len_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearLive() {
                    this.live_ = false;
                    onChanged();
                    return this;
                }

                public Builder clearMrating() {
                    this.mrating_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearProdq() {
                    this.prodq_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearProducer() {
                    if (this.producerBuilder_ == null) {
                        this.producer_ = null;
                        onChanged();
                    } else {
                        this.producer_ = null;
                        this.producerBuilder_ = null;
                    }
                    return this;
                }

                public Builder clearRating() {
                    this.rating_ = Content.getDefaultInstance().getRating();
                    onChanged();
                    return this;
                }

                public Builder clearSeason() {
                    this.season_ = Content.getDefaultInstance().getSeason();
                    onChanged();
                    return this;
                }

                public Builder clearSeries() {
                    this.series_ = Content.getDefaultInstance().getSeries();
                    onChanged();
                    return this;
                }

                public Builder clearSrcrel() {
                    this.srcrel_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearTitle() {
                    this.title_ = Content.getDefaultInstance().getTitle();
                    onChanged();
                    return this;
                }

                public Builder clearUrating() {
                    this.urating_ = Content.getDefaultInstance().getUrating();
                    onChanged();
                    return this;
                }

                public Builder clearUrl() {
                    this.url_ = Content.getDefaultInstance().getUrl();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getAlbum() {
                    Object obj = this.album_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.album_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getAlbumBytes() {
                    Object obj = this.album_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.album_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getArtist() {
                    Object obj = this.artist_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.artist_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getArtistBytes() {
                    Object obj = this.artist_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.artist_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getCat(int i10) {
                    return this.cat_.get(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getCatBytes(int i10) {
                    return this.cat_.getByteString(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public int getCatCount() {
                    return this.cat_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public CategoryTaxonomy getCattax() {
                    CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                    if (valueOf == null) {
                        return CategoryTaxonomy.UNRECOGNIZED;
                    }
                    return valueOf;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public int getCattaxValue() {
                    return this.cattax_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ContentContext getContext() {
                    ContentContext valueOf = ContentContext.valueOf(this.context_);
                    if (valueOf == null) {
                        return ContentContext.UNRECOGNIZED;
                    }
                    return valueOf;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public int getContextValue() {
                    return this.context_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public Data getData(int i10) {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        return this.data_.get(i10);
                    }
                    return p1Var.n(i10);
                }

                public Data.Builder getDataBuilder(int i10) {
                    return getDataFieldBuilder().k(i10);
                }

                public List<Data.Builder> getDataBuilderList() {
                    return getDataFieldBuilder().l();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public int getDataCount() {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        return this.data_.size();
                    }
                    return p1Var.m();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public List<Data> getDataList() {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.data_);
                    }
                    return p1Var.p();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public DataOrBuilder getDataOrBuilder(int i10) {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        return this.data_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public List<? extends DataOrBuilder> getDataOrBuilderList() {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.data_);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.f14230g;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public boolean getEmbed() {
                    return this.embed_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public int getEpisode() {
                    return this.episode_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public int getExtProtoCount() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.size();
                    }
                    return p1Var.m();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public List<Any> getExtProtoList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.extProto_);
                    }
                    return p1Var.p();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public e getExtProtoOrBuilder(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public List<? extends e> getExtProtoOrBuilderList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getGenre() {
                    Object obj = this.genre_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.genre_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getGenreBytes() {
                    Object obj = this.genre_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.genre_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getId() {
                    Object obj = this.id_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.id_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.id_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getIsrc() {
                    Object obj = this.isrc_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.isrc_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getIsrcBytes() {
                    Object obj = this.isrc_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.isrc_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getKeywords() {
                    Object obj = this.keywords_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.keywords_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getKeywordsBytes() {
                    Object obj = this.keywords_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.keywords_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getLang() {
                    Object obj = this.lang_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.lang_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getLangBytes() {
                    Object obj = this.lang_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.lang_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public int getLen() {
                    return this.len_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public boolean getLive() {
                    return this.live_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public MediaRating getMrating() {
                    MediaRating valueOf = MediaRating.valueOf(this.mrating_);
                    if (valueOf == null) {
                        return MediaRating.UNRECOGNIZED;
                    }
                    return valueOf;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public int getMratingValue() {
                    return this.mrating_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ProductionQuality getProdq() {
                    ProductionQuality valueOf = ProductionQuality.valueOf(this.prodq_);
                    if (valueOf == null) {
                        return ProductionQuality.UNRECOGNIZED;
                    }
                    return valueOf;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public int getProdqValue() {
                    return this.prodq_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public Producer getProducer() {
                    t1<Producer, Producer.Builder, ProducerOrBuilder> t1Var = this.producerBuilder_;
                    if (t1Var == null) {
                        Producer producer = this.producer_;
                        if (producer == null) {
                            return Producer.getDefaultInstance();
                        }
                        return producer;
                    }
                    return t1Var.e();
                }

                public Producer.Builder getProducerBuilder() {
                    onChanged();
                    return getProducerFieldBuilder().d();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ProducerOrBuilder getProducerOrBuilder() {
                    t1<Producer, Producer.Builder, ProducerOrBuilder> t1Var = this.producerBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    Producer producer = this.producer_;
                    if (producer == null) {
                        return Producer.getDefaultInstance();
                    }
                    return producer;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getRating() {
                    Object obj = this.rating_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.rating_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getRatingBytes() {
                    Object obj = this.rating_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.rating_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getSeason() {
                    Object obj = this.season_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.season_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getSeasonBytes() {
                    Object obj = this.season_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.season_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getSeries() {
                    Object obj = this.series_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.series_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getSeriesBytes() {
                    Object obj = this.series_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.series_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public int getSrcrel() {
                    return this.srcrel_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getTitle() {
                    Object obj = this.title_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.title_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getTitleBytes() {
                    Object obj = this.title_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.title_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getUrating() {
                    Object obj = this.urating_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.urating_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getUratingBytes() {
                    Object obj = this.urating_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.urating_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public String getUrl() {
                    Object obj = this.url_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.url_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public ByteString getUrlBytes() {
                    Object obj = this.url_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.url_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public boolean hasExt() {
                    if (this.extBuilder_ == null && this.ext_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public boolean hasProducer() {
                    if (this.producerBuilder_ == null && this.producer_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.f14232h.d(Content.class, Builder.class);
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

                public Builder mergeProducer(Producer producer) {
                    t1<Producer, Producer.Builder, ProducerOrBuilder> t1Var = this.producerBuilder_;
                    if (t1Var == null) {
                        Producer producer2 = this.producer_;
                        if (producer2 != null) {
                            this.producer_ = Producer.newBuilder(producer2).mergeFrom(producer).buildPartial();
                        } else {
                            this.producer_ = producer;
                        }
                        onChanged();
                    } else {
                        t1Var.g(producer);
                    }
                    return this;
                }

                public Builder removeData(int i10) {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        ensureDataIsMutable();
                        this.data_.remove(i10);
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

                public Builder setAlbum(String str) {
                    str.getClass();
                    this.album_ = str;
                    onChanged();
                    return this;
                }

                public Builder setAlbumBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.album_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setArtist(String str) {
                    str.getClass();
                    this.artist_ = str;
                    onChanged();
                    return this;
                }

                public Builder setArtistBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.artist_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setCat(int i10, String str) {
                    str.getClass();
                    ensureCatIsMutable();
                    this.cat_.set(i10, str);
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

                public Builder setContext(ContentContext contentContext) {
                    contentContext.getClass();
                    this.context_ = contentContext.getNumber();
                    onChanged();
                    return this;
                }

                public Builder setContextValue(int i10) {
                    this.context_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setData(int i10, Data data) {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        data.getClass();
                        ensureDataIsMutable();
                        this.data_.set(i10, data);
                        onChanged();
                    } else {
                        p1Var.w(i10, data);
                    }
                    return this;
                }

                public Builder setEmbed(boolean z10) {
                    this.embed_ = z10;
                    onChanged();
                    return this;
                }

                public Builder setEpisode(int i10) {
                    this.episode_ = i10;
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

                public Builder setGenre(String str) {
                    str.getClass();
                    this.genre_ = str;
                    onChanged();
                    return this;
                }

                public Builder setGenreBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.genre_ = byteString;
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

                public Builder setIsrc(String str) {
                    str.getClass();
                    this.isrc_ = str;
                    onChanged();
                    return this;
                }

                public Builder setIsrcBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.isrc_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setKeywords(String str) {
                    str.getClass();
                    this.keywords_ = str;
                    onChanged();
                    return this;
                }

                public Builder setKeywordsBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.keywords_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setLang(String str) {
                    str.getClass();
                    this.lang_ = str;
                    onChanged();
                    return this;
                }

                public Builder setLangBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.lang_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setLen(int i10) {
                    this.len_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setLive(boolean z10) {
                    this.live_ = z10;
                    onChanged();
                    return this;
                }

                public Builder setMrating(MediaRating mediaRating) {
                    mediaRating.getClass();
                    this.mrating_ = mediaRating.getNumber();
                    onChanged();
                    return this;
                }

                public Builder setMratingValue(int i10) {
                    this.mrating_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setProdq(ProductionQuality productionQuality) {
                    productionQuality.getClass();
                    this.prodq_ = productionQuality.getNumber();
                    onChanged();
                    return this;
                }

                public Builder setProdqValue(int i10) {
                    this.prodq_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setProducer(Producer producer) {
                    t1<Producer, Producer.Builder, ProducerOrBuilder> t1Var = this.producerBuilder_;
                    if (t1Var == null) {
                        producer.getClass();
                        this.producer_ = producer;
                        onChanged();
                    } else {
                        t1Var.i(producer);
                    }
                    return this;
                }

                public Builder setRating(String str) {
                    str.getClass();
                    this.rating_ = str;
                    onChanged();
                    return this;
                }

                public Builder setRatingBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.rating_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setSeason(String str) {
                    str.getClass();
                    this.season_ = str;
                    onChanged();
                    return this;
                }

                public Builder setSeasonBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.season_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setSeries(String str) {
                    str.getClass();
                    this.series_ = str;
                    onChanged();
                    return this;
                }

                public Builder setSeriesBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.series_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setSrcrel(int i10) {
                    this.srcrel_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setTitle(String str) {
                    str.getClass();
                    this.title_ = str;
                    onChanged();
                    return this;
                }

                public Builder setTitleBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.title_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setUrating(String str) {
                    str.getClass();
                    this.urating_ = str;
                    onChanged();
                    return this;
                }

                public Builder setUratingBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.urating_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setUrl(String str) {
                    str.getClass();
                    this.url_ = str;
                    onChanged();
                    return this;
                }

                public Builder setUrlBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.url_ = byteString;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
                public m1 getCatList() {
                    return this.cat_.getUnmodifiableView();
                }

                private Builder() {
                    this.id_ = "";
                    this.title_ = "";
                    this.series_ = "";
                    this.season_ = "";
                    this.artist_ = "";
                    this.genre_ = "";
                    this.album_ = "";
                    this.isrc_ = "";
                    this.url_ = "";
                    this.cat_ = m0.f14459d;
                    this.cattax_ = 0;
                    this.prodq_ = 0;
                    this.context_ = 0;
                    this.rating_ = "";
                    this.urating_ = "";
                    this.mrating_ = 0;
                    this.keywords_ = "";
                    this.lang_ = "";
                    this.data_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Content build() {
                    Content buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Content buildPartial() {
                    Content content = new Content(this);
                    content.id_ = this.id_;
                    content.episode_ = this.episode_;
                    content.title_ = this.title_;
                    content.series_ = this.series_;
                    content.season_ = this.season_;
                    content.artist_ = this.artist_;
                    content.genre_ = this.genre_;
                    content.album_ = this.album_;
                    content.isrc_ = this.isrc_;
                    content.url_ = this.url_;
                    if ((this.bitField0_ & 1) != 0) {
                        this.cat_ = this.cat_.getUnmodifiableView();
                        this.bitField0_ &= -2;
                    }
                    content.cat_ = this.cat_;
                    content.cattax_ = this.cattax_;
                    content.prodq_ = this.prodq_;
                    content.context_ = this.context_;
                    content.rating_ = this.rating_;
                    content.urating_ = this.urating_;
                    content.mrating_ = this.mrating_;
                    content.keywords_ = this.keywords_;
                    content.live_ = this.live_;
                    content.srcrel_ = this.srcrel_;
                    content.len_ = this.len_;
                    content.lang_ = this.lang_;
                    content.embed_ = this.embed_;
                    t1<Producer, Producer.Builder, ProducerOrBuilder> t1Var = this.producerBuilder_;
                    if (t1Var == null) {
                        content.producer_ = this.producer_;
                    } else {
                        content.producer_ = t1Var.a();
                    }
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var != null) {
                        content.data_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 2) != 0) {
                            this.data_ = Collections.unmodifiableList(this.data_);
                            this.bitField0_ &= -3;
                        }
                        content.data_ = this.data_;
                    }
                    t1<Struct, Struct.Builder, x1> t1Var2 = this.extBuilder_;
                    if (t1Var2 == null) {
                        content.ext_ = this.ext_;
                    } else {
                        content.ext_ = t1Var2.a();
                    }
                    p1<Any, Any.Builder, e> p1Var2 = this.extProtoBuilder_;
                    if (p1Var2 != null) {
                        content.extProto_ = p1Var2.f();
                    } else {
                        if ((this.bitField0_ & 4) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -5;
                        }
                        content.extProto_ = this.extProto_;
                    }
                    onBuilt();
                    return content;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Content mo4630getDefaultInstanceForType() {
                    return Content.getDefaultInstance();
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

                public Data.Builder addDataBuilder(int i10) {
                    return getDataFieldBuilder().b(i10, Data.getDefaultInstance());
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
                    this.episode_ = 0;
                    this.title_ = "";
                    this.series_ = "";
                    this.season_ = "";
                    this.artist_ = "";
                    this.genre_ = "";
                    this.album_ = "";
                    this.isrc_ = "";
                    this.url_ = "";
                    this.cat_ = m0.f14459d;
                    this.bitField0_ &= -2;
                    this.cattax_ = 0;
                    this.prodq_ = 0;
                    this.context_ = 0;
                    this.rating_ = "";
                    this.urating_ = "";
                    this.mrating_ = 0;
                    this.keywords_ = "";
                    this.live_ = false;
                    this.srcrel_ = 0;
                    this.len_ = 0;
                    this.lang_ = "";
                    this.embed_ = false;
                    if (this.producerBuilder_ == null) {
                        this.producer_ = null;
                    } else {
                        this.producer_ = null;
                        this.producerBuilder_ = null;
                    }
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        this.data_ = Collections.emptyList();
                        this.bitField0_ &= -3;
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
                        this.bitField0_ &= -5;
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

                public Builder setProducer(Producer.Builder builder) {
                    t1<Producer, Producer.Builder, ProducerOrBuilder> t1Var = this.producerBuilder_;
                    if (t1Var == null) {
                        this.producer_ = builder.build();
                        onChanged();
                    } else {
                        t1Var.i(builder.build());
                    }
                    return this;
                }

                public Builder addData(int i10, Data data) {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        data.getClass();
                        ensureDataIsMutable();
                        this.data_.add(i10, data);
                        onChanged();
                    } else {
                        p1Var.d(i10, data);
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
                    if (message instanceof Content) {
                        return mergeFrom((Content) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder setData(int i10, Data.Builder builder) {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        ensureDataIsMutable();
                        this.data_.set(i10, builder.build());
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

                public Builder mergeFrom(Content content) {
                    if (content == Content.getDefaultInstance()) {
                        return this;
                    }
                    if (!content.getId().isEmpty()) {
                        this.id_ = content.id_;
                        onChanged();
                    }
                    if (content.getEpisode() != 0) {
                        setEpisode(content.getEpisode());
                    }
                    if (!content.getTitle().isEmpty()) {
                        this.title_ = content.title_;
                        onChanged();
                    }
                    if (!content.getSeries().isEmpty()) {
                        this.series_ = content.series_;
                        onChanged();
                    }
                    if (!content.getSeason().isEmpty()) {
                        this.season_ = content.season_;
                        onChanged();
                    }
                    if (!content.getArtist().isEmpty()) {
                        this.artist_ = content.artist_;
                        onChanged();
                    }
                    if (!content.getGenre().isEmpty()) {
                        this.genre_ = content.genre_;
                        onChanged();
                    }
                    if (!content.getAlbum().isEmpty()) {
                        this.album_ = content.album_;
                        onChanged();
                    }
                    if (!content.getIsrc().isEmpty()) {
                        this.isrc_ = content.isrc_;
                        onChanged();
                    }
                    if (!content.getUrl().isEmpty()) {
                        this.url_ = content.url_;
                        onChanged();
                    }
                    if (!content.cat_.isEmpty()) {
                        if (this.cat_.isEmpty()) {
                            this.cat_ = content.cat_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureCatIsMutable();
                            this.cat_.addAll(content.cat_);
                        }
                        onChanged();
                    }
                    if (content.cattax_ != 0) {
                        setCattaxValue(content.getCattaxValue());
                    }
                    if (content.prodq_ != 0) {
                        setProdqValue(content.getProdqValue());
                    }
                    if (content.context_ != 0) {
                        setContextValue(content.getContextValue());
                    }
                    if (!content.getRating().isEmpty()) {
                        this.rating_ = content.rating_;
                        onChanged();
                    }
                    if (!content.getUrating().isEmpty()) {
                        this.urating_ = content.urating_;
                        onChanged();
                    }
                    if (content.mrating_ != 0) {
                        setMratingValue(content.getMratingValue());
                    }
                    if (!content.getKeywords().isEmpty()) {
                        this.keywords_ = content.keywords_;
                        onChanged();
                    }
                    if (content.getLive()) {
                        setLive(content.getLive());
                    }
                    if (content.getSrcrel() != 0) {
                        setSrcrel(content.getSrcrel());
                    }
                    if (content.getLen() != 0) {
                        setLen(content.getLen());
                    }
                    if (!content.getLang().isEmpty()) {
                        this.lang_ = content.lang_;
                        onChanged();
                    }
                    if (content.getEmbed()) {
                        setEmbed(content.getEmbed());
                    }
                    if (content.hasProducer()) {
                        mergeProducer(content.getProducer());
                    }
                    if (this.dataBuilder_ == null) {
                        if (!content.data_.isEmpty()) {
                            if (this.data_.isEmpty()) {
                                this.data_ = content.data_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureDataIsMutable();
                                this.data_.addAll(content.data_);
                            }
                            onChanged();
                        }
                    } else if (!content.data_.isEmpty()) {
                        if (!this.dataBuilder_.t()) {
                            this.dataBuilder_.a(content.data_);
                        } else {
                            this.dataBuilder_.h();
                            this.dataBuilder_ = null;
                            this.data_ = content.data_;
                            this.bitField0_ &= -3;
                            this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                        }
                    }
                    if (content.hasExt()) {
                        mergeExt(content.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!content.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = content.extProto_;
                                this.bitField0_ &= -5;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(content.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!content.extProto_.isEmpty()) {
                        if (!this.extProtoBuilder_.t()) {
                            this.extProtoBuilder_.a(content.extProto_);
                        } else {
                            this.extProtoBuilder_.h();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = content.extProto_;
                            this.bitField0_ &= -5;
                            this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) content).unknownFields);
                    onChanged();
                    return this;
                }

                public Builder addData(Data.Builder builder) {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        ensureDataIsMutable();
                        this.data_.add(builder.build());
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

                public Builder addData(int i10, Data.Builder builder) {
                    p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                    if (p1Var == null) {
                        ensureDataIsMutable();
                        this.data_.add(i10, builder.build());
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
                    this.id_ = "";
                    this.title_ = "";
                    this.series_ = "";
                    this.season_ = "";
                    this.artist_ = "";
                    this.genre_ = "";
                    this.album_ = "";
                    this.isrc_ = "";
                    this.url_ = "";
                    this.cat_ = m0.f14459d;
                    this.cattax_ = 0;
                    this.prodq_ = 0;
                    this.context_ = 0;
                    this.rating_ = "";
                    this.urating_ = "";
                    this.mrating_ = 0;
                    this.keywords_ = "";
                    this.lang_ = "";
                    this.data_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.adcom.Context.App.Content.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.App.Content.access$7200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.adcom.Context$App$Content r3 = (com.explorestack.protobuf.adcom.Context.App.Content) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.adcom.Context$App$Content r4 = (com.explorestack.protobuf.adcom.Context.App.Content) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.App.Content.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$App$Content$Builder");
                }
            }

            /* loaded from: classes3.dex */
            public static final class Producer extends GeneratedMessageV3 implements ProducerOrBuilder {
                public static final int CATTAX_FIELD_NUMBER = 5;
                public static final int CAT_FIELD_NUMBER = 4;
                public static final int DOMAIN_FIELD_NUMBER = 3;
                public static final int EXT_FIELD_NUMBER = 7;
                public static final int EXT_PROTO_FIELD_NUMBER = 6;
                public static final int ID_FIELD_NUMBER = 1;
                public static final int NAME_FIELD_NUMBER = 2;
                private static final long serialVersionUID = 0;
                private n0 cat_;
                private int cattax_;
                private volatile Object domain_;
                private List<Any> extProto_;
                private Struct ext_;
                private volatile Object id_;
                private byte memoizedIsInitialized;
                private volatile Object name_;
                private static final Producer DEFAULT_INSTANCE = new Producer();
                private static final j1<Producer> PARSER = new com.explorestack.protobuf.b<Producer>() { // from class: com.explorestack.protobuf.adcom.Context.App.Content.Producer.1
                    @Override // com.explorestack.protobuf.j1
                    public Producer parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                        return new Producer(nVar, yVar);
                    }
                };

                /* loaded from: classes3.dex */
                public static final class Builder extends GeneratedMessageV3.b<Builder> implements ProducerOrBuilder {
                    private int bitField0_;
                    private n0 cat_;
                    private int cattax_;
                    private Object domain_;
                    private t1<Struct, Struct.Builder, x1> extBuilder_;
                    private p1<Any, Any.Builder, e> extProtoBuilder_;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private Object id_;
                    private Object name_;

                    private void ensureCatIsMutable() {
                        if ((this.bitField0_ & 1) == 0) {
                            this.cat_ = new m0(this.cat_);
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
                        return b.f14234i;
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

                    public Builder addAllCat(Iterable<String> iterable) {
                        ensureCatIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.cat_);
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

                    public Builder addCat(String str) {
                        str.getClass();
                        ensureCatIsMutable();
                        this.cat_.add(str);
                        onChanged();
                        return this;
                    }

                    public Builder addCatBytes(ByteString byteString) {
                        byteString.getClass();
                        com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                        ensureCatIsMutable();
                        this.cat_.b(byteString);
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

                    public Builder clearCat() {
                        this.cat_ = m0.f14459d;
                        this.bitField0_ &= -2;
                        onChanged();
                        return this;
                    }

                    public Builder clearCattax() {
                        this.cattax_ = 0;
                        onChanged();
                        return this;
                    }

                    public Builder clearDomain() {
                        this.domain_ = Producer.getDefaultInstance().getDomain();
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

                    public Builder clearId() {
                        this.id_ = Producer.getDefaultInstance().getId();
                        onChanged();
                        return this;
                    }

                    public Builder clearName() {
                        this.name_ = Producer.getDefaultInstance().getName();
                        onChanged();
                        return this;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public String getCat(int i10) {
                        return this.cat_.get(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public ByteString getCatBytes(int i10) {
                        return this.cat_.getByteString(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public int getCatCount() {
                        return this.cat_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public CategoryTaxonomy getCattax() {
                        CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                        if (valueOf == null) {
                            return CategoryTaxonomy.UNRECOGNIZED;
                        }
                        return valueOf;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public int getCattaxValue() {
                        return this.cattax_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public Descriptors.Descriptor getDescriptorForType() {
                        return b.f14234i;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public String getDomain() {
                        Object obj = this.domain_;
                        if (!(obj instanceof String)) {
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.domain_ = stringUtf8;
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public ByteString getDomainBytes() {
                        Object obj = this.domain_;
                        if (obj instanceof String) {
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.domain_ = copyFromUtf8;
                            return copyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public int getExtProtoCount() {
                        p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                        if (p1Var == null) {
                            return this.extProto_.size();
                        }
                        return p1Var.m();
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public List<Any> getExtProtoList() {
                        p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                        if (p1Var == null) {
                            return Collections.unmodifiableList(this.extProto_);
                        }
                        return p1Var.p();
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public e getExtProtoOrBuilder(int i10) {
                        p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                        if (p1Var == null) {
                            return this.extProto_.get(i10);
                        }
                        return p1Var.q(i10);
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public List<? extends e> getExtProtoOrBuilderList() {
                        p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                        if (p1Var != null) {
                            return p1Var.r();
                        }
                        return Collections.unmodifiableList(this.extProto_);
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public String getId() {
                        Object obj = this.id_;
                        if (!(obj instanceof String)) {
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.id_ = stringUtf8;
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public ByteString getIdBytes() {
                        Object obj = this.id_;
                        if (obj instanceof String) {
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.id_ = copyFromUtf8;
                            return copyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public String getName() {
                        Object obj = this.name_;
                        if (!(obj instanceof String)) {
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.name_ = stringUtf8;
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public ByteString getNameBytes() {
                        Object obj = this.name_;
                        if (obj instanceof String) {
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.name_ = copyFromUtf8;
                            return copyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public boolean hasExt() {
                        if (this.extBuilder_ == null && this.ext_ == null) {
                            return false;
                        }
                        return true;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                        return b.f14236j.d(Producer.class, Builder.class);
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

                    public Builder setCat(int i10, String str) {
                        str.getClass();
                        ensureCatIsMutable();
                        this.cat_.set(i10, str);
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

                    public Builder setDomain(String str) {
                        str.getClass();
                        this.domain_ = str;
                        onChanged();
                        return this;
                    }

                    public Builder setDomainBytes(ByteString byteString) {
                        byteString.getClass();
                        com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                        this.domain_ = byteString;
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

                    public Builder setName(String str) {
                        str.getClass();
                        this.name_ = str;
                        onChanged();
                        return this;
                    }

                    public Builder setNameBytes(ByteString byteString) {
                        byteString.getClass();
                        com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                        this.name_ = byteString;
                        onChanged();
                        return this;
                    }

                    @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                    public m1 getCatList() {
                        return this.cat_.getUnmodifiableView();
                    }

                    private Builder() {
                        this.id_ = "";
                        this.name_ = "";
                        this.domain_ = "";
                        this.cat_ = m0.f14459d;
                        this.cattax_ = 0;
                        this.extProto_ = Collections.emptyList();
                        maybeForceBuilderInitialization();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                    public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public Producer build() {
                        Producer buildPartial = buildPartial();
                        if (buildPartial.isInitialized()) {
                            return buildPartial;
                        }
                        throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public Producer buildPartial() {
                        Producer producer = new Producer(this);
                        producer.id_ = this.id_;
                        producer.name_ = this.name_;
                        producer.domain_ = this.domain_;
                        if ((this.bitField0_ & 1) != 0) {
                            this.cat_ = this.cat_.getUnmodifiableView();
                            this.bitField0_ &= -2;
                        }
                        producer.cat_ = this.cat_;
                        producer.cattax_ = this.cattax_;
                        t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                        if (t1Var == null) {
                            producer.ext_ = this.ext_;
                        } else {
                            producer.ext_ = t1Var.a();
                        }
                        p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                        if (p1Var != null) {
                            producer.extProto_ = p1Var.f();
                        } else {
                            if ((this.bitField0_ & 2) != 0) {
                                this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                this.bitField0_ &= -3;
                            }
                            producer.extProto_ = this.extProto_;
                        }
                        onBuilt();
                        return producer;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                    public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                        return (Builder) super.clearField(fieldDescriptor);
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    /* renamed from: getDefaultInstanceForType */
                    public Producer mo4630getDefaultInstanceForType() {
                        return Producer.getDefaultInstance();
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
                        this.name_ = "";
                        this.domain_ = "";
                        this.cat_ = m0.f14459d;
                        this.bitField0_ &= -2;
                        this.cattax_ = 0;
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
                        if (message instanceof Producer) {
                            return mergeFrom((Producer) message);
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

                    public Builder mergeFrom(Producer producer) {
                        if (producer == Producer.getDefaultInstance()) {
                            return this;
                        }
                        if (!producer.getId().isEmpty()) {
                            this.id_ = producer.id_;
                            onChanged();
                        }
                        if (!producer.getName().isEmpty()) {
                            this.name_ = producer.name_;
                            onChanged();
                        }
                        if (!producer.getDomain().isEmpty()) {
                            this.domain_ = producer.domain_;
                            onChanged();
                        }
                        if (!producer.cat_.isEmpty()) {
                            if (this.cat_.isEmpty()) {
                                this.cat_ = producer.cat_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureCatIsMutable();
                                this.cat_.addAll(producer.cat_);
                            }
                            onChanged();
                        }
                        if (producer.cattax_ != 0) {
                            setCattaxValue(producer.getCattaxValue());
                        }
                        if (producer.hasExt()) {
                            mergeExt(producer.getExt());
                        }
                        if (this.extProtoBuilder_ == null) {
                            if (!producer.extProto_.isEmpty()) {
                                if (this.extProto_.isEmpty()) {
                                    this.extProto_ = producer.extProto_;
                                    this.bitField0_ &= -3;
                                } else {
                                    ensureExtProtoIsMutable();
                                    this.extProto_.addAll(producer.extProto_);
                                }
                                onChanged();
                            }
                        } else if (!producer.extProto_.isEmpty()) {
                            if (!this.extProtoBuilder_.t()) {
                                this.extProtoBuilder_.a(producer.extProto_);
                            } else {
                                this.extProtoBuilder_.h();
                                this.extProtoBuilder_ = null;
                                this.extProto_ = producer.extProto_;
                                this.bitField0_ &= -3;
                                this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                            }
                        }
                        mergeUnknownFields(((GeneratedMessageV3) producer).unknownFields);
                        onChanged();
                        return this;
                    }

                    private Builder(GeneratedMessageV3.c cVar) {
                        super(cVar);
                        this.id_ = "";
                        this.name_ = "";
                        this.domain_ = "";
                        this.cat_ = m0.f14459d;
                        this.cattax_ = 0;
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
                    public com.explorestack.protobuf.adcom.Context.App.Content.Producer.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                        /*
                            r2 = this;
                            r0 = 0
                            com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.App.Content.Producer.access$3200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                            java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                            com.explorestack.protobuf.adcom.Context$App$Content$Producer r3 = (com.explorestack.protobuf.adcom.Context.App.Content.Producer) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                            com.explorestack.protobuf.adcom.Context$App$Content$Producer r4 = (com.explorestack.protobuf.adcom.Context.App.Content.Producer) r4     // Catch: java.lang.Throwable -> L11
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
                        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.App.Content.Producer.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$App$Content$Producer$Builder");
                    }
                }

                public static Producer getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.f14234i;
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Producer parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (Producer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static Producer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static j1<Producer> parser() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof Producer)) {
                        return super.equals(obj);
                    }
                    Producer producer = (Producer) obj;
                    if (!getId().equals(producer.getId()) || !getName().equals(producer.getName()) || !getDomain().equals(producer.getDomain()) || !getCatList().equals(producer.getCatList()) || this.cattax_ != producer.cattax_ || hasExt() != producer.hasExt()) {
                        return false;
                    }
                    if ((!hasExt() || getExt().equals(producer.getExt())) && getExtProtoList().equals(producer.getExtProtoList()) && this.unknownFields.equals(producer.unknownFields)) {
                        return true;
                    }
                    return false;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public String getCat(int i10) {
                    return this.cat_.get(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public ByteString getCatBytes(int i10) {
                    return this.cat_.getByteString(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public int getCatCount() {
                    return this.cat_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public CategoryTaxonomy getCattax() {
                    CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                    if (valueOf == null) {
                        return CategoryTaxonomy.UNRECOGNIZED;
                    }
                    return valueOf;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public int getCattaxValue() {
                    return this.cattax_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public String getDomain() {
                    Object obj = this.domain_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.domain_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public ByteString getDomainBytes() {
                    Object obj = this.domain_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.domain_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public Struct getExt() {
                    Struct struct = this.ext_;
                    if (struct == null) {
                        return Struct.getDefaultInstance();
                    }
                    return struct;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public x1 getExtOrBuilder() {
                    return getExt();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public Any getExtProto(int i10) {
                    return this.extProto_.get(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public int getExtProtoCount() {
                    return this.extProto_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public List<Any> getExtProtoList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public e getExtProtoOrBuilder(int i10) {
                    return this.extProto_.get(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public List<? extends e> getExtProtoOrBuilderList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public String getId() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.id_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public String getName() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.name_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public ByteString getNameBytes() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.name_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public j1<Producer> getParserForType() {
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
                    if (!getNameBytes().isEmpty()) {
                        i10 += GeneratedMessageV3.computeStringSize(2, this.name_);
                    }
                    if (!getDomainBytes().isEmpty()) {
                        i10 += GeneratedMessageV3.computeStringSize(3, this.domain_);
                    }
                    int i12 = 0;
                    for (int i13 = 0; i13 < this.cat_.size(); i13++) {
                        i12 += GeneratedMessageV3.computeStringSizeNoTag(this.cat_.getRaw(i13));
                    }
                    int size = i10 + i12 + getCatList().size();
                    if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                        size += CodedOutputStream.l(5, this.cattax_);
                    }
                    for (int i14 = 0; i14 < this.extProto_.size(); i14++) {
                        size += CodedOutputStream.G(6, this.extProto_.get(i14));
                    }
                    if (this.ext_ != null) {
                        size += CodedOutputStream.G(7, getExt());
                    }
                    int serializedSize = size + this.unknownFields.getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                public final j2 getUnknownFields() {
                    return this.unknownFields;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
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
                    int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getName().hashCode()) * 37) + 3) * 53) + getDomain().hashCode();
                    if (getCatCount() > 0) {
                        hashCode = (((hashCode * 37) + 4) * 53) + getCatList().hashCode();
                    }
                    int i11 = (((hashCode * 37) + 5) * 53) + this.cattax_;
                    if (hasExt()) {
                        i11 = (((i11 * 37) + 7) * 53) + getExt().hashCode();
                    }
                    if (getExtProtoCount() > 0) {
                        i11 = (((i11 * 37) + 6) * 53) + getExtProtoList().hashCode();
                    }
                    int hashCode2 = (i11 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2;
                    return hashCode2;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.f14236j.d(Producer.class, Builder.class);
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
                    return new Producer();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    if (!getIdBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
                    }
                    if (!getNameBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
                    }
                    if (!getDomainBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 3, this.domain_);
                    }
                    for (int i10 = 0; i10 < this.cat_.size(); i10++) {
                        GeneratedMessageV3.writeString(codedOutputStream, 4, this.cat_.getRaw(i10));
                    }
                    if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                        codedOutputStream.v0(5, this.cattax_);
                    }
                    for (int i11 = 0; i11 < this.extProto_.size(); i11++) {
                        codedOutputStream.L0(6, this.extProto_.get(i11));
                    }
                    if (this.ext_ != null) {
                        codedOutputStream.L0(7, getExt());
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }

                public static Builder newBuilder(Producer producer) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(producer);
                }

                public static Producer parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, yVar);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.Content.ProducerOrBuilder
                public m1 getCatList() {
                    return this.cat_;
                }

                private Producer(GeneratedMessageV3.b<?> bVar) {
                    super(bVar);
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static Producer parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                    return (Producer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
                }

                public static Producer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Producer mo4630getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                public static Producer parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, yVar);
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public Builder newBuilderForType() {
                    return newBuilder();
                }

                private Producer() {
                    this.memoizedIsInitialized = (byte) -1;
                    this.id_ = "";
                    this.name_ = "";
                    this.domain_ = "";
                    this.cat_ = m0.f14459d;
                    this.cattax_ = 0;
                    this.extProto_ = Collections.emptyList();
                }

                public static Producer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.explorestack.protobuf.GeneratedMessageV3
                public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                    return new Builder(cVar);
                }

                public static Producer parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, yVar);
                }

                public static Producer parseFrom(InputStream inputStream) throws IOException {
                    return (Producer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                public static Producer parseFrom(InputStream inputStream, y yVar) throws IOException {
                    return (Producer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
                }

                public static Producer parseFrom(n nVar) throws IOException {
                    return (Producer) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
                }

                /* JADX WARN: Multi-variable type inference failed */
                private Producer(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                    } else if (K == 18) {
                                        this.name_ = nVar.J();
                                    } else if (K == 26) {
                                        this.domain_ = nVar.J();
                                    } else if (K == 34) {
                                        String J = nVar.J();
                                        if (!(z11 & true)) {
                                            this.cat_ = new m0();
                                            z11 |= true;
                                        }
                                        this.cat_.add(J);
                                    } else if (K == 40) {
                                        this.cattax_ = nVar.t();
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
                                this.cat_ = this.cat_.getUnmodifiableView();
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
                        this.cat_ = this.cat_.getUnmodifiableView();
                    }
                    if (z11 & true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                }

                public static Producer parseFrom(n nVar, y yVar) throws IOException {
                    return (Producer) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
                }
            }

            /* loaded from: classes3.dex */
            public interface ProducerOrBuilder extends MessageOrBuilder {
                String getCat(int i10);

                ByteString getCatBytes(int i10);

                int getCatCount();

                List<String> getCatList();

                CategoryTaxonomy getCattax();

                int getCattaxValue();

                @Override // com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

                String getDomain();

                ByteString getDomainBytes();

                Struct getExt();

                x1 getExtOrBuilder();

                Any getExtProto(int i10);

                int getExtProtoCount();

                List<Any> getExtProtoList();

                e getExtProtoOrBuilder(int i10);

                List<? extends e> getExtProtoOrBuilderList();

                String getId();

                ByteString getIdBytes();

                String getName();

                ByteString getNameBytes();

                boolean hasExt();

                @Override // com.explorestack.protobuf.MessageOrBuilder
                /* synthetic */ boolean isInitialized();
            }

            public static Content getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14230g;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Content parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Content) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Content parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Content> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Content)) {
                    return super.equals(obj);
                }
                Content content = (Content) obj;
                if (!getId().equals(content.getId()) || getEpisode() != content.getEpisode() || !getTitle().equals(content.getTitle()) || !getSeries().equals(content.getSeries()) || !getSeason().equals(content.getSeason()) || !getArtist().equals(content.getArtist()) || !getGenre().equals(content.getGenre()) || !getAlbum().equals(content.getAlbum()) || !getIsrc().equals(content.getIsrc()) || !getUrl().equals(content.getUrl()) || !getCatList().equals(content.getCatList()) || this.cattax_ != content.cattax_ || this.prodq_ != content.prodq_ || this.context_ != content.context_ || !getRating().equals(content.getRating()) || !getUrating().equals(content.getUrating()) || this.mrating_ != content.mrating_ || !getKeywords().equals(content.getKeywords()) || getLive() != content.getLive() || getSrcrel() != content.getSrcrel() || getLen() != content.getLen() || !getLang().equals(content.getLang()) || getEmbed() != content.getEmbed() || hasProducer() != content.hasProducer()) {
                    return false;
                }
                if ((hasProducer() && !getProducer().equals(content.getProducer())) || !getDataList().equals(content.getDataList()) || hasExt() != content.hasExt()) {
                    return false;
                }
                if ((!hasExt() || getExt().equals(content.getExt())) && getExtProtoList().equals(content.getExtProtoList()) && this.unknownFields.equals(content.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getAlbum() {
                Object obj = this.album_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.album_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getAlbumBytes() {
                Object obj = this.album_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.album_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getArtist() {
                Object obj = this.artist_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.artist_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getArtistBytes() {
                Object obj = this.artist_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.artist_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getCat(int i10) {
                return this.cat_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getCatBytes(int i10) {
                return this.cat_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public int getCatCount() {
                return this.cat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public CategoryTaxonomy getCattax() {
                CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                if (valueOf == null) {
                    return CategoryTaxonomy.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public int getCattaxValue() {
                return this.cattax_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ContentContext getContext() {
                ContentContext valueOf = ContentContext.valueOf(this.context_);
                if (valueOf == null) {
                    return ContentContext.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public int getContextValue() {
                return this.context_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public Data getData(int i10) {
                return this.data_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public int getDataCount() {
                return this.data_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public List<Data> getDataList() {
                return this.data_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public DataOrBuilder getDataOrBuilder(int i10) {
                return this.data_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public List<? extends DataOrBuilder> getDataOrBuilderList() {
                return this.data_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public boolean getEmbed() {
                return this.embed_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public int getEpisode() {
                return this.episode_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public Struct getExt() {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public x1 getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public Any getExtProto(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getGenre() {
                Object obj = this.genre_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.genre_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getGenreBytes() {
                Object obj = this.genre_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.genre_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getIsrc() {
                Object obj = this.isrc_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.isrc_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getIsrcBytes() {
                Object obj = this.isrc_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.isrc_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getKeywords() {
                Object obj = this.keywords_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.keywords_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getKeywordsBytes() {
                Object obj = this.keywords_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.keywords_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getLang() {
                Object obj = this.lang_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.lang_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getLangBytes() {
                Object obj = this.lang_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.lang_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public int getLen() {
                return this.len_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public boolean getLive() {
                return this.live_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public MediaRating getMrating() {
                MediaRating valueOf = MediaRating.valueOf(this.mrating_);
                if (valueOf == null) {
                    return MediaRating.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public int getMratingValue() {
                return this.mrating_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Content> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ProductionQuality getProdq() {
                ProductionQuality valueOf = ProductionQuality.valueOf(this.prodq_);
                if (valueOf == null) {
                    return ProductionQuality.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public int getProdqValue() {
                return this.prodq_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public Producer getProducer() {
                Producer producer = this.producer_;
                if (producer == null) {
                    return Producer.getDefaultInstance();
                }
                return producer;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ProducerOrBuilder getProducerOrBuilder() {
                return getProducer();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getRating() {
                Object obj = this.rating_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.rating_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getRatingBytes() {
                Object obj = this.rating_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.rating_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getSeason() {
                Object obj = this.season_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.season_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getSeasonBytes() {
                Object obj = this.season_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.season_ = copyFromUtf8;
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
                if (!getIdBytes().isEmpty()) {
                    i10 = GeneratedMessageV3.computeStringSize(1, this.id_);
                } else {
                    i10 = 0;
                }
                int i12 = this.episode_;
                if (i12 != 0) {
                    i10 += CodedOutputStream.Y(2, i12);
                }
                if (!getTitleBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(3, this.title_);
                }
                if (!getSeriesBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(4, this.series_);
                }
                if (!getSeasonBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(5, this.season_);
                }
                if (!getArtistBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(6, this.artist_);
                }
                if (!getGenreBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(7, this.genre_);
                }
                if (!getAlbumBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(8, this.album_);
                }
                if (!getIsrcBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(9, this.isrc_);
                }
                if (!getUrlBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(10, this.url_);
                }
                int i13 = 0;
                for (int i14 = 0; i14 < this.cat_.size(); i14++) {
                    i13 += GeneratedMessageV3.computeStringSizeNoTag(this.cat_.getRaw(i14));
                }
                int size = i10 + i13 + getCatList().size();
                if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                    size += CodedOutputStream.l(12, this.cattax_);
                }
                if (this.prodq_ != ProductionQuality.PRODUCTION_QUALITY_INVALID.getNumber()) {
                    size += CodedOutputStream.l(13, this.prodq_);
                }
                if (this.context_ != ContentContext.CONTENT_CONTEXT_INVALID.getNumber()) {
                    size += CodedOutputStream.l(14, this.context_);
                }
                if (!getRatingBytes().isEmpty()) {
                    size += GeneratedMessageV3.computeStringSize(15, this.rating_);
                }
                if (!getUratingBytes().isEmpty()) {
                    size += GeneratedMessageV3.computeStringSize(16, this.urating_);
                }
                if (this.mrating_ != MediaRating.MEDIA_RATING_INVALID.getNumber()) {
                    size += CodedOutputStream.l(17, this.mrating_);
                }
                if (!getKeywordsBytes().isEmpty()) {
                    size += GeneratedMessageV3.computeStringSize(18, this.keywords_);
                }
                boolean z10 = this.live_;
                if (z10) {
                    size += CodedOutputStream.e(19, z10);
                }
                int i15 = this.srcrel_;
                if (i15 != 0) {
                    size += CodedOutputStream.Y(20, i15);
                }
                int i16 = this.len_;
                if (i16 != 0) {
                    size += CodedOutputStream.Y(21, i16);
                }
                if (!getLangBytes().isEmpty()) {
                    size += GeneratedMessageV3.computeStringSize(22, this.lang_);
                }
                boolean z11 = this.embed_;
                if (z11) {
                    size += CodedOutputStream.e(23, z11);
                }
                if (this.producer_ != null) {
                    size += CodedOutputStream.G(24, getProducer());
                }
                for (int i17 = 0; i17 < this.data_.size(); i17++) {
                    size += CodedOutputStream.G(25, this.data_.get(i17));
                }
                for (int i18 = 0; i18 < this.extProto_.size(); i18++) {
                    size += CodedOutputStream.G(26, this.extProto_.get(i18));
                }
                if (this.ext_ != null) {
                    size += CodedOutputStream.G(27, getExt());
                }
                int serializedSize = size + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getSeries() {
                Object obj = this.series_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.series_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getSeriesBytes() {
                Object obj = this.series_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.series_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public int getSrcrel() {
                return this.srcrel_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getTitle() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.title_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getTitleBytes() {
                Object obj = this.title_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.title_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getUrating() {
                Object obj = this.urating_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.urating_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getUratingBytes() {
                Object obj = this.urating_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.urating_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public String getUrl() {
                Object obj = this.url_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.url_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public ByteString getUrlBytes() {
                Object obj = this.url_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.url_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public boolean hasExt() {
                if (this.ext_ != null) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public boolean hasProducer() {
                if (this.producer_ != null) {
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
                int hashCode = ((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getEpisode()) * 37) + 3) * 53) + getTitle().hashCode()) * 37) + 4) * 53) + getSeries().hashCode()) * 37) + 5) * 53) + getSeason().hashCode()) * 37) + 6) * 53) + getArtist().hashCode()) * 37) + 7) * 53) + getGenre().hashCode()) * 37) + 8) * 53) + getAlbum().hashCode()) * 37) + 9) * 53) + getIsrc().hashCode()) * 37) + 10) * 53) + getUrl().hashCode();
                if (getCatCount() > 0) {
                    hashCode = (((hashCode * 37) + 11) * 53) + getCatList().hashCode();
                }
                int hashCode2 = (((((((((((((((((((((((((((((((((((((((((((((((hashCode * 37) + 12) * 53) + this.cattax_) * 37) + 13) * 53) + this.prodq_) * 37) + 14) * 53) + this.context_) * 37) + 15) * 53) + getRating().hashCode()) * 37) + 16) * 53) + getUrating().hashCode()) * 37) + 17) * 53) + this.mrating_) * 37) + 18) * 53) + getKeywords().hashCode()) * 37) + 19) * 53) + i0.d(getLive())) * 37) + 20) * 53) + getSrcrel()) * 37) + 21) * 53) + getLen()) * 37) + 22) * 53) + getLang().hashCode()) * 37) + 23) * 53) + i0.d(getEmbed());
                if (hasProducer()) {
                    hashCode2 = (((hashCode2 * 37) + 24) * 53) + getProducer().hashCode();
                }
                if (getDataCount() > 0) {
                    hashCode2 = (((hashCode2 * 37) + 25) * 53) + getDataList().hashCode();
                }
                if (hasExt()) {
                    hashCode2 = (((hashCode2 * 37) + 27) * 53) + getExt().hashCode();
                }
                if (getExtProtoCount() > 0) {
                    hashCode2 = (((hashCode2 * 37) + 26) * 53) + getExtProtoList().hashCode();
                }
                int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14232h.d(Content.class, Builder.class);
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
                return new Content();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getIdBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
                }
                int i10 = this.episode_;
                if (i10 != 0) {
                    codedOutputStream.c1(2, i10);
                }
                if (!getTitleBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.title_);
                }
                if (!getSeriesBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 4, this.series_);
                }
                if (!getSeasonBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 5, this.season_);
                }
                if (!getArtistBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 6, this.artist_);
                }
                if (!getGenreBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 7, this.genre_);
                }
                if (!getAlbumBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 8, this.album_);
                }
                if (!getIsrcBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 9, this.isrc_);
                }
                if (!getUrlBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 10, this.url_);
                }
                for (int i11 = 0; i11 < this.cat_.size(); i11++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 11, this.cat_.getRaw(i11));
                }
                if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                    codedOutputStream.v0(12, this.cattax_);
                }
                if (this.prodq_ != ProductionQuality.PRODUCTION_QUALITY_INVALID.getNumber()) {
                    codedOutputStream.v0(13, this.prodq_);
                }
                if (this.context_ != ContentContext.CONTENT_CONTEXT_INVALID.getNumber()) {
                    codedOutputStream.v0(14, this.context_);
                }
                if (!getRatingBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 15, this.rating_);
                }
                if (!getUratingBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 16, this.urating_);
                }
                if (this.mrating_ != MediaRating.MEDIA_RATING_INVALID.getNumber()) {
                    codedOutputStream.v0(17, this.mrating_);
                }
                if (!getKeywordsBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 18, this.keywords_);
                }
                boolean z10 = this.live_;
                if (z10) {
                    codedOutputStream.n0(19, z10);
                }
                int i12 = this.srcrel_;
                if (i12 != 0) {
                    codedOutputStream.c1(20, i12);
                }
                int i13 = this.len_;
                if (i13 != 0) {
                    codedOutputStream.c1(21, i13);
                }
                if (!getLangBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 22, this.lang_);
                }
                boolean z11 = this.embed_;
                if (z11) {
                    codedOutputStream.n0(23, z11);
                }
                if (this.producer_ != null) {
                    codedOutputStream.L0(24, getProducer());
                }
                for (int i14 = 0; i14 < this.data_.size(); i14++) {
                    codedOutputStream.L0(25, this.data_.get(i14));
                }
                for (int i15 = 0; i15 < this.extProto_.size(); i15++) {
                    codedOutputStream.L0(26, this.extProto_.get(i15));
                }
                if (this.ext_ != null) {
                    codedOutputStream.L0(27, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            public static Builder newBuilder(Content content) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(content);
            }

            public static Content parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ContentOrBuilder
            public m1 getCatList() {
                return this.cat_;
            }

            private Content(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Content parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Content) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Content parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Content mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Content parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private Content() {
                this.memoizedIsInitialized = (byte) -1;
                this.id_ = "";
                this.title_ = "";
                this.series_ = "";
                this.season_ = "";
                this.artist_ = "";
                this.genre_ = "";
                this.album_ = "";
                this.isrc_ = "";
                this.url_ = "";
                this.cat_ = m0.f14459d;
                this.cattax_ = 0;
                this.prodq_ = 0;
                this.context_ = 0;
                this.rating_ = "";
                this.urating_ = "";
                this.mrating_ = 0;
                this.keywords_ = "";
                this.lang_ = "";
                this.data_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
            }

            public static Content parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Content parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Content parseFrom(InputStream inputStream) throws IOException {
                return (Content) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Content parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Content) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static Content parseFrom(n nVar) throws IOException {
                return (Content) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static Content parseFrom(n nVar, y yVar) throws IOException {
                return (Content) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Content(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                    this.episode_ = nVar.L();
                                    continue;
                                case 26:
                                    this.title_ = nVar.J();
                                    continue;
                                case 34:
                                    this.series_ = nVar.J();
                                    continue;
                                case 42:
                                    this.season_ = nVar.J();
                                    continue;
                                case 50:
                                    this.artist_ = nVar.J();
                                    continue;
                                case 58:
                                    this.genre_ = nVar.J();
                                    continue;
                                case 66:
                                    this.album_ = nVar.J();
                                    continue;
                                case 74:
                                    this.isrc_ = nVar.J();
                                    continue;
                                case 82:
                                    this.url_ = nVar.J();
                                    continue;
                                case 90:
                                    String J = nVar.J();
                                    boolean z12 = (z11 ? 1 : 0) & true;
                                    z11 = z11;
                                    if (!z12) {
                                        this.cat_ = new m0();
                                        z11 = (z11 ? 1 : 0) | true;
                                    }
                                    this.cat_.add(J);
                                    continue;
                                case 96:
                                    this.cattax_ = nVar.t();
                                    continue;
                                case 104:
                                    this.prodq_ = nVar.t();
                                    continue;
                                case 112:
                                    this.context_ = nVar.t();
                                    continue;
                                case 122:
                                    this.rating_ = nVar.J();
                                    continue;
                                case 130:
                                    this.urating_ = nVar.J();
                                    continue;
                                case 136:
                                    this.mrating_ = nVar.t();
                                    continue;
                                case 146:
                                    this.keywords_ = nVar.J();
                                    continue;
                                case 152:
                                    this.live_ = nVar.q();
                                    continue;
                                case 160:
                                    this.srcrel_ = nVar.L();
                                    continue;
                                case IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION /* 168 */:
                                    this.len_ = nVar.L();
                                    continue;
                                case 178:
                                    this.lang_ = nVar.J();
                                    continue;
                                case 184:
                                    this.embed_ = nVar.q();
                                    continue;
                                case MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY /* 194 */:
                                    Producer producer = this.producer_;
                                    Producer.Builder builder = producer != null ? producer.toBuilder() : null;
                                    Producer producer2 = (Producer) nVar.A(Producer.parser(), yVar);
                                    this.producer_ = producer2;
                                    if (builder != null) {
                                        builder.mergeFrom(producer2);
                                        this.producer_ = builder.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 202:
                                    boolean z13 = (z11 ? 1 : 0) & true;
                                    z11 = z11;
                                    if (!z13) {
                                        this.data_ = new ArrayList();
                                        z11 = (z11 ? 1 : 0) | true;
                                    }
                                    this.data_.add(nVar.A(Data.parser(), yVar));
                                    continue;
                                case 210:
                                    boolean z14 = (z11 ? 1 : 0) & true;
                                    z11 = z11;
                                    if (!z14) {
                                        this.extProto_ = new ArrayList();
                                        z11 = (z11 ? 1 : 0) | true;
                                    }
                                    this.extProto_.add(nVar.A(Any.parser(), yVar));
                                    continue;
                                case 218:
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
                            this.cat_ = this.cat_.getUnmodifiableView();
                        }
                        if ((z11 ? 1 : 0) & true) {
                            this.data_ = Collections.unmodifiableList(this.data_);
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
                    this.cat_ = this.cat_.getUnmodifiableView();
                }
                if ((z11 ? 1 : 0) & true) {
                    this.data_ = Collections.unmodifiableList(this.data_);
                }
                if ((z11 ? 1 : 0) & true) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }
        }

        /* loaded from: classes3.dex */
        public interface ContentOrBuilder extends MessageOrBuilder {
            String getAlbum();

            ByteString getAlbumBytes();

            String getArtist();

            ByteString getArtistBytes();

            String getCat(int i10);

            ByteString getCatBytes(int i10);

            int getCatCount();

            List<String> getCatList();

            CategoryTaxonomy getCattax();

            int getCattaxValue();

            ContentContext getContext();

            int getContextValue();

            Data getData(int i10);

            int getDataCount();

            List<Data> getDataList();

            DataOrBuilder getDataOrBuilder(int i10);

            List<? extends DataOrBuilder> getDataOrBuilderList();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            boolean getEmbed();

            int getEpisode();

            Struct getExt();

            x1 getExtOrBuilder();

            Any getExtProto(int i10);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            e getExtProtoOrBuilder(int i10);

            List<? extends e> getExtProtoOrBuilderList();

            String getGenre();

            ByteString getGenreBytes();

            String getId();

            ByteString getIdBytes();

            String getIsrc();

            ByteString getIsrcBytes();

            String getKeywords();

            ByteString getKeywordsBytes();

            String getLang();

            ByteString getLangBytes();

            int getLen();

            boolean getLive();

            MediaRating getMrating();

            int getMratingValue();

            ProductionQuality getProdq();

            int getProdqValue();

            Content.Producer getProducer();

            Content.ProducerOrBuilder getProducerOrBuilder();

            String getRating();

            ByteString getRatingBytes();

            String getSeason();

            ByteString getSeasonBytes();

            String getSeries();

            ByteString getSeriesBytes();

            int getSrcrel();

            String getTitle();

            ByteString getTitleBytes();

            String getUrating();

            ByteString getUratingBytes();

            String getUrl();

            ByteString getUrlBytes();

            boolean hasExt();

            boolean hasProducer();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes3.dex */
        public static final class Publisher extends GeneratedMessageV3 implements PublisherOrBuilder {
            public static final int CATTAX_FIELD_NUMBER = 5;
            public static final int CAT_FIELD_NUMBER = 4;
            public static final int DOMAIN_FIELD_NUMBER = 3;
            public static final int EXT_FIELD_NUMBER = 7;
            public static final int EXT_PROTO_FIELD_NUMBER = 6;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int NAME_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private n0 cat_;
            private int cattax_;
            private volatile Object domain_;
            private List<Any> extProto_;
            private Struct ext_;
            private volatile Object id_;
            private byte memoizedIsInitialized;
            private volatile Object name_;
            private static final Publisher DEFAULT_INSTANCE = new Publisher();
            private static final j1<Publisher> PARSER = new com.explorestack.protobuf.b<Publisher>() { // from class: com.explorestack.protobuf.adcom.Context.App.Publisher.1
                @Override // com.explorestack.protobuf.j1
                public Publisher parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Publisher(nVar, yVar);
                }
            };

            /* loaded from: classes3.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements PublisherOrBuilder {
                private int bitField0_;
                private n0 cat_;
                private int cattax_;
                private Object domain_;
                private t1<Struct, Struct.Builder, x1> extBuilder_;
                private p1<Any, Any.Builder, e> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object id_;
                private Object name_;

                private void ensureCatIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.cat_ = new m0(this.cat_);
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
                    return b.f14226e;
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

                public Builder addAllCat(Iterable<String> iterable) {
                    ensureCatIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.cat_);
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

                public Builder addCat(String str) {
                    str.getClass();
                    ensureCatIsMutable();
                    this.cat_.add(str);
                    onChanged();
                    return this;
                }

                public Builder addCatBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    ensureCatIsMutable();
                    this.cat_.b(byteString);
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

                public Builder clearCat() {
                    this.cat_ = m0.f14459d;
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                public Builder clearCattax() {
                    this.cattax_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearDomain() {
                    this.domain_ = Publisher.getDefaultInstance().getDomain();
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

                public Builder clearId() {
                    this.id_ = Publisher.getDefaultInstance().getId();
                    onChanged();
                    return this;
                }

                public Builder clearName() {
                    this.name_ = Publisher.getDefaultInstance().getName();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public String getCat(int i10) {
                    return this.cat_.get(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public ByteString getCatBytes(int i10) {
                    return this.cat_.getByteString(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public int getCatCount() {
                    return this.cat_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public CategoryTaxonomy getCattax() {
                    CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                    if (valueOf == null) {
                        return CategoryTaxonomy.UNRECOGNIZED;
                    }
                    return valueOf;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public int getCattaxValue() {
                    return this.cattax_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.f14226e;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public String getDomain() {
                    Object obj = this.domain_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.domain_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public ByteString getDomainBytes() {
                    Object obj = this.domain_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.domain_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public int getExtProtoCount() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.size();
                    }
                    return p1Var.m();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public List<Any> getExtProtoList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.extProto_);
                    }
                    return p1Var.p();
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public e getExtProtoOrBuilder(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public List<? extends e> getExtProtoOrBuilderList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public String getId() {
                    Object obj = this.id_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.id_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.id_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public String getName() {
                    Object obj = this.name_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.name_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public ByteString getNameBytes() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.name_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public boolean hasExt() {
                    if (this.extBuilder_ == null && this.ext_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.f14228f.d(Publisher.class, Builder.class);
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

                public Builder setCat(int i10, String str) {
                    str.getClass();
                    ensureCatIsMutable();
                    this.cat_.set(i10, str);
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

                public Builder setDomain(String str) {
                    str.getClass();
                    this.domain_ = str;
                    onChanged();
                    return this;
                }

                public Builder setDomainBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.domain_ = byteString;
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

                public Builder setName(String str) {
                    str.getClass();
                    this.name_ = str;
                    onChanged();
                    return this;
                }

                public Builder setNameBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.name_ = byteString;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
                public m1 getCatList() {
                    return this.cat_.getUnmodifiableView();
                }

                private Builder() {
                    this.id_ = "";
                    this.name_ = "";
                    this.domain_ = "";
                    this.cat_ = m0.f14459d;
                    this.cattax_ = 0;
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Publisher build() {
                    Publisher buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Publisher buildPartial() {
                    Publisher publisher = new Publisher(this);
                    publisher.id_ = this.id_;
                    publisher.name_ = this.name_;
                    publisher.domain_ = this.domain_;
                    if ((this.bitField0_ & 1) != 0) {
                        this.cat_ = this.cat_.getUnmodifiableView();
                        this.bitField0_ &= -2;
                    }
                    publisher.cat_ = this.cat_;
                    publisher.cattax_ = this.cattax_;
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        publisher.ext_ = this.ext_;
                    } else {
                        publisher.ext_ = t1Var.a();
                    }
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        publisher.extProto_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 2) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -3;
                        }
                        publisher.extProto_ = this.extProto_;
                    }
                    onBuilt();
                    return publisher;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Publisher mo4630getDefaultInstanceForType() {
                    return Publisher.getDefaultInstance();
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
                    this.name_ = "";
                    this.domain_ = "";
                    this.cat_ = m0.f14459d;
                    this.bitField0_ &= -2;
                    this.cattax_ = 0;
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
                    if (message instanceof Publisher) {
                        return mergeFrom((Publisher) message);
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

                public Builder mergeFrom(Publisher publisher) {
                    if (publisher == Publisher.getDefaultInstance()) {
                        return this;
                    }
                    if (!publisher.getId().isEmpty()) {
                        this.id_ = publisher.id_;
                        onChanged();
                    }
                    if (!publisher.getName().isEmpty()) {
                        this.name_ = publisher.name_;
                        onChanged();
                    }
                    if (!publisher.getDomain().isEmpty()) {
                        this.domain_ = publisher.domain_;
                        onChanged();
                    }
                    if (!publisher.cat_.isEmpty()) {
                        if (this.cat_.isEmpty()) {
                            this.cat_ = publisher.cat_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureCatIsMutable();
                            this.cat_.addAll(publisher.cat_);
                        }
                        onChanged();
                    }
                    if (publisher.cattax_ != 0) {
                        setCattaxValue(publisher.getCattaxValue());
                    }
                    if (publisher.hasExt()) {
                        mergeExt(publisher.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!publisher.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = publisher.extProto_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(publisher.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!publisher.extProto_.isEmpty()) {
                        if (!this.extProtoBuilder_.t()) {
                            this.extProtoBuilder_.a(publisher.extProto_);
                        } else {
                            this.extProtoBuilder_.h();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = publisher.extProto_;
                            this.bitField0_ &= -3;
                            this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) publisher).unknownFields);
                    onChanged();
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.id_ = "";
                    this.name_ = "";
                    this.domain_ = "";
                    this.cat_ = m0.f14459d;
                    this.cattax_ = 0;
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
                public com.explorestack.protobuf.adcom.Context.App.Publisher.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.App.Publisher.access$1300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.adcom.Context$App$Publisher r3 = (com.explorestack.protobuf.adcom.Context.App.Publisher) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.adcom.Context$App$Publisher r4 = (com.explorestack.protobuf.adcom.Context.App.Publisher) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.App.Publisher.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$App$Publisher$Builder");
                }
            }

            public static Publisher getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14226e;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Publisher parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Publisher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Publisher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Publisher> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Publisher)) {
                    return super.equals(obj);
                }
                Publisher publisher = (Publisher) obj;
                if (!getId().equals(publisher.getId()) || !getName().equals(publisher.getName()) || !getDomain().equals(publisher.getDomain()) || !getCatList().equals(publisher.getCatList()) || this.cattax_ != publisher.cattax_ || hasExt() != publisher.hasExt()) {
                    return false;
                }
                if ((!hasExt() || getExt().equals(publisher.getExt())) && getExtProtoList().equals(publisher.getExtProtoList()) && this.unknownFields.equals(publisher.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public String getCat(int i10) {
                return this.cat_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public ByteString getCatBytes(int i10) {
                return this.cat_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public int getCatCount() {
                return this.cat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public CategoryTaxonomy getCattax() {
                CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                if (valueOf == null) {
                    return CategoryTaxonomy.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public int getCattaxValue() {
                return this.cattax_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public String getDomain() {
                Object obj = this.domain_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.domain_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public ByteString getDomainBytes() {
                Object obj = this.domain_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.domain_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public Struct getExt() {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public x1 getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public Any getExtProto(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.name_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Publisher> getParserForType() {
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
                if (!getNameBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(2, this.name_);
                }
                if (!getDomainBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(3, this.domain_);
                }
                int i12 = 0;
                for (int i13 = 0; i13 < this.cat_.size(); i13++) {
                    i12 += GeneratedMessageV3.computeStringSizeNoTag(this.cat_.getRaw(i13));
                }
                int size = i10 + i12 + getCatList().size();
                if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                    size += CodedOutputStream.l(5, this.cattax_);
                }
                for (int i14 = 0; i14 < this.extProto_.size(); i14++) {
                    size += CodedOutputStream.G(6, this.extProto_.get(i14));
                }
                if (this.ext_ != null) {
                    size += CodedOutputStream.G(7, getExt());
                }
                int serializedSize = size + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
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
                int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getName().hashCode()) * 37) + 3) * 53) + getDomain().hashCode();
                if (getCatCount() > 0) {
                    hashCode = (((hashCode * 37) + 4) * 53) + getCatList().hashCode();
                }
                int i11 = (((hashCode * 37) + 5) * 53) + this.cattax_;
                if (hasExt()) {
                    i11 = (((i11 * 37) + 7) * 53) + getExt().hashCode();
                }
                if (getExtProtoCount() > 0) {
                    i11 = (((i11 * 37) + 6) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (i11 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14228f.d(Publisher.class, Builder.class);
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
                return new Publisher();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getIdBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
                }
                if (!getNameBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
                }
                if (!getDomainBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.domain_);
                }
                for (int i10 = 0; i10 < this.cat_.size(); i10++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 4, this.cat_.getRaw(i10));
                }
                if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                    codedOutputStream.v0(5, this.cattax_);
                }
                for (int i11 = 0; i11 < this.extProto_.size(); i11++) {
                    codedOutputStream.L0(6, this.extProto_.get(i11));
                }
                if (this.ext_ != null) {
                    codedOutputStream.L0(7, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            public static Builder newBuilder(Publisher publisher) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(publisher);
            }

            public static Publisher parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.PublisherOrBuilder
            public m1 getCatList() {
                return this.cat_;
            }

            private Publisher(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Publisher parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Publisher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Publisher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Publisher mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Publisher parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private Publisher() {
                this.memoizedIsInitialized = (byte) -1;
                this.id_ = "";
                this.name_ = "";
                this.domain_ = "";
                this.cat_ = m0.f14459d;
                this.cattax_ = 0;
                this.extProto_ = Collections.emptyList();
            }

            public static Publisher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Publisher parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Publisher parseFrom(InputStream inputStream) throws IOException {
                return (Publisher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Publisher parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Publisher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static Publisher parseFrom(n nVar) throws IOException {
                return (Publisher) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Publisher(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                } else if (K == 18) {
                                    this.name_ = nVar.J();
                                } else if (K == 26) {
                                    this.domain_ = nVar.J();
                                } else if (K == 34) {
                                    String J = nVar.J();
                                    if (!(z11 & true)) {
                                        this.cat_ = new m0();
                                        z11 |= true;
                                    }
                                    this.cat_.add(J);
                                } else if (K == 40) {
                                    this.cattax_ = nVar.t();
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
                            this.cat_ = this.cat_.getUnmodifiableView();
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
                    this.cat_ = this.cat_.getUnmodifiableView();
                }
                if (z11 & true) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static Publisher parseFrom(n nVar, y yVar) throws IOException {
                return (Publisher) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes3.dex */
        public interface PublisherOrBuilder extends MessageOrBuilder {
            String getCat(int i10);

            ByteString getCatBytes(int i10);

            int getCatCount();

            List<String> getCatList();

            CategoryTaxonomy getCattax();

            int getCattaxValue();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            String getDomain();

            ByteString getDomainBytes();

            Struct getExt();

            x1 getExtOrBuilder();

            Any getExtProto(int i10);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            e getExtProtoOrBuilder(int i10);

            List<? extends e> getExtProtoOrBuilderList();

            String getId();

            ByteString getIdBytes();

            String getName();

            ByteString getNameBytes();

            boolean hasExt();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes3.dex */
        public static final class Release extends GeneratedMessageV3 implements ReleaseOrBuilder {
            private static final Release DEFAULT_INSTANCE = new Release();
            private static final j1<Release> PARSER = new com.explorestack.protobuf.b<Release>() { // from class: com.explorestack.protobuf.adcom.Context.App.Release.1
                @Override // com.explorestack.protobuf.j1
                public Release parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Release(nVar, yVar);
                }
            };
            public static final int SIGNATURESHA1_FIELD_NUMBER = 2;
            public static final int SIGNATURESHA256_FIELD_NUMBER = 3;
            public static final int TYPE_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private volatile Object signatureSHA1_;
            private volatile Object signatureSHA256_;
            private volatile Object type_;

            public static Release getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14238k;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Release parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Release) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Release parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Release> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Release)) {
                    return super.equals(obj);
                }
                Release release = (Release) obj;
                if (getType().equals(release.getType()) && getSignatureSHA1().equals(release.getSignatureSHA1()) && getSignatureSHA256().equals(release.getSignatureSHA256()) && this.unknownFields.equals(release.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Release> getParserForType() {
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
                if (!getSignatureSHA1Bytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(2, this.signatureSHA1_);
                }
                if (!getSignatureSHA256Bytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(3, this.signatureSHA256_);
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
            public String getSignatureSHA1() {
                Object obj = this.signatureSHA1_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.signatureSHA1_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
            public ByteString getSignatureSHA1Bytes() {
                Object obj = this.signatureSHA1_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.signatureSHA1_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
            public String getSignatureSHA256() {
                Object obj = this.signatureSHA256_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.signatureSHA256_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
            public ByteString getSignatureSHA256Bytes() {
                Object obj = this.signatureSHA256_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.signatureSHA256_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
            public String getType() {
                Object obj = this.type_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.type_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
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

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getType().hashCode()) * 37) + 2) * 53) + getSignatureSHA1().hashCode()) * 37) + 3) * 53) + getSignatureSHA256().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14240l.d(Release.class, Builder.class);
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
                return new Release();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getTypeBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
                }
                if (!getSignatureSHA1Bytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.signatureSHA1_);
                }
                if (!getSignatureSHA256Bytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.signatureSHA256_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements ReleaseOrBuilder {
                private Object signatureSHA1_;
                private Object signatureSHA256_;
                private Object type_;

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.f14238k;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                public Builder clearSignatureSHA1() {
                    this.signatureSHA1_ = Release.getDefaultInstance().getSignatureSHA1();
                    onChanged();
                    return this;
                }

                public Builder clearSignatureSHA256() {
                    this.signatureSHA256_ = Release.getDefaultInstance().getSignatureSHA256();
                    onChanged();
                    return this;
                }

                public Builder clearType() {
                    this.type_ = Release.getDefaultInstance().getType();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.f14238k;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
                public String getSignatureSHA1() {
                    Object obj = this.signatureSHA1_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.signatureSHA1_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
                public ByteString getSignatureSHA1Bytes() {
                    Object obj = this.signatureSHA1_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.signatureSHA1_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
                public String getSignatureSHA256() {
                    Object obj = this.signatureSHA256_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.signatureSHA256_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
                public ByteString getSignatureSHA256Bytes() {
                    Object obj = this.signatureSHA256_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.signatureSHA256_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
                public String getType() {
                    Object obj = this.type_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.type_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.App.ReleaseOrBuilder
                public ByteString getTypeBytes() {
                    Object obj = this.type_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.type_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.f14240l.d(Release.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder setSignatureSHA1(String str) {
                    str.getClass();
                    this.signatureSHA1_ = str;
                    onChanged();
                    return this;
                }

                public Builder setSignatureSHA1Bytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.signatureSHA1_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setSignatureSHA256(String str) {
                    str.getClass();
                    this.signatureSHA256_ = str;
                    onChanged();
                    return this;
                }

                public Builder setSignatureSHA256Bytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.signatureSHA256_ = byteString;
                    onChanged();
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

                private Builder() {
                    this.type_ = "";
                    this.signatureSHA1_ = "";
                    this.signatureSHA256_ = "";
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Release build() {
                    Release buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Release buildPartial() {
                    Release release = new Release(this);
                    release.type_ = this.type_;
                    release.signatureSHA1_ = this.signatureSHA1_;
                    release.signatureSHA256_ = this.signatureSHA256_;
                    onBuilt();
                    return release;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Release mo4630getDefaultInstanceForType() {
                    return Release.getDefaultInstance();
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
                    this.type_ = "";
                    this.signatureSHA1_ = "";
                    this.signatureSHA256_ = "";
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: clone */
                public Builder mo4628clone() {
                    return (Builder) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Release) {
                        return mergeFrom((Release) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.type_ = "";
                    this.signatureSHA1_ = "";
                    this.signatureSHA256_ = "";
                    maybeForceBuilderInitialization();
                }

                public Builder mergeFrom(Release release) {
                    if (release == Release.getDefaultInstance()) {
                        return this;
                    }
                    if (!release.getType().isEmpty()) {
                        this.type_ = release.type_;
                        onChanged();
                    }
                    if (!release.getSignatureSHA1().isEmpty()) {
                        this.signatureSHA1_ = release.signatureSHA1_;
                        onChanged();
                    }
                    if (!release.getSignatureSHA256().isEmpty()) {
                        this.signatureSHA256_ = release.signatureSHA256_;
                        onChanged();
                    }
                    mergeUnknownFields(((GeneratedMessageV3) release).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.adcom.Context.App.Release.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.App.Release.access$9600()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.adcom.Context$App$Release r3 = (com.explorestack.protobuf.adcom.Context.App.Release) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.adcom.Context$App$Release r4 = (com.explorestack.protobuf.adcom.Context.App.Release) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.App.Release.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$App$Release$Builder");
                }
            }

            public static Builder newBuilder(Release release) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(release);
            }

            public static Release parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private Release(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Release parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Release) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Release parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Release mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Release parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private Release() {
                this.memoizedIsInitialized = (byte) -1;
                this.type_ = "";
                this.signatureSHA1_ = "";
                this.signatureSHA256_ = "";
            }

            public static Release parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Release parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Release parseFrom(InputStream inputStream) throws IOException {
                return (Release) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Release parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Release) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            private Release(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                    this.type_ = nVar.J();
                                } else if (K == 18) {
                                    this.signatureSHA1_ = nVar.J();
                                } else if (K != 26) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    this.signatureSHA256_ = nVar.J();
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

            public static Release parseFrom(n nVar) throws IOException {
                return (Release) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static Release parseFrom(n nVar, y yVar) throws IOException {
                return (Release) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes3.dex */
        public interface ReleaseOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            String getSignatureSHA1();

            ByteString getSignatureSHA1Bytes();

            String getSignatureSHA256();

            ByteString getSignatureSHA256Bytes();

            String getType();

            ByteString getTypeBytes();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public static App getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.f14222c;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static App parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (App) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static App parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<App> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof App)) {
                return super.equals(obj);
            }
            App app = (App) obj;
            if (!getId().equals(app.getId()) || !getName().equals(app.getName()) || hasPub() != app.hasPub()) {
                return false;
            }
            if ((hasPub() && !getPub().equals(app.getPub())) || hasContent() != app.hasContent()) {
                return false;
            }
            if ((hasContent() && !getContent().equals(app.getContent())) || !getDomain().equals(app.getDomain()) || !getCatList().equals(app.getCatList()) || !getSectcatList().equals(app.getSectcatList()) || !getPagecatList().equals(app.getPagecatList()) || this.cattax_ != app.cattax_ || getPrivpolicy() != app.getPrivpolicy() || !getKeywords().equals(app.getKeywords()) || !getBundle().equals(app.getBundle()) || !getStoreid().equals(app.getStoreid()) || !getStoreurl().equals(app.getStoreurl()) || !getVer().equals(app.getVer()) || getPaid() != app.getPaid() || hasRelease() != app.hasRelease()) {
                return false;
            }
            if ((hasRelease() && !getRelease().equals(app.getRelease())) || hasExt() != app.hasExt()) {
                return false;
            }
            if ((!hasExt() || getExt().equals(app.getExt())) && getExtProtoList().equals(app.getExtProtoList()) && this.unknownFields.equals(app.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public String getBundle() {
            Object obj = this.bundle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bundle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ByteString getBundleBytes() {
            Object obj = this.bundle_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bundle_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public String getCat(int i10) {
            return this.cat_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ByteString getCatBytes(int i10) {
            return this.cat_.getByteString(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public int getCatCount() {
            return this.cat_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public CategoryTaxonomy getCattax() {
            CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
            if (valueOf == null) {
                return CategoryTaxonomy.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public int getCattaxValue() {
            return this.cattax_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public Content getContent() {
            Content content = this.content_;
            if (content == null) {
                return Content.getDefaultInstance();
            }
            return content;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ContentOrBuilder getContentOrBuilder() {
            return getContent();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public String getDomain() {
            Object obj = this.domain_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.domain_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ByteString getDomainBytes() {
            Object obj = this.domain_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.domain_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public Struct getExt() {
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public x1 getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public Any getExtProto(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public e getExtProtoOrBuilder(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public List<? extends e> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ByteString getIdBytes() {
            Object obj = this.id_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public String getKeywords() {
            Object obj = this.keywords_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.keywords_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ByteString getKeywordsBytes() {
            Object obj = this.keywords_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.keywords_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.name_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public String getPagecat(int i10) {
            return this.pagecat_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ByteString getPagecatBytes(int i10) {
            return this.pagecat_.getByteString(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public int getPagecatCount() {
            return this.pagecat_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public boolean getPaid() {
            return this.paid_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<App> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public boolean getPrivpolicy() {
            return this.privpolicy_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public Publisher getPub() {
            Publisher publisher = this.pub_;
            if (publisher == null) {
                return Publisher.getDefaultInstance();
            }
            return publisher;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public PublisherOrBuilder getPubOrBuilder() {
            return getPub();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public Release getRelease() {
            Release release = this.release_;
            if (release == null) {
                return Release.getDefaultInstance();
            }
            return release;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ReleaseOrBuilder getReleaseOrBuilder() {
            return getRelease();
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public String getSectcat(int i10) {
            return this.sectcat_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ByteString getSectcatBytes(int i10) {
            return this.sectcat_.getByteString(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public int getSectcatCount() {
            return this.sectcat_.size();
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
            if (!getNameBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(2, this.name_);
            }
            if (this.pub_ != null) {
                i10 += CodedOutputStream.G(3, getPub());
            }
            if (this.content_ != null) {
                i10 += CodedOutputStream.G(4, getContent());
            }
            if (!getDomainBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(5, this.domain_);
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.cat_.size(); i13++) {
                i12 += GeneratedMessageV3.computeStringSizeNoTag(this.cat_.getRaw(i13));
            }
            int size = i10 + i12 + getCatList().size();
            int i14 = 0;
            for (int i15 = 0; i15 < this.sectcat_.size(); i15++) {
                i14 += GeneratedMessageV3.computeStringSizeNoTag(this.sectcat_.getRaw(i15));
            }
            int size2 = size + i14 + getSectcatList().size();
            int i16 = 0;
            for (int i17 = 0; i17 < this.pagecat_.size(); i17++) {
                i16 += GeneratedMessageV3.computeStringSizeNoTag(this.pagecat_.getRaw(i17));
            }
            int size3 = size2 + i16 + getPagecatList().size();
            if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                size3 += CodedOutputStream.l(9, this.cattax_);
            }
            boolean z10 = this.privpolicy_;
            if (z10) {
                size3 += CodedOutputStream.e(10, z10);
            }
            if (!getKeywordsBytes().isEmpty()) {
                size3 += GeneratedMessageV3.computeStringSize(11, this.keywords_);
            }
            if (!getBundleBytes().isEmpty()) {
                size3 += GeneratedMessageV3.computeStringSize(12, this.bundle_);
            }
            if (!getStoreidBytes().isEmpty()) {
                size3 += GeneratedMessageV3.computeStringSize(13, this.storeid_);
            }
            if (!getStoreurlBytes().isEmpty()) {
                size3 += GeneratedMessageV3.computeStringSize(14, this.storeurl_);
            }
            if (!getVerBytes().isEmpty()) {
                size3 += GeneratedMessageV3.computeStringSize(15, this.ver_);
            }
            boolean z11 = this.paid_;
            if (z11) {
                size3 += CodedOutputStream.e(16, z11);
            }
            for (int i18 = 0; i18 < this.extProto_.size(); i18++) {
                size3 += CodedOutputStream.G(17, this.extProto_.get(i18));
            }
            if (this.ext_ != null) {
                size3 += CodedOutputStream.G(18, getExt());
            }
            if (this.release_ != null) {
                size3 += CodedOutputStream.G(19, getRelease());
            }
            int serializedSize = size3 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public String getStoreid() {
            Object obj = this.storeid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.storeid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ByteString getStoreidBytes() {
            Object obj = this.storeid_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.storeid_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public String getStoreurl() {
            Object obj = this.storeurl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.storeurl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ByteString getStoreurlBytes() {
            Object obj = this.storeurl_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.storeurl_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public String getVer() {
            Object obj = this.ver_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ver_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public ByteString getVerBytes() {
            Object obj = this.ver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public boolean hasContent() {
            if (this.content_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public boolean hasExt() {
            if (this.ext_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public boolean hasPub() {
            if (this.pub_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public boolean hasRelease() {
            if (this.release_ != null) {
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
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getName().hashCode();
            if (hasPub()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getPub().hashCode();
            }
            if (hasContent()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getContent().hashCode();
            }
            int hashCode2 = (((hashCode * 37) + 5) * 53) + getDomain().hashCode();
            if (getCatCount() > 0) {
                hashCode2 = (((hashCode2 * 37) + 6) * 53) + getCatList().hashCode();
            }
            if (getSectcatCount() > 0) {
                hashCode2 = (((hashCode2 * 37) + 7) * 53) + getSectcatList().hashCode();
            }
            if (getPagecatCount() > 0) {
                hashCode2 = (((hashCode2 * 37) + 8) * 53) + getPagecatList().hashCode();
            }
            int d10 = (((((((((((((((((((((((((((((((hashCode2 * 37) + 9) * 53) + this.cattax_) * 37) + 10) * 53) + i0.d(getPrivpolicy())) * 37) + 11) * 53) + getKeywords().hashCode()) * 37) + 12) * 53) + getBundle().hashCode()) * 37) + 13) * 53) + getStoreid().hashCode()) * 37) + 14) * 53) + getStoreurl().hashCode()) * 37) + 15) * 53) + getVer().hashCode()) * 37) + 16) * 53) + i0.d(getPaid());
            if (hasRelease()) {
                d10 = (((d10 * 37) + 19) * 53) + getRelease().hashCode();
            }
            if (hasExt()) {
                d10 = (((d10 * 37) + 18) * 53) + getExt().hashCode();
            }
            if (getExtProtoCount() > 0) {
                d10 = (((d10 * 37) + 17) * 53) + getExtProtoList().hashCode();
            }
            int hashCode3 = (d10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.f14224d.d(App.class, Builder.class);
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
            return new App();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
            }
            if (!getNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
            }
            if (this.pub_ != null) {
                codedOutputStream.L0(3, getPub());
            }
            if (this.content_ != null) {
                codedOutputStream.L0(4, getContent());
            }
            if (!getDomainBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.domain_);
            }
            for (int i10 = 0; i10 < this.cat_.size(); i10++) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.cat_.getRaw(i10));
            }
            for (int i11 = 0; i11 < this.sectcat_.size(); i11++) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.sectcat_.getRaw(i11));
            }
            for (int i12 = 0; i12 < this.pagecat_.size(); i12++) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.pagecat_.getRaw(i12));
            }
            if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                codedOutputStream.v0(9, this.cattax_);
            }
            boolean z10 = this.privpolicy_;
            if (z10) {
                codedOutputStream.n0(10, z10);
            }
            if (!getKeywordsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.keywords_);
            }
            if (!getBundleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 12, this.bundle_);
            }
            if (!getStoreidBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 13, this.storeid_);
            }
            if (!getStoreurlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 14, this.storeurl_);
            }
            if (!getVerBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 15, this.ver_);
            }
            boolean z11 = this.paid_;
            if (z11) {
                codedOutputStream.n0(16, z11);
            }
            for (int i13 = 0; i13 < this.extProto_.size(); i13++) {
                codedOutputStream.L0(17, this.extProto_.get(i13));
            }
            if (this.ext_ != null) {
                codedOutputStream.L0(18, getExt());
            }
            if (this.release_ != null) {
                codedOutputStream.L0(19, getRelease());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static Builder newBuilder(App app) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(app);
        }

        public static App parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public m1 getCatList() {
            return this.cat_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public m1 getPagecatList() {
            return this.pagecat_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.AppOrBuilder
        public m1 getSectcatList() {
            return this.sectcat_;
        }

        private App(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static App parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (App) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static App parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public App mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static App parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private App() {
            this.memoizedIsInitialized = (byte) -1;
            this.id_ = "";
            this.name_ = "";
            this.domain_ = "";
            n0 n0Var = m0.f14459d;
            this.cat_ = n0Var;
            this.sectcat_ = n0Var;
            this.pagecat_ = n0Var;
            this.cattax_ = 0;
            this.keywords_ = "";
            this.bundle_ = "";
            this.storeid_ = "";
            this.storeurl_ = "";
            this.ver_ = "";
            this.extProto_ = Collections.emptyList();
        }

        public static App parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static App parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static App parseFrom(InputStream inputStream) throws IOException {
            return (App) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static App parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (App) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static App parseFrom(n nVar) throws IOException {
            return (App) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static App parseFrom(n nVar, y yVar) throws IOException {
            return (App) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private App(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            case 18:
                                this.name_ = nVar.J();
                                continue;
                            case 26:
                                Publisher publisher = this.pub_;
                                Publisher.Builder builder = publisher != null ? publisher.toBuilder() : null;
                                Publisher publisher2 = (Publisher) nVar.A(Publisher.parser(), yVar);
                                this.pub_ = publisher2;
                                if (builder != null) {
                                    builder.mergeFrom(publisher2);
                                    this.pub_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 34:
                                Content content = this.content_;
                                Content.Builder builder2 = content != null ? content.toBuilder() : null;
                                Content content2 = (Content) nVar.A(Content.parser(), yVar);
                                this.content_ = content2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(content2);
                                    this.content_ = builder2.buildPartial();
                                } else {
                                    continue;
                                }
                            case 42:
                                this.domain_ = nVar.J();
                                continue;
                            case 50:
                                String J = nVar.J();
                                boolean z12 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z12) {
                                    this.cat_ = new m0();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.cat_.add(J);
                                continue;
                            case 58:
                                String J2 = nVar.J();
                                boolean z13 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z13) {
                                    this.sectcat_ = new m0();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.sectcat_.add(J2);
                                continue;
                            case 66:
                                String J3 = nVar.J();
                                boolean z14 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z14) {
                                    this.pagecat_ = new m0();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.pagecat_.add(J3);
                                continue;
                            case 72:
                                this.cattax_ = nVar.t();
                                continue;
                            case 80:
                                this.privpolicy_ = nVar.q();
                                continue;
                            case 90:
                                this.keywords_ = nVar.J();
                                continue;
                            case 98:
                                this.bundle_ = nVar.J();
                                continue;
                            case 106:
                                this.storeid_ = nVar.J();
                                continue;
                            case 114:
                                this.storeurl_ = nVar.J();
                                continue;
                            case 122:
                                this.ver_ = nVar.J();
                                continue;
                            case 128:
                                this.paid_ = nVar.q();
                                continue;
                            case 138:
                                boolean z15 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z15) {
                                    this.extProto_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.extProto_.add(nVar.A(Any.parser(), yVar));
                                continue;
                            case 146:
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
                            case 154:
                                Release release = this.release_;
                                Release.Builder builder4 = release != null ? release.toBuilder() : null;
                                Release release2 = (Release) nVar.A(Release.parser(), yVar);
                                this.release_ = release2;
                                if (builder4 != null) {
                                    builder4.mergeFrom(release2);
                                    this.release_ = builder4.buildPartial();
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
                        this.cat_ = this.cat_.getUnmodifiableView();
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.sectcat_ = this.sectcat_.getUnmodifiableView();
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.pagecat_ = this.pagecat_.getUnmodifiableView();
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
                this.cat_ = this.cat_.getUnmodifiableView();
            }
            if ((z11 ? 1 : 0) & true) {
                this.sectcat_ = this.sectcat_.getUnmodifiableView();
            }
            if ((z11 ? 1 : 0) & true) {
                this.pagecat_ = this.pagecat_.getUnmodifiableView();
            }
            if ((z11 ? 1 : 0) & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public interface AppOrBuilder extends MessageOrBuilder {
        String getBundle();

        ByteString getBundleBytes();

        String getCat(int i10);

        ByteString getCatBytes(int i10);

        int getCatCount();

        List<String> getCatList();

        CategoryTaxonomy getCattax();

        int getCattaxValue();

        App.Content getContent();

        App.ContentOrBuilder getContentOrBuilder();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        String getDomain();

        ByteString getDomainBytes();

        Struct getExt();

        x1 getExtOrBuilder();

        Any getExtProto(int i10);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        e getExtProtoOrBuilder(int i10);

        List<? extends e> getExtProtoOrBuilderList();

        String getId();

        ByteString getIdBytes();

        String getKeywords();

        ByteString getKeywordsBytes();

        String getName();

        ByteString getNameBytes();

        String getPagecat(int i10);

        ByteString getPagecatBytes(int i10);

        int getPagecatCount();

        List<String> getPagecatList();

        boolean getPaid();

        boolean getPrivpolicy();

        App.Publisher getPub();

        App.PublisherOrBuilder getPubOrBuilder();

        App.Release getRelease();

        App.ReleaseOrBuilder getReleaseOrBuilder();

        String getSectcat(int i10);

        ByteString getSectcatBytes(int i10);

        int getSectcatCount();

        List<String> getSectcatList();

        String getStoreid();

        ByteString getStoreidBytes();

        String getStoreurl();

        ByteString getStoreurlBytes();

        String getVer();

        ByteString getVerBytes();

        boolean hasContent();

        boolean hasExt();

        boolean hasPub();

        boolean hasRelease();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes3.dex */
    public static final class Data extends GeneratedMessageV3 implements DataOrBuilder {
        public static final int EXT_FIELD_NUMBER = 5;
        public static final int EXT_PROTO_FIELD_NUMBER = 4;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int NAME_FIELD_NUMBER = 2;
        public static final int SEGMENT_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private List<Any> extProto_;
        private Struct ext_;
        private volatile Object id_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private List<Segment> segment_;
        private static final Data DEFAULT_INSTANCE = new Data();
        private static final j1<Data> PARSER = new com.explorestack.protobuf.b<Data>() { // from class: com.explorestack.protobuf.adcom.Context.Data.1
            @Override // com.explorestack.protobuf.j1
            public Data parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Data(nVar, yVar);
            }
        };

        /* loaded from: classes3.dex */
        public static final class Segment extends GeneratedMessageV3 implements SegmentOrBuilder {
            public static final int EXT_FIELD_NUMBER = 5;
            public static final int EXT_PROTO_FIELD_NUMBER = 4;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int NAME_FIELD_NUMBER = 2;
            public static final int VALUE_FIELD_NUMBER = 3;
            private static final long serialVersionUID = 0;
            private List<Any> extProto_;
            private Struct ext_;
            private volatile Object id_;
            private byte memoizedIsInitialized;
            private volatile Object name_;
            private volatile Object value_;
            private static final Segment DEFAULT_INSTANCE = new Segment();
            private static final j1<Segment> PARSER = new com.explorestack.protobuf.b<Segment>() { // from class: com.explorestack.protobuf.adcom.Context.Data.Segment.1
                @Override // com.explorestack.protobuf.j1
                public Segment parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Segment(nVar, yVar);
                }
            };

            public static Segment getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14246o;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Segment parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Segment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Segment parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Segment> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Segment)) {
                    return super.equals(obj);
                }
                Segment segment = (Segment) obj;
                if (!getId().equals(segment.getId()) || !getName().equals(segment.getName()) || !getValue().equals(segment.getValue()) || hasExt() != segment.hasExt()) {
                    return false;
                }
                if ((!hasExt() || getExt().equals(segment.getExt())) && getExtProtoList().equals(segment.getExtProtoList()) && this.unknownFields.equals(segment.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public Struct getExt() {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public x1 getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public Any getExtProto(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                return this.extProto_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.name_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Segment> getParserForType() {
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
                if (!getNameBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(2, this.name_);
                }
                if (!getValueBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(3, this.value_);
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

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public String getValue() {
                Object obj = this.value_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.value_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
            public ByteString getValueBytes() {
                Object obj = this.value_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.value_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
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
                int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getName().hashCode()) * 37) + 3) * 53) + getValue().hashCode();
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
                return b.f14248p.d(Segment.class, Builder.class);
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
                return new Segment();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getIdBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
                }
                if (!getNameBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
                }
                if (!getValueBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.value_);
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
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements SegmentOrBuilder {
                private int bitField0_;
                private t1<Struct, Struct.Builder, x1> extBuilder_;
                private p1<Any, Any.Builder, e> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object id_;
                private Object name_;
                private Object value_;

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 1;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.f14246o;
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

                public Builder clearId() {
                    this.id_ = Segment.getDefaultInstance().getId();
                    onChanged();
                    return this;
                }

                public Builder clearName() {
                    this.name_ = Segment.getDefaultInstance().getName();
                    onChanged();
                    return this;
                }

                public Builder clearValue() {
                    this.value_ = Segment.getDefaultInstance().getValue();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.f14246o;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public int getExtProtoCount() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.size();
                    }
                    return p1Var.m();
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public List<Any> getExtProtoList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.extProto_);
                    }
                    return p1Var.p();
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public e getExtProtoOrBuilder(int i10) {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var == null) {
                        return this.extProto_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public List<? extends e> getExtProtoOrBuilderList() {
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public String getId() {
                    Object obj = this.id_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.id_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.id_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public String getName() {
                    Object obj = this.name_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.name_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public ByteString getNameBytes() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.name_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public String getValue() {
                    Object obj = this.value_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.value_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public ByteString getValueBytes() {
                    Object obj = this.value_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.value_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Data.SegmentOrBuilder
                public boolean hasExt() {
                    if (this.extBuilder_ == null && this.ext_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.f14248p.d(Segment.class, Builder.class);
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

                public Builder setName(String str) {
                    str.getClass();
                    this.name_ = str;
                    onChanged();
                    return this;
                }

                public Builder setNameBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.name_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setValue(String str) {
                    str.getClass();
                    this.value_ = str;
                    onChanged();
                    return this;
                }

                public Builder setValueBytes(ByteString byteString) {
                    byteString.getClass();
                    com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                    this.value_ = byteString;
                    onChanged();
                    return this;
                }

                private Builder() {
                    this.id_ = "";
                    this.name_ = "";
                    this.value_ = "";
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Segment build() {
                    Segment buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Segment buildPartial() {
                    Segment segment = new Segment(this);
                    segment.id_ = this.id_;
                    segment.name_ = this.name_;
                    segment.value_ = this.value_;
                    t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                    if (t1Var == null) {
                        segment.ext_ = this.ext_;
                    } else {
                        segment.ext_ = t1Var.a();
                    }
                    p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                    if (p1Var != null) {
                        segment.extProto_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 1) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -2;
                        }
                        segment.extProto_ = this.extProto_;
                    }
                    onBuilt();
                    return segment;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Segment mo4630getDefaultInstanceForType() {
                    return Segment.getDefaultInstance();
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
                    this.name_ = "";
                    this.value_ = "";
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
                    if (message instanceof Segment) {
                        return mergeFrom((Segment) message);
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
                    this.name_ = "";
                    this.value_ = "";
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                public Builder mergeFrom(Segment segment) {
                    if (segment == Segment.getDefaultInstance()) {
                        return this;
                    }
                    if (!segment.getId().isEmpty()) {
                        this.id_ = segment.id_;
                        onChanged();
                    }
                    if (!segment.getName().isEmpty()) {
                        this.name_ = segment.name_;
                        onChanged();
                    }
                    if (!segment.getValue().isEmpty()) {
                        this.value_ = segment.value_;
                        onChanged();
                    }
                    if (segment.hasExt()) {
                        mergeExt(segment.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!segment.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = segment.extProto_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(segment.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!segment.extProto_.isEmpty()) {
                        if (!this.extProtoBuilder_.t()) {
                            this.extProtoBuilder_.a(segment.extProto_);
                        } else {
                            this.extProtoBuilder_.h();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = segment.extProto_;
                            this.bitField0_ &= -2;
                            this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) segment).unknownFields);
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
                public com.explorestack.protobuf.adcom.Context.Data.Segment.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.Data.Segment.access$15000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.adcom.Context$Data$Segment r3 = (com.explorestack.protobuf.adcom.Context.Data.Segment) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.adcom.Context$Data$Segment r4 = (com.explorestack.protobuf.adcom.Context.Data.Segment) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Data.Segment.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$Data$Segment$Builder");
                }
            }

            public static Builder newBuilder(Segment segment) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(segment);
            }

            public static Segment parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private Segment(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Segment parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Segment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Segment parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Segment mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Segment parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private Segment() {
                this.memoizedIsInitialized = (byte) -1;
                this.id_ = "";
                this.name_ = "";
                this.value_ = "";
                this.extProto_ = Collections.emptyList();
            }

            public static Segment parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Segment parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Segment parseFrom(InputStream inputStream) throws IOException {
                return (Segment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Segment parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Segment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Segment(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                        this.id_ = nVar.J();
                                    } else if (K == 18) {
                                        this.name_ = nVar.J();
                                    } else if (K == 26) {
                                        this.value_ = nVar.J();
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

            public static Segment parseFrom(n nVar) throws IOException {
                return (Segment) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static Segment parseFrom(n nVar, y yVar) throws IOException {
                return (Segment) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes3.dex */
        public interface SegmentOrBuilder extends MessageOrBuilder {
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

            String getId();

            ByteString getIdBytes();

            String getName();

            ByteString getNameBytes();

            String getValue();

            ByteString getValueBytes();

            boolean hasExt();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public static Data getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.f14242m;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Data parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Data) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Data parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Data> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Data)) {
                return super.equals(obj);
            }
            Data data = (Data) obj;
            if (!getId().equals(data.getId()) || !getName().equals(data.getName()) || !getSegmentList().equals(data.getSegmentList()) || hasExt() != data.hasExt()) {
                return false;
            }
            if ((!hasExt() || getExt().equals(data.getExt())) && getExtProtoList().equals(data.getExtProtoList()) && this.unknownFields.equals(data.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public Struct getExt() {
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public x1 getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public Any getExtProto(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public e getExtProtoOrBuilder(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public List<? extends e> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public ByteString getIdBytes() {
            Object obj = this.id_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.name_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Data> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public Segment getSegment(int i10) {
            return this.segment_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public int getSegmentCount() {
            return this.segment_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public List<Segment> getSegmentList() {
            return this.segment_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public SegmentOrBuilder getSegmentOrBuilder(int i10) {
            return this.segment_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
        public List<? extends SegmentOrBuilder> getSegmentOrBuilderList() {
            return this.segment_;
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
            if (!getNameBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(2, this.name_);
            }
            for (int i12 = 0; i12 < this.segment_.size(); i12++) {
                i10 += CodedOutputStream.G(3, this.segment_.get(i12));
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

        @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
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
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getName().hashCode();
            if (getSegmentCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getSegmentList().hashCode();
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
            return b.f14244n.d(Data.class, Builder.class);
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
            return new Data();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
            }
            if (!getNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
            }
            for (int i10 = 0; i10 < this.segment_.size(); i10++) {
                codedOutputStream.L0(3, this.segment_.get(i10));
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
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements DataOrBuilder {
            private int bitField0_;
            private t1<Struct, Struct.Builder, x1> extBuilder_;
            private p1<Any, Any.Builder, e> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private Object id_;
            private Object name_;
            private p1<Segment, Segment.Builder, SegmentOrBuilder> segmentBuilder_;
            private List<Segment> segment_;

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureSegmentIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.segment_ = new ArrayList(this.segment_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14242m;
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

            private p1<Segment, Segment.Builder, SegmentOrBuilder> getSegmentFieldBuilder() {
                if (this.segmentBuilder_ == null) {
                    List<Segment> list = this.segment_;
                    boolean z10 = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z10 = false;
                    }
                    this.segmentBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.segment_ = null;
                }
                return this.segmentBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getSegmentFieldBuilder();
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

            public Builder addAllSegment(Iterable<? extends Segment> iterable) {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    ensureSegmentIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.segment_);
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

            public Builder addSegment(Segment segment) {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    segment.getClass();
                    ensureSegmentIsMutable();
                    this.segment_.add(segment);
                    onChanged();
                } else {
                    p1Var.e(segment);
                }
                return this;
            }

            public Segment.Builder addSegmentBuilder() {
                return getSegmentFieldBuilder().c(Segment.getDefaultInstance());
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

            public Builder clearId() {
                this.id_ = Data.getDefaultInstance().getId();
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.name_ = Data.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            public Builder clearSegment() {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    this.segment_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return b.f14242m;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public int getExtProtoCount() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public List<Any> getExtProtoList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.extProto_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public String getId() {
                Object obj = this.id_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public String getName() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.name_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.name_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public Segment getSegment(int i10) {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    return this.segment_.get(i10);
                }
                return p1Var.n(i10);
            }

            public Segment.Builder getSegmentBuilder(int i10) {
                return getSegmentFieldBuilder().k(i10);
            }

            public List<Segment.Builder> getSegmentBuilderList() {
                return getSegmentFieldBuilder().l();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public int getSegmentCount() {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    return this.segment_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public List<Segment> getSegmentList() {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.segment_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public SegmentOrBuilder getSegmentOrBuilder(int i10) {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    return this.segment_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public List<? extends SegmentOrBuilder> getSegmentOrBuilderList() {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.segment_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DataOrBuilder
            public boolean hasExt() {
                if (this.extBuilder_ == null && this.ext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14244n.d(Data.class, Builder.class);
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

            public Builder removeSegment(int i10) {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    ensureSegmentIsMutable();
                    this.segment_.remove(i10);
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

            public Builder setName(String str) {
                str.getClass();
                this.name_ = str;
                onChanged();
                return this;
            }

            public Builder setNameBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.name_ = byteString;
                onChanged();
                return this;
            }

            public Builder setSegment(int i10, Segment segment) {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    segment.getClass();
                    ensureSegmentIsMutable();
                    this.segment_.set(i10, segment);
                    onChanged();
                } else {
                    p1Var.w(i10, segment);
                }
                return this;
            }

            private Builder() {
                this.id_ = "";
                this.name_ = "";
                this.segment_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Data build() {
                Data buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Data buildPartial() {
                Data data = new Data(this);
                data.id_ = this.id_;
                data.name_ = this.name_;
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var != null) {
                    data.segment_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.segment_ = Collections.unmodifiableList(this.segment_);
                        this.bitField0_ &= -2;
                    }
                    data.segment_ = this.segment_;
                }
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    data.ext_ = this.ext_;
                } else {
                    data.ext_ = t1Var.a();
                }
                p1<Any, Any.Builder, e> p1Var2 = this.extProtoBuilder_;
                if (p1Var2 != null) {
                    data.extProto_ = p1Var2.f();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -3;
                    }
                    data.extProto_ = this.extProto_;
                }
                onBuilt();
                return data;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Data mo4630getDefaultInstanceForType() {
                return Data.getDefaultInstance();
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

            public Segment.Builder addSegmentBuilder(int i10) {
                return getSegmentFieldBuilder().b(i10, Segment.getDefaultInstance());
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
                this.name_ = "";
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    this.segment_ = Collections.emptyList();
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

            public Builder addSegment(int i10, Segment segment) {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    segment.getClass();
                    ensureSegmentIsMutable();
                    this.segment_.add(i10, segment);
                    onChanged();
                } else {
                    p1Var.d(i10, segment);
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
                if (message instanceof Data) {
                    return mergeFrom((Data) message);
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

            public Builder setSegment(int i10, Segment.Builder builder) {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    ensureSegmentIsMutable();
                    this.segment_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.id_ = "";
                this.name_ = "";
                this.segment_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder mergeFrom(Data data) {
                if (data == Data.getDefaultInstance()) {
                    return this;
                }
                if (!data.getId().isEmpty()) {
                    this.id_ = data.id_;
                    onChanged();
                }
                if (!data.getName().isEmpty()) {
                    this.name_ = data.name_;
                    onChanged();
                }
                if (this.segmentBuilder_ == null) {
                    if (!data.segment_.isEmpty()) {
                        if (this.segment_.isEmpty()) {
                            this.segment_ = data.segment_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureSegmentIsMutable();
                            this.segment_.addAll(data.segment_);
                        }
                        onChanged();
                    }
                } else if (!data.segment_.isEmpty()) {
                    if (!this.segmentBuilder_.t()) {
                        this.segmentBuilder_.a(data.segment_);
                    } else {
                        this.segmentBuilder_.h();
                        this.segmentBuilder_ = null;
                        this.segment_ = data.segment_;
                        this.bitField0_ &= -2;
                        this.segmentBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getSegmentFieldBuilder() : null;
                    }
                }
                if (data.hasExt()) {
                    mergeExt(data.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!data.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = data.extProto_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(data.extProto_);
                        }
                        onChanged();
                    }
                } else if (!data.extProto_.isEmpty()) {
                    if (!this.extProtoBuilder_.t()) {
                        this.extProtoBuilder_.a(data.extProto_);
                    } else {
                        this.extProtoBuilder_.h();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = data.extProto_;
                        this.bitField0_ &= -3;
                        this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) data).unknownFields);
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

            public Builder addSegment(Segment.Builder builder) {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    ensureSegmentIsMutable();
                    this.segment_.add(builder.build());
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

            public Builder addSegment(int i10, Segment.Builder builder) {
                p1<Segment, Segment.Builder, SegmentOrBuilder> p1Var = this.segmentBuilder_;
                if (p1Var == null) {
                    ensureSegmentIsMutable();
                    this.segment_.add(i10, builder.build());
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
            public com.explorestack.protobuf.adcom.Context.Data.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.Data.access$16700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.explorestack.protobuf.adcom.Context$Data r3 = (com.explorestack.protobuf.adcom.Context.Data) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.explorestack.protobuf.adcom.Context$Data r4 = (com.explorestack.protobuf.adcom.Context.Data) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Data.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$Data$Builder");
            }
        }

        public static Builder newBuilder(Data data) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(data);
        }

        public static Data parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Data(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Data parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Data) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Data parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Data mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Data parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Data() {
            this.memoizedIsInitialized = (byte) -1;
            this.id_ = "";
            this.name_ = "";
            this.segment_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        public static Data parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static Data parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Data parseFrom(InputStream inputStream) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Data parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Data(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                    this.id_ = nVar.J();
                                } else if (K == 18) {
                                    this.name_ = nVar.J();
                                } else if (K == 26) {
                                    if (!(z11 & true)) {
                                        this.segment_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.segment_.add(nVar.A(Segment.parser(), yVar));
                                } else if (K == 34) {
                                    if (!(z11 & true)) {
                                        this.extProto_ = new ArrayList();
                                        z11 |= true;
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
                    if (z11 & true) {
                        this.segment_ = Collections.unmodifiableList(this.segment_);
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
                this.segment_ = Collections.unmodifiableList(this.segment_);
            }
            if (z11 & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static Data parseFrom(n nVar) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static Data parseFrom(n nVar, y yVar) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes3.dex */
    public interface DataOrBuilder extends MessageOrBuilder {
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

        String getId();

        ByteString getIdBytes();

        String getName();

        ByteString getNameBytes();

        Data.Segment getSegment(int i10);

        int getSegmentCount();

        List<Data.Segment> getSegmentList();

        Data.SegmentOrBuilder getSegmentOrBuilder(int i10);

        List<? extends Data.SegmentOrBuilder> getSegmentOrBuilderList();

        boolean hasExt();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes3.dex */
    public static final class Device extends GeneratedMessageV3 implements DeviceOrBuilder {
        public static final int AUDIOCONTEXT_FIELD_NUMBER = 30;
        public static final int CARRIER_FIELD_NUMBER = 21;
        public static final int CONNECTION_FIELD_NUMBER = 29;
        public static final int CONTYPE_FIELD_NUMBER = 24;
        public static final int DNT_FIELD_NUMBER = 4;
        public static final int EXT_FIELD_NUMBER = 28;
        public static final int EXT_PROTO_FIELD_NUMBER = 27;
        public static final int GEOFETCH_FIELD_NUMBER = 25;
        public static final int GEO_FIELD_NUMBER = 26;
        public static final int HWV_FIELD_NUMBER = 10;
        public static final int H_FIELD_NUMBER = 11;
        public static final int IFA_FIELD_NUMBER = 3;
        public static final int IPTR_FIELD_NUMBER = 20;
        public static final int IPV6_FIELD_NUMBER = 18;
        public static final int IP_FIELD_NUMBER = 17;
        public static final int JS_FIELD_NUMBER = 15;
        public static final int LANG_FIELD_NUMBER = 16;
        public static final int LMT_FIELD_NUMBER = 5;
        public static final int MAKE_FIELD_NUMBER = 6;
        public static final int MCCMNCSIM_FIELD_NUMBER = 23;
        public static final int MCCMNC_FIELD_NUMBER = 22;
        public static final int MODEL_FIELD_NUMBER = 7;
        public static final int OSV_FIELD_NUMBER = 9;
        public static final int OS_FIELD_NUMBER = 8;
        public static final int PPI_FIELD_NUMBER = 13;
        public static final int PXRATIO_FIELD_NUMBER = 14;
        public static final int TYPE_FIELD_NUMBER = 1;
        public static final int UA_FIELD_NUMBER = 2;
        public static final int W_FIELD_NUMBER = 12;
        public static final int XFF_FIELD_NUMBER = 19;
        private static final long serialVersionUID = 0;
        private AudioContext audioContext_;
        private volatile Object carrier_;
        private Connection connection_;
        private int contype_;
        private boolean dnt_;
        private List<Any> extProto_;
        private Struct ext_;
        private Geo geo_;
        private boolean geofetch_;
        private int h_;
        private volatile Object hwv_;
        private volatile Object ifa_;
        private volatile Object ip_;
        private boolean iptr_;
        private volatile Object ipv6_;
        private boolean js_;
        private volatile Object lang_;
        private boolean lmt_;
        private volatile Object make_;
        private volatile Object mccmnc_;
        private volatile Object mccmncsim_;
        private byte memoizedIsInitialized;
        private volatile Object model_;
        private int os_;
        private volatile Object osv_;
        private int ppi_;
        private float pxratio_;
        private int type_;
        private volatile Object ua_;
        private int w_;
        private volatile Object xff_;
        private static final Device DEFAULT_INSTANCE = new Device();
        private static final j1<Device> PARSER = new com.explorestack.protobuf.b<Device>() { // from class: com.explorestack.protobuf.adcom.Context.Device.1
            @Override // com.explorestack.protobuf.j1
            public Device parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Device(nVar, yVar);
            }
        };

        /* loaded from: classes3.dex */
        public static final class AudioContext extends GeneratedMessageV3 implements AudioContextOrBuilder {
            public static final int ISAUDIOPLAYING_FIELD_NUMBER = 1;
            public static final int VOLUMELEVEL_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private boolean isAudioPlaying_;
            private byte memoizedIsInitialized;
            private float volumelevel_;
            private static final AudioContext DEFAULT_INSTANCE = new AudioContext();
            private static final j1<AudioContext> PARSER = new com.explorestack.protobuf.b<AudioContext>() { // from class: com.explorestack.protobuf.adcom.Context.Device.AudioContext.1
                @Override // com.explorestack.protobuf.j1
                public AudioContext parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new AudioContext(nVar, yVar);
                }
            };

            public static AudioContext getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14262w;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static AudioContext parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (AudioContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static AudioContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<AudioContext> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof AudioContext)) {
                    return super.equals(obj);
                }
                AudioContext audioContext = (AudioContext) obj;
                if (getIsAudioPlaying() == audioContext.getIsAudioPlaying() && Float.floatToIntBits(getVolumelevel()) == Float.floatToIntBits(audioContext.getVolumelevel()) && this.unknownFields.equals(audioContext.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Device.AudioContextOrBuilder
            public boolean getIsAudioPlaying() {
                return this.isAudioPlaying_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<AudioContext> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                boolean z10 = this.isAudioPlaying_;
                if (z10) {
                    i10 = CodedOutputStream.e(1, z10);
                } else {
                    i10 = 0;
                }
                float f10 = this.volumelevel_;
                if (f10 != 0.0f) {
                    i10 += CodedOutputStream.r(2, f10);
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Device.AudioContextOrBuilder
            public float getVolumelevel() {
                return this.volumelevel_;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + i0.d(getIsAudioPlaying())) * 37) + 2) * 53) + Float.floatToIntBits(getVolumelevel())) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14264x.d(AudioContext.class, Builder.class);
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
                return new AudioContext();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                boolean z10 = this.isAudioPlaying_;
                if (z10) {
                    codedOutputStream.n0(1, z10);
                }
                float f10 = this.volumelevel_;
                if (f10 != 0.0f) {
                    codedOutputStream.B0(2, f10);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements AudioContextOrBuilder {
                private boolean isAudioPlaying_;
                private float volumelevel_;

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.f14262w;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                public Builder clearIsAudioPlaying() {
                    this.isAudioPlaying_ = false;
                    onChanged();
                    return this;
                }

                public Builder clearVolumelevel() {
                    this.volumelevel_ = 0.0f;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.f14262w;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Device.AudioContextOrBuilder
                public boolean getIsAudioPlaying() {
                    return this.isAudioPlaying_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Device.AudioContextOrBuilder
                public float getVolumelevel() {
                    return this.volumelevel_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.f14264x.d(AudioContext.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder setIsAudioPlaying(boolean z10) {
                    this.isAudioPlaying_ = z10;
                    onChanged();
                    return this;
                }

                public Builder setVolumelevel(float f10) {
                    this.volumelevel_ = f10;
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
                public AudioContext build() {
                    AudioContext buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public AudioContext buildPartial() {
                    AudioContext audioContext = new AudioContext(this);
                    audioContext.isAudioPlaying_ = this.isAudioPlaying_;
                    audioContext.volumelevel_ = this.volumelevel_;
                    onBuilt();
                    return audioContext;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public AudioContext mo4630getDefaultInstanceForType() {
                    return AudioContext.getDefaultInstance();
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
                    this.isAudioPlaying_ = false;
                    this.volumelevel_ = 0.0f;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: clone */
                public Builder mo4628clone() {
                    return (Builder) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof AudioContext) {
                        return mergeFrom((AudioContext) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(AudioContext audioContext) {
                    if (audioContext == AudioContext.getDefaultInstance()) {
                        return this;
                    }
                    if (audioContext.getIsAudioPlaying()) {
                        setIsAudioPlaying(audioContext.getIsAudioPlaying());
                    }
                    if (audioContext.getVolumelevel() != 0.0f) {
                        setVolumelevel(audioContext.getVolumelevel());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) audioContext).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.adcom.Context.Device.AudioContext.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.Device.AudioContext.access$21500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.adcom.Context$Device$AudioContext r3 = (com.explorestack.protobuf.adcom.Context.Device.AudioContext) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.adcom.Context$Device$AudioContext r4 = (com.explorestack.protobuf.adcom.Context.Device.AudioContext) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Device.AudioContext.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$Device$AudioContext$Builder");
                }
            }

            public static Builder newBuilder(AudioContext audioContext) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(audioContext);
            }

            public static AudioContext parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private AudioContext(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static AudioContext parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (AudioContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static AudioContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public AudioContext mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static AudioContext parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private AudioContext() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static AudioContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static AudioContext parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            private AudioContext(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                    this.isAudioPlaying_ = nVar.q();
                                } else if (K != 21) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    this.volumelevel_ = nVar.w();
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

            public static AudioContext parseFrom(InputStream inputStream) throws IOException {
                return (AudioContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static AudioContext parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (AudioContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static AudioContext parseFrom(n nVar) throws IOException {
                return (AudioContext) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static AudioContext parseFrom(n nVar, y yVar) throws IOException {
                return (AudioContext) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes3.dex */
        public interface AudioContextOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            boolean getIsAudioPlaying();

            float getVolumelevel();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes3.dex */
        public static final class Connection extends GeneratedMessageV3 implements ConnectionOrBuilder {
            private static final Connection DEFAULT_INSTANCE = new Connection();
            private static final j1<Connection> PARSER = new com.explorestack.protobuf.b<Connection>() { // from class: com.explorestack.protobuf.adcom.Context.Device.Connection.1
                @Override // com.explorestack.protobuf.j1
                public Connection parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Connection(nVar, yVar);
                }
            };
            public static final int PROXY_FIELD_NUMBER = 2;
            public static final int TYPE_FIELD_NUMBER = 1;
            public static final int VPN_FIELD_NUMBER = 3;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private int proxy_;
            private int type_;
            private int vpn_;

            public static Connection getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14258u;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Connection parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Connection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Connection parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Connection> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Connection)) {
                    return super.equals(obj);
                }
                Connection connection = (Connection) obj;
                if (this.type_ == connection.type_ && this.proxy_ == connection.proxy_ && this.vpn_ == connection.vpn_ && this.unknownFields.equals(connection.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Connection> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
            public ConnectionStatus getProxy() {
                ConnectionStatus valueOf = ConnectionStatus.valueOf(this.proxy_);
                if (valueOf == null) {
                    return ConnectionStatus.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
            public int getProxyValue() {
                return this.proxy_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if (this.type_ != ConnectionType.CONNECTION_TYPE_INVALID.getNumber()) {
                    i10 = CodedOutputStream.l(1, this.type_);
                } else {
                    i10 = 0;
                }
                int i12 = this.proxy_;
                ConnectionStatus connectionStatus = ConnectionStatus.CONNECTION_STATUS_UNDEFINED;
                if (i12 != connectionStatus.getNumber()) {
                    i10 += CodedOutputStream.l(2, this.proxy_);
                }
                if (this.vpn_ != connectionStatus.getNumber()) {
                    i10 += CodedOutputStream.l(3, this.vpn_);
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
            public ConnectionType getType() {
                ConnectionType valueOf = ConnectionType.valueOf(this.type_);
                if (valueOf == null) {
                    return ConnectionType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
            public int getTypeValue() {
                return this.type_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
            public ConnectionStatus getVpn() {
                ConnectionStatus valueOf = ConnectionStatus.valueOf(this.vpn_);
                if (valueOf == null) {
                    return ConnectionStatus.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
            public int getVpnValue() {
                return this.vpn_;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.type_) * 37) + 2) * 53) + this.proxy_) * 37) + 3) * 53) + this.vpn_) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14260v.d(Connection.class, Builder.class);
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
                return new Connection();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.type_ != ConnectionType.CONNECTION_TYPE_INVALID.getNumber()) {
                    codedOutputStream.v0(1, this.type_);
                }
                int i10 = this.proxy_;
                ConnectionStatus connectionStatus = ConnectionStatus.CONNECTION_STATUS_UNDEFINED;
                if (i10 != connectionStatus.getNumber()) {
                    codedOutputStream.v0(2, this.proxy_);
                }
                if (this.vpn_ != connectionStatus.getNumber()) {
                    codedOutputStream.v0(3, this.vpn_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements ConnectionOrBuilder {
                private int proxy_;
                private int type_;
                private int vpn_;

                public static final Descriptors.Descriptor getDescriptor() {
                    return b.f14258u;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                public Builder clearProxy() {
                    this.proxy_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearType() {
                    this.type_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearVpn() {
                    this.vpn_ = 0;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return b.f14258u;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
                public ConnectionStatus getProxy() {
                    ConnectionStatus valueOf = ConnectionStatus.valueOf(this.proxy_);
                    if (valueOf == null) {
                        return ConnectionStatus.UNRECOGNIZED;
                    }
                    return valueOf;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
                public int getProxyValue() {
                    return this.proxy_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
                public ConnectionType getType() {
                    ConnectionType valueOf = ConnectionType.valueOf(this.type_);
                    if (valueOf == null) {
                        return ConnectionType.UNRECOGNIZED;
                    }
                    return valueOf;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
                public int getTypeValue() {
                    return this.type_;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
                public ConnectionStatus getVpn() {
                    ConnectionStatus valueOf = ConnectionStatus.valueOf(this.vpn_);
                    if (valueOf == null) {
                        return ConnectionStatus.UNRECOGNIZED;
                    }
                    return valueOf;
                }

                @Override // com.explorestack.protobuf.adcom.Context.Device.ConnectionOrBuilder
                public int getVpnValue() {
                    return this.vpn_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return b.f14260v.d(Connection.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder setProxy(ConnectionStatus connectionStatus) {
                    connectionStatus.getClass();
                    this.proxy_ = connectionStatus.getNumber();
                    onChanged();
                    return this;
                }

                public Builder setProxyValue(int i10) {
                    this.proxy_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setType(ConnectionType connectionType) {
                    connectionType.getClass();
                    this.type_ = connectionType.getNumber();
                    onChanged();
                    return this;
                }

                public Builder setTypeValue(int i10) {
                    this.type_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setVpn(ConnectionStatus connectionStatus) {
                    connectionStatus.getClass();
                    this.vpn_ = connectionStatus.getNumber();
                    onChanged();
                    return this;
                }

                public Builder setVpnValue(int i10) {
                    this.vpn_ = i10;
                    onChanged();
                    return this;
                }

                private Builder() {
                    this.type_ = 0;
                    this.proxy_ = 0;
                    this.vpn_ = 0;
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Connection build() {
                    Connection buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Connection buildPartial() {
                    Connection connection = new Connection(this);
                    connection.type_ = this.type_;
                    connection.proxy_ = this.proxy_;
                    connection.vpn_ = this.vpn_;
                    onBuilt();
                    return connection;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Connection mo4630getDefaultInstanceForType() {
                    return Connection.getDefaultInstance();
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
                    this.type_ = 0;
                    this.proxy_ = 0;
                    this.vpn_ = 0;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: clone */
                public Builder mo4628clone() {
                    return (Builder) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Connection) {
                        return mergeFrom((Connection) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.type_ = 0;
                    this.proxy_ = 0;
                    this.vpn_ = 0;
                    maybeForceBuilderInitialization();
                }

                public Builder mergeFrom(Connection connection) {
                    if (connection == Connection.getDefaultInstance()) {
                        return this;
                    }
                    if (connection.type_ != 0) {
                        setTypeValue(connection.getTypeValue());
                    }
                    if (connection.proxy_ != 0) {
                        setProxyValue(connection.getProxyValue());
                    }
                    if (connection.vpn_ != 0) {
                        setVpnValue(connection.getVpnValue());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) connection).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.adcom.Context.Device.Connection.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.Device.Connection.access$20600()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        com.explorestack.protobuf.adcom.Context$Device$Connection r3 = (com.explorestack.protobuf.adcom.Context.Device.Connection) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        com.explorestack.protobuf.adcom.Context$Device$Connection r4 = (com.explorestack.protobuf.adcom.Context.Device.Connection) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Device.Connection.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$Device$Connection$Builder");
                }
            }

            public static Builder newBuilder(Connection connection) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(connection);
            }

            public static Connection parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private Connection(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Connection parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Connection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Connection parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Connection mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Connection parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private Connection() {
                this.memoizedIsInitialized = (byte) -1;
                this.type_ = 0;
                this.proxy_ = 0;
                this.vpn_ = 0;
            }

            public static Connection parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Connection parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Connection parseFrom(InputStream inputStream) throws IOException {
                return (Connection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Connection parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Connection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            private Connection(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                    this.type_ = nVar.t();
                                } else if (K == 16) {
                                    this.proxy_ = nVar.t();
                                } else if (K != 24) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    this.vpn_ = nVar.t();
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

            public static Connection parseFrom(n nVar) throws IOException {
                return (Connection) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static Connection parseFrom(n nVar, y yVar) throws IOException {
                return (Connection) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes3.dex */
        public interface ConnectionOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            ConnectionStatus getProxy();

            int getProxyValue();

            ConnectionType getType();

            int getTypeValue();

            ConnectionStatus getVpn();

            int getVpnValue();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public static Device getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.f14254s;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Device parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Device) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Device parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Device> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Device)) {
                return super.equals(obj);
            }
            Device device = (Device) obj;
            if (this.type_ != device.type_ || !getUa().equals(device.getUa()) || !getIfa().equals(device.getIfa()) || getDnt() != device.getDnt() || getLmt() != device.getLmt() || !getMake().equals(device.getMake()) || !getModel().equals(device.getModel()) || this.os_ != device.os_ || !getOsv().equals(device.getOsv()) || !getHwv().equals(device.getHwv()) || getH() != device.getH() || getW() != device.getW() || getPpi() != device.getPpi() || Float.floatToIntBits(getPxratio()) != Float.floatToIntBits(device.getPxratio()) || getJs() != device.getJs() || !getLang().equals(device.getLang()) || !getIp().equals(device.getIp()) || !getIpv6().equals(device.getIpv6()) || !getXff().equals(device.getXff()) || getIptr() != device.getIptr() || !getCarrier().equals(device.getCarrier()) || !getMccmnc().equals(device.getMccmnc()) || !getMccmncsim().equals(device.getMccmncsim()) || this.contype_ != device.contype_ || getGeofetch() != device.getGeofetch() || hasGeo() != device.hasGeo()) {
                return false;
            }
            if ((hasGeo() && !getGeo().equals(device.getGeo())) || hasConnection() != device.hasConnection()) {
                return false;
            }
            if ((hasConnection() && !getConnection().equals(device.getConnection())) || hasAudioContext() != device.hasAudioContext()) {
                return false;
            }
            if ((hasAudioContext() && !getAudioContext().equals(device.getAudioContext())) || hasExt() != device.hasExt()) {
                return false;
            }
            if ((!hasExt() || getExt().equals(device.getExt())) && getExtProtoList().equals(device.getExtProtoList()) && this.unknownFields.equals(device.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public AudioContext getAudioContext() {
            AudioContext audioContext = this.audioContext_;
            if (audioContext == null) {
                return AudioContext.getDefaultInstance();
            }
            return audioContext;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public AudioContextOrBuilder getAudioContextOrBuilder() {
            return getAudioContext();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getCarrier() {
            Object obj = this.carrier_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.carrier_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getCarrierBytes() {
            Object obj = this.carrier_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.carrier_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public Connection getConnection() {
            Connection connection = this.connection_;
            if (connection == null) {
                return Connection.getDefaultInstance();
            }
            return connection;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ConnectionOrBuilder getConnectionOrBuilder() {
            return getConnection();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ConnectionType getContype() {
            ConnectionType valueOf = ConnectionType.valueOf(this.contype_);
            if (valueOf == null) {
                return ConnectionType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public int getContypeValue() {
            return this.contype_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public boolean getDnt() {
            return this.dnt_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public Struct getExt() {
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public x1 getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public Any getExtProto(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public e getExtProtoOrBuilder(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public List<? extends e> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public Geo getGeo() {
            Geo geo = this.geo_;
            if (geo == null) {
                return Geo.getDefaultInstance();
            }
            return geo;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public GeoOrBuilder getGeoOrBuilder() {
            return getGeo();
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public boolean getGeofetch() {
            return this.geofetch_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public int getH() {
            return this.h_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getHwv() {
            Object obj = this.hwv_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.hwv_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getHwvBytes() {
            Object obj = this.hwv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.hwv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getIfa() {
            Object obj = this.ifa_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ifa_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getIfaBytes() {
            Object obj = this.ifa_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ifa_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getIp() {
            Object obj = this.ip_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ip_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getIpBytes() {
            Object obj = this.ip_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ip_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public boolean getIptr() {
            return this.iptr_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getIpv6() {
            Object obj = this.ipv6_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ipv6_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getIpv6Bytes() {
            Object obj = this.ipv6_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ipv6_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public boolean getJs() {
            return this.js_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getLang() {
            Object obj = this.lang_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lang_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getLangBytes() {
            Object obj = this.lang_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.lang_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public boolean getLmt() {
            return this.lmt_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getMake() {
            Object obj = this.make_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.make_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getMakeBytes() {
            Object obj = this.make_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.make_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getMccmnc() {
            Object obj = this.mccmnc_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.mccmnc_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getMccmncBytes() {
            Object obj = this.mccmnc_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.mccmnc_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getMccmncsim() {
            Object obj = this.mccmncsim_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.mccmncsim_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getMccmncsimBytes() {
            Object obj = this.mccmncsim_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.mccmncsim_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getModel() {
            Object obj = this.model_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.model_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getModelBytes() {
            Object obj = this.model_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.model_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public OS getOs() {
            OS valueOf = OS.valueOf(this.os_);
            if (valueOf == null) {
                return OS.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public int getOsValue() {
            return this.os_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getOsv() {
            Object obj = this.osv_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.osv_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getOsvBytes() {
            Object obj = this.osv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.osv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Device> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public int getPpi() {
            return this.ppi_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public float getPxratio() {
            return this.pxratio_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (this.type_ != DeviceType.DEVICE_TYPE_INVALID.getNumber()) {
                i10 = CodedOutputStream.l(1, this.type_);
            } else {
                i10 = 0;
            }
            if (!getUaBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(2, this.ua_);
            }
            if (!getIfaBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(3, this.ifa_);
            }
            boolean z10 = this.dnt_;
            if (z10) {
                i10 += CodedOutputStream.e(4, z10);
            }
            boolean z11 = this.lmt_;
            if (z11) {
                i10 += CodedOutputStream.e(5, z11);
            }
            if (!getMakeBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(6, this.make_);
            }
            if (!getModelBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(7, this.model_);
            }
            if (this.os_ != OS.OS_INVALID.getNumber()) {
                i10 += CodedOutputStream.l(8, this.os_);
            }
            if (!getOsvBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(9, this.osv_);
            }
            if (!getHwvBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(10, this.hwv_);
            }
            int i12 = this.h_;
            if (i12 != 0) {
                i10 += CodedOutputStream.Y(11, i12);
            }
            int i13 = this.w_;
            if (i13 != 0) {
                i10 += CodedOutputStream.Y(12, i13);
            }
            int i14 = this.ppi_;
            if (i14 != 0) {
                i10 += CodedOutputStream.Y(13, i14);
            }
            float f10 = this.pxratio_;
            if (f10 != 0.0f) {
                i10 += CodedOutputStream.r(14, f10);
            }
            boolean z12 = this.js_;
            if (z12) {
                i10 += CodedOutputStream.e(15, z12);
            }
            if (!getLangBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(16, this.lang_);
            }
            if (!getIpBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(17, this.ip_);
            }
            if (!getIpv6Bytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(18, this.ipv6_);
            }
            if (!getXffBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(19, this.xff_);
            }
            boolean z13 = this.iptr_;
            if (z13) {
                i10 += CodedOutputStream.e(20, z13);
            }
            if (!getCarrierBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(21, this.carrier_);
            }
            if (!getMccmncBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(22, this.mccmnc_);
            }
            if (!getMccmncsimBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(23, this.mccmncsim_);
            }
            if (this.contype_ != ConnectionType.CONNECTION_TYPE_INVALID.getNumber()) {
                i10 += CodedOutputStream.l(24, this.contype_);
            }
            boolean z14 = this.geofetch_;
            if (z14) {
                i10 += CodedOutputStream.e(25, z14);
            }
            if (this.geo_ != null) {
                i10 += CodedOutputStream.G(26, getGeo());
            }
            for (int i15 = 0; i15 < this.extProto_.size(); i15++) {
                i10 += CodedOutputStream.G(27, this.extProto_.get(i15));
            }
            if (this.ext_ != null) {
                i10 += CodedOutputStream.G(28, getExt());
            }
            if (this.connection_ != null) {
                i10 += CodedOutputStream.G(29, getConnection());
            }
            if (this.audioContext_ != null) {
                i10 += CodedOutputStream.G(30, getAudioContext());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public DeviceType getType() {
            DeviceType valueOf = DeviceType.valueOf(this.type_);
            if (valueOf == null) {
                return DeviceType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public int getTypeValue() {
            return this.type_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getUa() {
            Object obj = this.ua_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ua_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getUaBytes() {
            Object obj = this.ua_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ua_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public int getW() {
            return this.w_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public String getXff() {
            Object obj = this.xff_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.xff_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public ByteString getXffBytes() {
            Object obj = this.xff_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.xff_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public boolean hasAudioContext() {
            if (this.audioContext_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public boolean hasConnection() {
            if (this.connection_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public boolean hasExt() {
            if (this.ext_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
        public boolean hasGeo() {
            if (this.geo_ != null) {
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
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.type_) * 37) + 2) * 53) + getUa().hashCode()) * 37) + 3) * 53) + getIfa().hashCode()) * 37) + 4) * 53) + i0.d(getDnt())) * 37) + 5) * 53) + i0.d(getLmt())) * 37) + 6) * 53) + getMake().hashCode()) * 37) + 7) * 53) + getModel().hashCode()) * 37) + 8) * 53) + this.os_) * 37) + 9) * 53) + getOsv().hashCode()) * 37) + 10) * 53) + getHwv().hashCode()) * 37) + 11) * 53) + getH()) * 37) + 12) * 53) + getW()) * 37) + 13) * 53) + getPpi()) * 37) + 14) * 53) + Float.floatToIntBits(getPxratio())) * 37) + 15) * 53) + i0.d(getJs())) * 37) + 16) * 53) + getLang().hashCode()) * 37) + 17) * 53) + getIp().hashCode()) * 37) + 18) * 53) + getIpv6().hashCode()) * 37) + 19) * 53) + getXff().hashCode()) * 37) + 20) * 53) + i0.d(getIptr())) * 37) + 21) * 53) + getCarrier().hashCode()) * 37) + 22) * 53) + getMccmnc().hashCode()) * 37) + 23) * 53) + getMccmncsim().hashCode()) * 37) + 24) * 53) + this.contype_) * 37) + 25) * 53) + i0.d(getGeofetch());
            if (hasGeo()) {
                hashCode = (((hashCode * 37) + 26) * 53) + getGeo().hashCode();
            }
            if (hasConnection()) {
                hashCode = (((hashCode * 37) + 29) * 53) + getConnection().hashCode();
            }
            if (hasAudioContext()) {
                hashCode = (((hashCode * 37) + 30) * 53) + getAudioContext().hashCode();
            }
            if (hasExt()) {
                hashCode = (((hashCode * 37) + 28) * 53) + getExt().hashCode();
            }
            if (getExtProtoCount() > 0) {
                hashCode = (((hashCode * 37) + 27) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.f14256t.d(Device.class, Builder.class);
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
            return new Device();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.type_ != DeviceType.DEVICE_TYPE_INVALID.getNumber()) {
                codedOutputStream.v0(1, this.type_);
            }
            if (!getUaBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.ua_);
            }
            if (!getIfaBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.ifa_);
            }
            boolean z10 = this.dnt_;
            if (z10) {
                codedOutputStream.n0(4, z10);
            }
            boolean z11 = this.lmt_;
            if (z11) {
                codedOutputStream.n0(5, z11);
            }
            if (!getMakeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.make_);
            }
            if (!getModelBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.model_);
            }
            if (this.os_ != OS.OS_INVALID.getNumber()) {
                codedOutputStream.v0(8, this.os_);
            }
            if (!getOsvBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.osv_);
            }
            if (!getHwvBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.hwv_);
            }
            int i10 = this.h_;
            if (i10 != 0) {
                codedOutputStream.c1(11, i10);
            }
            int i11 = this.w_;
            if (i11 != 0) {
                codedOutputStream.c1(12, i11);
            }
            int i12 = this.ppi_;
            if (i12 != 0) {
                codedOutputStream.c1(13, i12);
            }
            float f10 = this.pxratio_;
            if (f10 != 0.0f) {
                codedOutputStream.B0(14, f10);
            }
            boolean z12 = this.js_;
            if (z12) {
                codedOutputStream.n0(15, z12);
            }
            if (!getLangBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 16, this.lang_);
            }
            if (!getIpBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 17, this.ip_);
            }
            if (!getIpv6Bytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 18, this.ipv6_);
            }
            if (!getXffBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 19, this.xff_);
            }
            boolean z13 = this.iptr_;
            if (z13) {
                codedOutputStream.n0(20, z13);
            }
            if (!getCarrierBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 21, this.carrier_);
            }
            if (!getMccmncBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 22, this.mccmnc_);
            }
            if (!getMccmncsimBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 23, this.mccmncsim_);
            }
            if (this.contype_ != ConnectionType.CONNECTION_TYPE_INVALID.getNumber()) {
                codedOutputStream.v0(24, this.contype_);
            }
            boolean z14 = this.geofetch_;
            if (z14) {
                codedOutputStream.n0(25, z14);
            }
            if (this.geo_ != null) {
                codedOutputStream.L0(26, getGeo());
            }
            for (int i13 = 0; i13 < this.extProto_.size(); i13++) {
                codedOutputStream.L0(27, this.extProto_.get(i13));
            }
            if (this.ext_ != null) {
                codedOutputStream.L0(28, getExt());
            }
            if (this.connection_ != null) {
                codedOutputStream.L0(29, getConnection());
            }
            if (this.audioContext_ != null) {
                codedOutputStream.L0(30, getAudioContext());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements DeviceOrBuilder {
            private t1<AudioContext, AudioContext.Builder, AudioContextOrBuilder> audioContextBuilder_;
            private AudioContext audioContext_;
            private int bitField0_;
            private Object carrier_;
            private t1<Connection, Connection.Builder, ConnectionOrBuilder> connectionBuilder_;
            private Connection connection_;
            private int contype_;
            private boolean dnt_;
            private t1<Struct, Struct.Builder, x1> extBuilder_;
            private p1<Any, Any.Builder, e> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private t1<Geo, Geo.Builder, GeoOrBuilder> geoBuilder_;
            private Geo geo_;
            private boolean geofetch_;
            private int h_;
            private Object hwv_;
            private Object ifa_;
            private Object ip_;
            private boolean iptr_;
            private Object ipv6_;
            private boolean js_;
            private Object lang_;
            private boolean lmt_;
            private Object make_;
            private Object mccmnc_;
            private Object mccmncsim_;
            private Object model_;
            private int os_;
            private Object osv_;
            private int ppi_;
            private float pxratio_;
            private int type_;
            private Object ua_;
            private int w_;
            private Object xff_;

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 1;
                }
            }

            private t1<AudioContext, AudioContext.Builder, AudioContextOrBuilder> getAudioContextFieldBuilder() {
                if (this.audioContextBuilder_ == null) {
                    this.audioContextBuilder_ = new t1<>(getAudioContext(), getParentForChildren(), isClean());
                    this.audioContext_ = null;
                }
                return this.audioContextBuilder_;
            }

            private t1<Connection, Connection.Builder, ConnectionOrBuilder> getConnectionFieldBuilder() {
                if (this.connectionBuilder_ == null) {
                    this.connectionBuilder_ = new t1<>(getConnection(), getParentForChildren(), isClean());
                    this.connection_ = null;
                }
                return this.connectionBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14254s;
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

            private t1<Geo, Geo.Builder, GeoOrBuilder> getGeoFieldBuilder() {
                if (this.geoBuilder_ == null) {
                    this.geoBuilder_ = new t1<>(getGeo(), getParentForChildren(), isClean());
                    this.geo_ = null;
                }
                return this.geoBuilder_;
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

            public Builder clearAudioContext() {
                if (this.audioContextBuilder_ == null) {
                    this.audioContext_ = null;
                    onChanged();
                } else {
                    this.audioContext_ = null;
                    this.audioContextBuilder_ = null;
                }
                return this;
            }

            public Builder clearCarrier() {
                this.carrier_ = Device.getDefaultInstance().getCarrier();
                onChanged();
                return this;
            }

            public Builder clearConnection() {
                if (this.connectionBuilder_ == null) {
                    this.connection_ = null;
                    onChanged();
                } else {
                    this.connection_ = null;
                    this.connectionBuilder_ = null;
                }
                return this;
            }

            public Builder clearContype() {
                this.contype_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDnt() {
                this.dnt_ = false;
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

            public Builder clearGeo() {
                if (this.geoBuilder_ == null) {
                    this.geo_ = null;
                    onChanged();
                } else {
                    this.geo_ = null;
                    this.geoBuilder_ = null;
                }
                return this;
            }

            public Builder clearGeofetch() {
                this.geofetch_ = false;
                onChanged();
                return this;
            }

            public Builder clearH() {
                this.h_ = 0;
                onChanged();
                return this;
            }

            public Builder clearHwv() {
                this.hwv_ = Device.getDefaultInstance().getHwv();
                onChanged();
                return this;
            }

            public Builder clearIfa() {
                this.ifa_ = Device.getDefaultInstance().getIfa();
                onChanged();
                return this;
            }

            public Builder clearIp() {
                this.ip_ = Device.getDefaultInstance().getIp();
                onChanged();
                return this;
            }

            public Builder clearIptr() {
                this.iptr_ = false;
                onChanged();
                return this;
            }

            public Builder clearIpv6() {
                this.ipv6_ = Device.getDefaultInstance().getIpv6();
                onChanged();
                return this;
            }

            public Builder clearJs() {
                this.js_ = false;
                onChanged();
                return this;
            }

            public Builder clearLang() {
                this.lang_ = Device.getDefaultInstance().getLang();
                onChanged();
                return this;
            }

            public Builder clearLmt() {
                this.lmt_ = false;
                onChanged();
                return this;
            }

            public Builder clearMake() {
                this.make_ = Device.getDefaultInstance().getMake();
                onChanged();
                return this;
            }

            public Builder clearMccmnc() {
                this.mccmnc_ = Device.getDefaultInstance().getMccmnc();
                onChanged();
                return this;
            }

            public Builder clearMccmncsim() {
                this.mccmncsim_ = Device.getDefaultInstance().getMccmncsim();
                onChanged();
                return this;
            }

            public Builder clearModel() {
                this.model_ = Device.getDefaultInstance().getModel();
                onChanged();
                return this;
            }

            public Builder clearOs() {
                this.os_ = 0;
                onChanged();
                return this;
            }

            public Builder clearOsv() {
                this.osv_ = Device.getDefaultInstance().getOsv();
                onChanged();
                return this;
            }

            public Builder clearPpi() {
                this.ppi_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPxratio() {
                this.pxratio_ = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.type_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUa() {
                this.ua_ = Device.getDefaultInstance().getUa();
                onChanged();
                return this;
            }

            public Builder clearW() {
                this.w_ = 0;
                onChanged();
                return this;
            }

            public Builder clearXff() {
                this.xff_ = Device.getDefaultInstance().getXff();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public AudioContext getAudioContext() {
                t1<AudioContext, AudioContext.Builder, AudioContextOrBuilder> t1Var = this.audioContextBuilder_;
                if (t1Var == null) {
                    AudioContext audioContext = this.audioContext_;
                    if (audioContext == null) {
                        return AudioContext.getDefaultInstance();
                    }
                    return audioContext;
                }
                return t1Var.e();
            }

            public AudioContext.Builder getAudioContextBuilder() {
                onChanged();
                return getAudioContextFieldBuilder().d();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public AudioContextOrBuilder getAudioContextOrBuilder() {
                t1<AudioContext, AudioContext.Builder, AudioContextOrBuilder> t1Var = this.audioContextBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                AudioContext audioContext = this.audioContext_;
                if (audioContext == null) {
                    return AudioContext.getDefaultInstance();
                }
                return audioContext;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getCarrier() {
                Object obj = this.carrier_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.carrier_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getCarrierBytes() {
                Object obj = this.carrier_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.carrier_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public Connection getConnection() {
                t1<Connection, Connection.Builder, ConnectionOrBuilder> t1Var = this.connectionBuilder_;
                if (t1Var == null) {
                    Connection connection = this.connection_;
                    if (connection == null) {
                        return Connection.getDefaultInstance();
                    }
                    return connection;
                }
                return t1Var.e();
            }

            public Connection.Builder getConnectionBuilder() {
                onChanged();
                return getConnectionFieldBuilder().d();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ConnectionOrBuilder getConnectionOrBuilder() {
                t1<Connection, Connection.Builder, ConnectionOrBuilder> t1Var = this.connectionBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Connection connection = this.connection_;
                if (connection == null) {
                    return Connection.getDefaultInstance();
                }
                return connection;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ConnectionType getContype() {
                ConnectionType valueOf = ConnectionType.valueOf(this.contype_);
                if (valueOf == null) {
                    return ConnectionType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public int getContypeValue() {
                return this.contype_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return b.f14254s;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public boolean getDnt() {
                return this.dnt_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public int getExtProtoCount() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public List<Any> getExtProtoList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.extProto_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public Geo getGeo() {
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var == null) {
                    Geo geo = this.geo_;
                    if (geo == null) {
                        return Geo.getDefaultInstance();
                    }
                    return geo;
                }
                return t1Var.e();
            }

            public Geo.Builder getGeoBuilder() {
                onChanged();
                return getGeoFieldBuilder().d();
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public GeoOrBuilder getGeoOrBuilder() {
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Geo geo = this.geo_;
                if (geo == null) {
                    return Geo.getDefaultInstance();
                }
                return geo;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public boolean getGeofetch() {
                return this.geofetch_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public int getH() {
                return this.h_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getHwv() {
                Object obj = this.hwv_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.hwv_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getHwvBytes() {
                Object obj = this.hwv_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.hwv_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getIfa() {
                Object obj = this.ifa_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ifa_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getIfaBytes() {
                Object obj = this.ifa_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ifa_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getIp() {
                Object obj = this.ip_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ip_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getIpBytes() {
                Object obj = this.ip_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ip_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public boolean getIptr() {
                return this.iptr_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getIpv6() {
                Object obj = this.ipv6_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ipv6_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getIpv6Bytes() {
                Object obj = this.ipv6_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ipv6_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public boolean getJs() {
                return this.js_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getLang() {
                Object obj = this.lang_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.lang_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getLangBytes() {
                Object obj = this.lang_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.lang_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public boolean getLmt() {
                return this.lmt_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getMake() {
                Object obj = this.make_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.make_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getMakeBytes() {
                Object obj = this.make_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.make_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getMccmnc() {
                Object obj = this.mccmnc_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.mccmnc_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getMccmncBytes() {
                Object obj = this.mccmnc_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.mccmnc_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getMccmncsim() {
                Object obj = this.mccmncsim_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.mccmncsim_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getMccmncsimBytes() {
                Object obj = this.mccmncsim_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.mccmncsim_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getModel() {
                Object obj = this.model_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.model_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getModelBytes() {
                Object obj = this.model_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.model_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public OS getOs() {
                OS valueOf = OS.valueOf(this.os_);
                if (valueOf == null) {
                    return OS.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public int getOsValue() {
                return this.os_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getOsv() {
                Object obj = this.osv_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.osv_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getOsvBytes() {
                Object obj = this.osv_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.osv_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public int getPpi() {
                return this.ppi_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public float getPxratio() {
                return this.pxratio_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public DeviceType getType() {
                DeviceType valueOf = DeviceType.valueOf(this.type_);
                if (valueOf == null) {
                    return DeviceType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public int getTypeValue() {
                return this.type_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getUa() {
                Object obj = this.ua_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.ua_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getUaBytes() {
                Object obj = this.ua_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.ua_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public int getW() {
                return this.w_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public String getXff() {
                Object obj = this.xff_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.xff_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public ByteString getXffBytes() {
                Object obj = this.xff_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.xff_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public boolean hasAudioContext() {
                if (this.audioContextBuilder_ == null && this.audioContext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public boolean hasConnection() {
                if (this.connectionBuilder_ == null && this.connection_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public boolean hasExt() {
                if (this.extBuilder_ == null && this.ext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.adcom.Context.DeviceOrBuilder
            public boolean hasGeo() {
                if (this.geoBuilder_ == null && this.geo_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14256t.d(Device.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeAudioContext(AudioContext audioContext) {
                t1<AudioContext, AudioContext.Builder, AudioContextOrBuilder> t1Var = this.audioContextBuilder_;
                if (t1Var == null) {
                    AudioContext audioContext2 = this.audioContext_;
                    if (audioContext2 != null) {
                        this.audioContext_ = AudioContext.newBuilder(audioContext2).mergeFrom(audioContext).buildPartial();
                    } else {
                        this.audioContext_ = audioContext;
                    }
                    onChanged();
                } else {
                    t1Var.g(audioContext);
                }
                return this;
            }

            public Builder mergeConnection(Connection connection) {
                t1<Connection, Connection.Builder, ConnectionOrBuilder> t1Var = this.connectionBuilder_;
                if (t1Var == null) {
                    Connection connection2 = this.connection_;
                    if (connection2 != null) {
                        this.connection_ = Connection.newBuilder(connection2).mergeFrom(connection).buildPartial();
                    } else {
                        this.connection_ = connection;
                    }
                    onChanged();
                } else {
                    t1Var.g(connection);
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

            public Builder mergeGeo(Geo geo) {
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var == null) {
                    Geo geo2 = this.geo_;
                    if (geo2 != null) {
                        this.geo_ = Geo.newBuilder(geo2).mergeFrom(geo).buildPartial();
                    } else {
                        this.geo_ = geo;
                    }
                    onChanged();
                } else {
                    t1Var.g(geo);
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

            public Builder setAudioContext(AudioContext audioContext) {
                t1<AudioContext, AudioContext.Builder, AudioContextOrBuilder> t1Var = this.audioContextBuilder_;
                if (t1Var == null) {
                    audioContext.getClass();
                    this.audioContext_ = audioContext;
                    onChanged();
                } else {
                    t1Var.i(audioContext);
                }
                return this;
            }

            public Builder setCarrier(String str) {
                str.getClass();
                this.carrier_ = str;
                onChanged();
                return this;
            }

            public Builder setCarrierBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.carrier_ = byteString;
                onChanged();
                return this;
            }

            public Builder setConnection(Connection connection) {
                t1<Connection, Connection.Builder, ConnectionOrBuilder> t1Var = this.connectionBuilder_;
                if (t1Var == null) {
                    connection.getClass();
                    this.connection_ = connection;
                    onChanged();
                } else {
                    t1Var.i(connection);
                }
                return this;
            }

            public Builder setContype(ConnectionType connectionType) {
                connectionType.getClass();
                this.contype_ = connectionType.getNumber();
                onChanged();
                return this;
            }

            public Builder setContypeValue(int i10) {
                this.contype_ = i10;
                onChanged();
                return this;
            }

            public Builder setDnt(boolean z10) {
                this.dnt_ = z10;
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

            public Builder setGeo(Geo geo) {
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var == null) {
                    geo.getClass();
                    this.geo_ = geo;
                    onChanged();
                } else {
                    t1Var.i(geo);
                }
                return this;
            }

            public Builder setGeofetch(boolean z10) {
                this.geofetch_ = z10;
                onChanged();
                return this;
            }

            public Builder setH(int i10) {
                this.h_ = i10;
                onChanged();
                return this;
            }

            public Builder setHwv(String str) {
                str.getClass();
                this.hwv_ = str;
                onChanged();
                return this;
            }

            public Builder setHwvBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.hwv_ = byteString;
                onChanged();
                return this;
            }

            public Builder setIfa(String str) {
                str.getClass();
                this.ifa_ = str;
                onChanged();
                return this;
            }

            public Builder setIfaBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.ifa_ = byteString;
                onChanged();
                return this;
            }

            public Builder setIp(String str) {
                str.getClass();
                this.ip_ = str;
                onChanged();
                return this;
            }

            public Builder setIpBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.ip_ = byteString;
                onChanged();
                return this;
            }

            public Builder setIptr(boolean z10) {
                this.iptr_ = z10;
                onChanged();
                return this;
            }

            public Builder setIpv6(String str) {
                str.getClass();
                this.ipv6_ = str;
                onChanged();
                return this;
            }

            public Builder setIpv6Bytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.ipv6_ = byteString;
                onChanged();
                return this;
            }

            public Builder setJs(boolean z10) {
                this.js_ = z10;
                onChanged();
                return this;
            }

            public Builder setLang(String str) {
                str.getClass();
                this.lang_ = str;
                onChanged();
                return this;
            }

            public Builder setLangBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.lang_ = byteString;
                onChanged();
                return this;
            }

            public Builder setLmt(boolean z10) {
                this.lmt_ = z10;
                onChanged();
                return this;
            }

            public Builder setMake(String str) {
                str.getClass();
                this.make_ = str;
                onChanged();
                return this;
            }

            public Builder setMakeBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.make_ = byteString;
                onChanged();
                return this;
            }

            public Builder setMccmnc(String str) {
                str.getClass();
                this.mccmnc_ = str;
                onChanged();
                return this;
            }

            public Builder setMccmncBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.mccmnc_ = byteString;
                onChanged();
                return this;
            }

            public Builder setMccmncsim(String str) {
                str.getClass();
                this.mccmncsim_ = str;
                onChanged();
                return this;
            }

            public Builder setMccmncsimBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.mccmncsim_ = byteString;
                onChanged();
                return this;
            }

            public Builder setModel(String str) {
                str.getClass();
                this.model_ = str;
                onChanged();
                return this;
            }

            public Builder setModelBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.model_ = byteString;
                onChanged();
                return this;
            }

            public Builder setOs(OS os2) {
                os2.getClass();
                this.os_ = os2.getNumber();
                onChanged();
                return this;
            }

            public Builder setOsValue(int i10) {
                this.os_ = i10;
                onChanged();
                return this;
            }

            public Builder setOsv(String str) {
                str.getClass();
                this.osv_ = str;
                onChanged();
                return this;
            }

            public Builder setOsvBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.osv_ = byteString;
                onChanged();
                return this;
            }

            public Builder setPpi(int i10) {
                this.ppi_ = i10;
                onChanged();
                return this;
            }

            public Builder setPxratio(float f10) {
                this.pxratio_ = f10;
                onChanged();
                return this;
            }

            public Builder setType(DeviceType deviceType) {
                deviceType.getClass();
                this.type_ = deviceType.getNumber();
                onChanged();
                return this;
            }

            public Builder setTypeValue(int i10) {
                this.type_ = i10;
                onChanged();
                return this;
            }

            public Builder setUa(String str) {
                str.getClass();
                this.ua_ = str;
                onChanged();
                return this;
            }

            public Builder setUaBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.ua_ = byteString;
                onChanged();
                return this;
            }

            public Builder setW(int i10) {
                this.w_ = i10;
                onChanged();
                return this;
            }

            public Builder setXff(String str) {
                str.getClass();
                this.xff_ = str;
                onChanged();
                return this;
            }

            public Builder setXffBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.xff_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.type_ = 0;
                this.ua_ = "";
                this.ifa_ = "";
                this.make_ = "";
                this.model_ = "";
                this.os_ = 0;
                this.osv_ = "";
                this.hwv_ = "";
                this.lang_ = "";
                this.ip_ = "";
                this.ipv6_ = "";
                this.xff_ = "";
                this.carrier_ = "";
                this.mccmnc_ = "";
                this.mccmncsim_ = "";
                this.contype_ = 0;
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Device build() {
                Device buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Device buildPartial() {
                Device device = new Device(this);
                device.type_ = this.type_;
                device.ua_ = this.ua_;
                device.ifa_ = this.ifa_;
                device.dnt_ = this.dnt_;
                device.lmt_ = this.lmt_;
                device.make_ = this.make_;
                device.model_ = this.model_;
                device.os_ = this.os_;
                device.osv_ = this.osv_;
                device.hwv_ = this.hwv_;
                device.h_ = this.h_;
                device.w_ = this.w_;
                device.ppi_ = this.ppi_;
                device.pxratio_ = this.pxratio_;
                device.js_ = this.js_;
                device.lang_ = this.lang_;
                device.ip_ = this.ip_;
                device.ipv6_ = this.ipv6_;
                device.xff_ = this.xff_;
                device.iptr_ = this.iptr_;
                device.carrier_ = this.carrier_;
                device.mccmnc_ = this.mccmnc_;
                device.mccmncsim_ = this.mccmncsim_;
                device.contype_ = this.contype_;
                device.geofetch_ = this.geofetch_;
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var == null) {
                    device.geo_ = this.geo_;
                } else {
                    device.geo_ = t1Var.a();
                }
                t1<Connection, Connection.Builder, ConnectionOrBuilder> t1Var2 = this.connectionBuilder_;
                if (t1Var2 == null) {
                    device.connection_ = this.connection_;
                } else {
                    device.connection_ = t1Var2.a();
                }
                t1<AudioContext, AudioContext.Builder, AudioContextOrBuilder> t1Var3 = this.audioContextBuilder_;
                if (t1Var3 == null) {
                    device.audioContext_ = this.audioContext_;
                } else {
                    device.audioContext_ = t1Var3.a();
                }
                t1<Struct, Struct.Builder, x1> t1Var4 = this.extBuilder_;
                if (t1Var4 == null) {
                    device.ext_ = this.ext_;
                } else {
                    device.ext_ = t1Var4.a();
                }
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    device.extProto_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -2;
                    }
                    device.extProto_ = this.extProto_;
                }
                onBuilt();
                return device;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Device mo4630getDefaultInstanceForType() {
                return Device.getDefaultInstance();
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
                this.ua_ = "";
                this.ifa_ = "";
                this.dnt_ = false;
                this.lmt_ = false;
                this.make_ = "";
                this.model_ = "";
                this.os_ = 0;
                this.osv_ = "";
                this.hwv_ = "";
                this.h_ = 0;
                this.w_ = 0;
                this.ppi_ = 0;
                this.pxratio_ = 0.0f;
                this.js_ = false;
                this.lang_ = "";
                this.ip_ = "";
                this.ipv6_ = "";
                this.xff_ = "";
                this.iptr_ = false;
                this.carrier_ = "";
                this.mccmnc_ = "";
                this.mccmncsim_ = "";
                this.contype_ = 0;
                this.geofetch_ = false;
                if (this.geoBuilder_ == null) {
                    this.geo_ = null;
                } else {
                    this.geo_ = null;
                    this.geoBuilder_ = null;
                }
                if (this.connectionBuilder_ == null) {
                    this.connection_ = null;
                } else {
                    this.connection_ = null;
                    this.connectionBuilder_ = null;
                }
                if (this.audioContextBuilder_ == null) {
                    this.audioContext_ = null;
                } else {
                    this.audioContext_ = null;
                    this.audioContextBuilder_ = null;
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

            public Builder setAudioContext(AudioContext.Builder builder) {
                t1<AudioContext, AudioContext.Builder, AudioContextOrBuilder> t1Var = this.audioContextBuilder_;
                if (t1Var == null) {
                    this.audioContext_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder setConnection(Connection.Builder builder) {
                t1<Connection, Connection.Builder, ConnectionOrBuilder> t1Var = this.connectionBuilder_;
                if (t1Var == null) {
                    this.connection_ = builder.build();
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

            public Builder setGeo(Geo.Builder builder) {
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var == null) {
                    this.geo_ = builder.build();
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
                if (message instanceof Device) {
                    return mergeFrom((Device) message);
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

            public Builder mergeFrom(Device device) {
                if (device == Device.getDefaultInstance()) {
                    return this;
                }
                if (device.type_ != 0) {
                    setTypeValue(device.getTypeValue());
                }
                if (!device.getUa().isEmpty()) {
                    this.ua_ = device.ua_;
                    onChanged();
                }
                if (!device.getIfa().isEmpty()) {
                    this.ifa_ = device.ifa_;
                    onChanged();
                }
                if (device.getDnt()) {
                    setDnt(device.getDnt());
                }
                if (device.getLmt()) {
                    setLmt(device.getLmt());
                }
                if (!device.getMake().isEmpty()) {
                    this.make_ = device.make_;
                    onChanged();
                }
                if (!device.getModel().isEmpty()) {
                    this.model_ = device.model_;
                    onChanged();
                }
                if (device.os_ != 0) {
                    setOsValue(device.getOsValue());
                }
                if (!device.getOsv().isEmpty()) {
                    this.osv_ = device.osv_;
                    onChanged();
                }
                if (!device.getHwv().isEmpty()) {
                    this.hwv_ = device.hwv_;
                    onChanged();
                }
                if (device.getH() != 0) {
                    setH(device.getH());
                }
                if (device.getW() != 0) {
                    setW(device.getW());
                }
                if (device.getPpi() != 0) {
                    setPpi(device.getPpi());
                }
                if (device.getPxratio() != 0.0f) {
                    setPxratio(device.getPxratio());
                }
                if (device.getJs()) {
                    setJs(device.getJs());
                }
                if (!device.getLang().isEmpty()) {
                    this.lang_ = device.lang_;
                    onChanged();
                }
                if (!device.getIp().isEmpty()) {
                    this.ip_ = device.ip_;
                    onChanged();
                }
                if (!device.getIpv6().isEmpty()) {
                    this.ipv6_ = device.ipv6_;
                    onChanged();
                }
                if (!device.getXff().isEmpty()) {
                    this.xff_ = device.xff_;
                    onChanged();
                }
                if (device.getIptr()) {
                    setIptr(device.getIptr());
                }
                if (!device.getCarrier().isEmpty()) {
                    this.carrier_ = device.carrier_;
                    onChanged();
                }
                if (!device.getMccmnc().isEmpty()) {
                    this.mccmnc_ = device.mccmnc_;
                    onChanged();
                }
                if (!device.getMccmncsim().isEmpty()) {
                    this.mccmncsim_ = device.mccmncsim_;
                    onChanged();
                }
                if (device.contype_ != 0) {
                    setContypeValue(device.getContypeValue());
                }
                if (device.getGeofetch()) {
                    setGeofetch(device.getGeofetch());
                }
                if (device.hasGeo()) {
                    mergeGeo(device.getGeo());
                }
                if (device.hasConnection()) {
                    mergeConnection(device.getConnection());
                }
                if (device.hasAudioContext()) {
                    mergeAudioContext(device.getAudioContext());
                }
                if (device.hasExt()) {
                    mergeExt(device.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!device.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = device.extProto_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(device.extProto_);
                        }
                        onChanged();
                    }
                } else if (!device.extProto_.isEmpty()) {
                    if (!this.extProtoBuilder_.t()) {
                        this.extProtoBuilder_.a(device.extProto_);
                    } else {
                        this.extProtoBuilder_.h();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = device.extProto_;
                        this.bitField0_ &= -2;
                        this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) device).unknownFields);
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

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.type_ = 0;
                this.ua_ = "";
                this.ifa_ = "";
                this.make_ = "";
                this.model_ = "";
                this.os_ = 0;
                this.osv_ = "";
                this.hwv_ = "";
                this.lang_ = "";
                this.ip_ = "";
                this.ipv6_ = "";
                this.xff_ = "";
                this.carrier_ = "";
                this.mccmnc_ = "";
                this.mccmncsim_ = "";
                this.contype_ = 0;
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.adcom.Context.Device.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.Device.access$25300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.explorestack.protobuf.adcom.Context$Device r3 = (com.explorestack.protobuf.adcom.Context.Device) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.explorestack.protobuf.adcom.Context$Device r4 = (com.explorestack.protobuf.adcom.Context.Device) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Device.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$Device$Builder");
            }
        }

        public static Builder newBuilder(Device device) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(device);
        }

        public static Device parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Device(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Device parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Device) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Device parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Device mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Device parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Device() {
            this.memoizedIsInitialized = (byte) -1;
            this.type_ = 0;
            this.ua_ = "";
            this.ifa_ = "";
            this.make_ = "";
            this.model_ = "";
            this.os_ = 0;
            this.osv_ = "";
            this.hwv_ = "";
            this.lang_ = "";
            this.ip_ = "";
            this.ipv6_ = "";
            this.xff_ = "";
            this.carrier_ = "";
            this.mccmnc_ = "";
            this.mccmncsim_ = "";
            this.contype_ = 0;
            this.extProto_ = Collections.emptyList();
        }

        public static Device parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static Device parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Device parseFrom(InputStream inputStream) throws IOException {
            return (Device) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Device parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Device) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Device parseFrom(n nVar) throws IOException {
            return (Device) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static Device parseFrom(n nVar, y yVar) throws IOException {
            return (Device) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Device(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            Object[] objArr = null;
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
                                this.ua_ = nVar.J();
                                continue;
                            case 26:
                                this.ifa_ = nVar.J();
                                continue;
                            case 32:
                                this.dnt_ = nVar.q();
                                continue;
                            case 40:
                                this.lmt_ = nVar.q();
                                continue;
                            case 50:
                                this.make_ = nVar.J();
                                continue;
                            case 58:
                                this.model_ = nVar.J();
                                continue;
                            case 64:
                                this.os_ = nVar.t();
                                continue;
                            case 74:
                                this.osv_ = nVar.J();
                                continue;
                            case 82:
                                this.hwv_ = nVar.J();
                                continue;
                            case 88:
                                this.h_ = nVar.L();
                                continue;
                            case 96:
                                this.w_ = nVar.L();
                                continue;
                            case 104:
                                this.ppi_ = nVar.L();
                                continue;
                            case 117:
                                this.pxratio_ = nVar.w();
                                continue;
                            case 120:
                                this.js_ = nVar.q();
                                continue;
                            case 130:
                                this.lang_ = nVar.J();
                                continue;
                            case 138:
                                this.ip_ = nVar.J();
                                continue;
                            case 146:
                                this.ipv6_ = nVar.J();
                                continue;
                            case 154:
                                this.xff_ = nVar.J();
                                continue;
                            case 160:
                                this.iptr_ = nVar.q();
                                continue;
                            case 170:
                                this.carrier_ = nVar.J();
                                continue;
                            case 178:
                                this.mccmnc_ = nVar.J();
                                continue;
                            case 186:
                                this.mccmncsim_ = nVar.J();
                                continue;
                            case 192:
                                this.contype_ = nVar.t();
                                continue;
                            case 200:
                                this.geofetch_ = nVar.q();
                                continue;
                            case 210:
                                Geo geo = this.geo_;
                                Geo.Builder builder = geo != null ? geo.toBuilder() : null;
                                Geo geo2 = (Geo) nVar.A(Geo.parser(), yVar);
                                this.geo_ = geo2;
                                if (builder != null) {
                                    builder.mergeFrom(geo2);
                                    this.geo_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 218:
                                if (objArr == null) {
                                    this.extProto_ = new ArrayList();
                                    objArr = 1;
                                }
                                this.extProto_.add(nVar.A(Any.parser(), yVar));
                                continue;
                            case 226:
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
                            case VideoRef.VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST /* 234 */:
                                Connection connection = this.connection_;
                                Connection.Builder builder3 = connection != null ? connection.toBuilder() : null;
                                Connection connection2 = (Connection) nVar.A(Connection.parser(), yVar);
                                this.connection_ = connection2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(connection2);
                                    this.connection_ = builder3.buildPartial();
                                } else {
                                    continue;
                                }
                            case 242:
                                AudioContext audioContext = this.audioContext_;
                                AudioContext.Builder builder4 = audioContext != null ? audioContext.toBuilder() : null;
                                AudioContext audioContext2 = (AudioContext) nVar.A(AudioContext.parser(), yVar);
                                this.audioContext_ = audioContext2;
                                if (builder4 != null) {
                                    builder4.mergeFrom(audioContext2);
                                    this.audioContext_ = builder4.buildPartial();
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
    }

    /* loaded from: classes3.dex */
    public interface DeviceOrBuilder extends MessageOrBuilder {
        Device.AudioContext getAudioContext();

        Device.AudioContextOrBuilder getAudioContextOrBuilder();

        String getCarrier();

        ByteString getCarrierBytes();

        Device.Connection getConnection();

        Device.ConnectionOrBuilder getConnectionOrBuilder();

        ConnectionType getContype();

        int getContypeValue();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        boolean getDnt();

        Struct getExt();

        x1 getExtOrBuilder();

        Any getExtProto(int i10);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        e getExtProtoOrBuilder(int i10);

        List<? extends e> getExtProtoOrBuilderList();

        Geo getGeo();

        GeoOrBuilder getGeoOrBuilder();

        boolean getGeofetch();

        int getH();

        String getHwv();

        ByteString getHwvBytes();

        String getIfa();

        ByteString getIfaBytes();

        String getIp();

        ByteString getIpBytes();

        boolean getIptr();

        String getIpv6();

        ByteString getIpv6Bytes();

        boolean getJs();

        String getLang();

        ByteString getLangBytes();

        boolean getLmt();

        String getMake();

        ByteString getMakeBytes();

        String getMccmnc();

        ByteString getMccmncBytes();

        String getMccmncsim();

        ByteString getMccmncsimBytes();

        String getModel();

        ByteString getModelBytes();

        OS getOs();

        int getOsValue();

        String getOsv();

        ByteString getOsvBytes();

        int getPpi();

        float getPxratio();

        DeviceType getType();

        int getTypeValue();

        String getUa();

        ByteString getUaBytes();

        int getW();

        String getXff();

        ByteString getXffBytes();

        boolean hasAudioContext();

        boolean hasConnection();

        boolean hasExt();

        boolean hasGeo();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes3.dex */
    public static final class Geo extends GeneratedMessageV3 implements GeoOrBuilder {
        public static final int ACCUR_FIELD_NUMBER = 4;
        public static final int CITY_FIELD_NUMBER = 10;
        public static final int COUNTRY_FIELD_NUMBER = 7;
        public static final int EXT_FIELD_NUMBER = 14;
        public static final int EXT_PROTO_FIELD_NUMBER = 13;
        public static final int IPSERV_FIELD_NUMBER = 6;
        public static final int LASTFIX_FIELD_NUMBER = 5;
        public static final int LAT_FIELD_NUMBER = 2;
        public static final int LON_FIELD_NUMBER = 3;
        public static final int METRO_FIELD_NUMBER = 9;
        public static final int REGION_FIELD_NUMBER = 8;
        public static final int TYPE_FIELD_NUMBER = 1;
        public static final int UTCOFFSET_FIELD_NUMBER = 12;
        public static final int ZIP_FIELD_NUMBER = 11;
        private static final long serialVersionUID = 0;
        private int accur_;
        private volatile Object city_;
        private volatile Object country_;
        private List<Any> extProto_;
        private Struct ext_;
        private int ipserv_;
        private long lastfix_;
        private float lat_;
        private float lon_;
        private byte memoizedIsInitialized;
        private volatile Object metro_;
        private volatile Object region_;
        private int type_;
        private int utcoffset_;
        private volatile Object zip_;
        private static final Geo DEFAULT_INSTANCE = new Geo();
        private static final j1<Geo> PARSER = new com.explorestack.protobuf.b<Geo>() { // from class: com.explorestack.protobuf.adcom.Context.Geo.1
            @Override // com.explorestack.protobuf.j1
            public Geo parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Geo(nVar, yVar);
            }
        };

        public static Geo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.f14250q;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Geo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Geo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Geo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Geo> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Geo)) {
                return super.equals(obj);
            }
            Geo geo = (Geo) obj;
            if (this.type_ != geo.type_ || Float.floatToIntBits(getLat()) != Float.floatToIntBits(geo.getLat()) || Float.floatToIntBits(getLon()) != Float.floatToIntBits(geo.getLon()) || getAccur() != geo.getAccur() || getLastfix() != geo.getLastfix() || this.ipserv_ != geo.ipserv_ || !getCountry().equals(geo.getCountry()) || !getRegion().equals(geo.getRegion()) || !getMetro().equals(geo.getMetro()) || !getCity().equals(geo.getCity()) || !getZip().equals(geo.getZip()) || getUtcoffset() != geo.getUtcoffset() || hasExt() != geo.hasExt()) {
                return false;
            }
            if ((!hasExt() || getExt().equals(geo.getExt())) && getExtProtoList().equals(geo.getExtProtoList()) && this.unknownFields.equals(geo.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public int getAccur() {
            return this.accur_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public String getCity() {
            Object obj = this.city_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.city_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public ByteString getCityBytes() {
            Object obj = this.city_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.city_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public String getCountry() {
            Object obj = this.country_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.country_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public ByteString getCountryBytes() {
            Object obj = this.country_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.country_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public Struct getExt() {
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public x1 getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public Any getExtProto(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public e getExtProtoOrBuilder(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public List<? extends e> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public IpLocationService getIpserv() {
            IpLocationService valueOf = IpLocationService.valueOf(this.ipserv_);
            if (valueOf == null) {
                return IpLocationService.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public int getIpservValue() {
            return this.ipserv_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public long getLastfix() {
            return this.lastfix_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public float getLat() {
            return this.lat_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public float getLon() {
            return this.lon_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public String getMetro() {
            Object obj = this.metro_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.metro_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public ByteString getMetroBytes() {
            Object obj = this.metro_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.metro_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Geo> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public String getRegion() {
            Object obj = this.region_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.region_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public ByteString getRegionBytes() {
            Object obj = this.region_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.region_ = copyFromUtf8;
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
            if (this.type_ != LocationType.LOCATION_TYPE_INVALID.getNumber()) {
                i10 = CodedOutputStream.l(1, this.type_);
            } else {
                i10 = 0;
            }
            float f10 = this.lat_;
            if (f10 != 0.0f) {
                i10 += CodedOutputStream.r(2, f10);
            }
            float f11 = this.lon_;
            if (f11 != 0.0f) {
                i10 += CodedOutputStream.r(3, f11);
            }
            int i12 = this.accur_;
            if (i12 != 0) {
                i10 += CodedOutputStream.Y(4, i12);
            }
            long j10 = this.lastfix_;
            if (j10 != 0) {
                i10 += CodedOutputStream.a0(5, j10);
            }
            if (this.ipserv_ != IpLocationService.IP_LOCATION_SERVICE_INVALID.getNumber()) {
                i10 += CodedOutputStream.l(6, this.ipserv_);
            }
            if (!getCountryBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(7, this.country_);
            }
            if (!getRegionBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(8, this.region_);
            }
            if (!getMetroBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(9, this.metro_);
            }
            if (!getCityBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(10, this.city_);
            }
            if (!getZipBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(11, this.zip_);
            }
            int i13 = this.utcoffset_;
            if (i13 != 0) {
                i10 += CodedOutputStream.x(12, i13);
            }
            for (int i14 = 0; i14 < this.extProto_.size(); i14++) {
                i10 += CodedOutputStream.G(13, this.extProto_.get(i14));
            }
            if (this.ext_ != null) {
                i10 += CodedOutputStream.G(14, getExt());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public LocationType getType() {
            LocationType valueOf = LocationType.valueOf(this.type_);
            if (valueOf == null) {
                return LocationType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public int getTypeValue() {
            return this.type_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public int getUtcoffset() {
            return this.utcoffset_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public String getZip() {
            Object obj = this.zip_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.zip_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
        public ByteString getZipBytes() {
            Object obj = this.zip_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.zip_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
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
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.type_) * 37) + 2) * 53) + Float.floatToIntBits(getLat())) * 37) + 3) * 53) + Float.floatToIntBits(getLon())) * 37) + 4) * 53) + getAccur()) * 37) + 5) * 53) + i0.i(getLastfix())) * 37) + 6) * 53) + this.ipserv_) * 37) + 7) * 53) + getCountry().hashCode()) * 37) + 8) * 53) + getRegion().hashCode()) * 37) + 9) * 53) + getMetro().hashCode()) * 37) + 10) * 53) + getCity().hashCode()) * 37) + 11) * 53) + getZip().hashCode()) * 37) + 12) * 53) + getUtcoffset();
            if (hasExt()) {
                hashCode = (((hashCode * 37) + 14) * 53) + getExt().hashCode();
            }
            if (getExtProtoCount() > 0) {
                hashCode = (((hashCode * 37) + 13) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.f14252r.d(Geo.class, Builder.class);
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
            return new Geo();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.type_ != LocationType.LOCATION_TYPE_INVALID.getNumber()) {
                codedOutputStream.v0(1, this.type_);
            }
            float f10 = this.lat_;
            if (f10 != 0.0f) {
                codedOutputStream.B0(2, f10);
            }
            float f11 = this.lon_;
            if (f11 != 0.0f) {
                codedOutputStream.B0(3, f11);
            }
            int i10 = this.accur_;
            if (i10 != 0) {
                codedOutputStream.c1(4, i10);
            }
            long j10 = this.lastfix_;
            if (j10 != 0) {
                codedOutputStream.e1(5, j10);
            }
            if (this.ipserv_ != IpLocationService.IP_LOCATION_SERVICE_INVALID.getNumber()) {
                codedOutputStream.v0(6, this.ipserv_);
            }
            if (!getCountryBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.country_);
            }
            if (!getRegionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.region_);
            }
            if (!getMetroBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.metro_);
            }
            if (!getCityBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.city_);
            }
            if (!getZipBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.zip_);
            }
            int i11 = this.utcoffset_;
            if (i11 != 0) {
                codedOutputStream.H0(12, i11);
            }
            for (int i12 = 0; i12 < this.extProto_.size(); i12++) {
                codedOutputStream.L0(13, this.extProto_.get(i12));
            }
            if (this.ext_ != null) {
                codedOutputStream.L0(14, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements GeoOrBuilder {
            private int accur_;
            private int bitField0_;
            private Object city_;
            private Object country_;
            private t1<Struct, Struct.Builder, x1> extBuilder_;
            private p1<Any, Any.Builder, e> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private int ipserv_;
            private long lastfix_;
            private float lat_;
            private float lon_;
            private Object metro_;
            private Object region_;
            private int type_;
            private int utcoffset_;
            private Object zip_;

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14250q;
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

            public Builder clearAccur() {
                this.accur_ = 0;
                onChanged();
                return this;
            }

            public Builder clearCity() {
                this.city_ = Geo.getDefaultInstance().getCity();
                onChanged();
                return this;
            }

            public Builder clearCountry() {
                this.country_ = Geo.getDefaultInstance().getCountry();
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

            public Builder clearIpserv() {
                this.ipserv_ = 0;
                onChanged();
                return this;
            }

            public Builder clearLastfix() {
                this.lastfix_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearLat() {
                this.lat_ = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearLon() {
                this.lon_ = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearMetro() {
                this.metro_ = Geo.getDefaultInstance().getMetro();
                onChanged();
                return this;
            }

            public Builder clearRegion() {
                this.region_ = Geo.getDefaultInstance().getRegion();
                onChanged();
                return this;
            }

            public Builder clearType() {
                this.type_ = 0;
                onChanged();
                return this;
            }

            public Builder clearUtcoffset() {
                this.utcoffset_ = 0;
                onChanged();
                return this;
            }

            public Builder clearZip() {
                this.zip_ = Geo.getDefaultInstance().getZip();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public int getAccur() {
                return this.accur_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public String getCity() {
                Object obj = this.city_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.city_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public ByteString getCityBytes() {
                Object obj = this.city_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.city_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public String getCountry() {
                Object obj = this.country_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.country_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public ByteString getCountryBytes() {
                Object obj = this.country_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.country_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return b.f14250q;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public int getExtProtoCount() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public List<Any> getExtProtoList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.extProto_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public IpLocationService getIpserv() {
                IpLocationService valueOf = IpLocationService.valueOf(this.ipserv_);
                if (valueOf == null) {
                    return IpLocationService.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public int getIpservValue() {
                return this.ipserv_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public long getLastfix() {
                return this.lastfix_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public float getLat() {
                return this.lat_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public float getLon() {
                return this.lon_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public String getMetro() {
                Object obj = this.metro_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.metro_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public ByteString getMetroBytes() {
                Object obj = this.metro_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.metro_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public String getRegion() {
                Object obj = this.region_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.region_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public ByteString getRegionBytes() {
                Object obj = this.region_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.region_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public LocationType getType() {
                LocationType valueOf = LocationType.valueOf(this.type_);
                if (valueOf == null) {
                    return LocationType.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public int getTypeValue() {
                return this.type_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public int getUtcoffset() {
                return this.utcoffset_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public String getZip() {
                Object obj = this.zip_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.zip_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public ByteString getZipBytes() {
                Object obj = this.zip_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.zip_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.GeoOrBuilder
            public boolean hasExt() {
                if (this.extBuilder_ == null && this.ext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14252r.d(Geo.class, Builder.class);
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

            public Builder setAccur(int i10) {
                this.accur_ = i10;
                onChanged();
                return this;
            }

            public Builder setCity(String str) {
                str.getClass();
                this.city_ = str;
                onChanged();
                return this;
            }

            public Builder setCityBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.city_ = byteString;
                onChanged();
                return this;
            }

            public Builder setCountry(String str) {
                str.getClass();
                this.country_ = str;
                onChanged();
                return this;
            }

            public Builder setCountryBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.country_ = byteString;
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

            public Builder setIpserv(IpLocationService ipLocationService) {
                ipLocationService.getClass();
                this.ipserv_ = ipLocationService.getNumber();
                onChanged();
                return this;
            }

            public Builder setIpservValue(int i10) {
                this.ipserv_ = i10;
                onChanged();
                return this;
            }

            public Builder setLastfix(long j10) {
                this.lastfix_ = j10;
                onChanged();
                return this;
            }

            public Builder setLat(float f10) {
                this.lat_ = f10;
                onChanged();
                return this;
            }

            public Builder setLon(float f10) {
                this.lon_ = f10;
                onChanged();
                return this;
            }

            public Builder setMetro(String str) {
                str.getClass();
                this.metro_ = str;
                onChanged();
                return this;
            }

            public Builder setMetroBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.metro_ = byteString;
                onChanged();
                return this;
            }

            public Builder setRegion(String str) {
                str.getClass();
                this.region_ = str;
                onChanged();
                return this;
            }

            public Builder setRegionBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.region_ = byteString;
                onChanged();
                return this;
            }

            public Builder setType(LocationType locationType) {
                locationType.getClass();
                this.type_ = locationType.getNumber();
                onChanged();
                return this;
            }

            public Builder setTypeValue(int i10) {
                this.type_ = i10;
                onChanged();
                return this;
            }

            public Builder setUtcoffset(int i10) {
                this.utcoffset_ = i10;
                onChanged();
                return this;
            }

            public Builder setZip(String str) {
                str.getClass();
                this.zip_ = str;
                onChanged();
                return this;
            }

            public Builder setZipBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.zip_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.type_ = 0;
                this.ipserv_ = 0;
                this.country_ = "";
                this.region_ = "";
                this.metro_ = "";
                this.city_ = "";
                this.zip_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Geo build() {
                Geo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Geo buildPartial() {
                Geo geo = new Geo(this);
                geo.type_ = this.type_;
                geo.lat_ = this.lat_;
                geo.lon_ = this.lon_;
                geo.accur_ = this.accur_;
                geo.lastfix_ = this.lastfix_;
                geo.ipserv_ = this.ipserv_;
                geo.country_ = this.country_;
                geo.region_ = this.region_;
                geo.metro_ = this.metro_;
                geo.city_ = this.city_;
                geo.zip_ = this.zip_;
                geo.utcoffset_ = this.utcoffset_;
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    geo.ext_ = this.ext_;
                } else {
                    geo.ext_ = t1Var.a();
                }
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    geo.extProto_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -2;
                    }
                    geo.extProto_ = this.extProto_;
                }
                onBuilt();
                return geo;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Geo mo4630getDefaultInstanceForType() {
                return Geo.getDefaultInstance();
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
                this.lat_ = 0.0f;
                this.lon_ = 0.0f;
                this.accur_ = 0;
                this.lastfix_ = 0L;
                this.ipserv_ = 0;
                this.country_ = "";
                this.region_ = "";
                this.metro_ = "";
                this.city_ = "";
                this.zip_ = "";
                this.utcoffset_ = 0;
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
                if (message instanceof Geo) {
                    return mergeFrom((Geo) message);
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

            public Builder mergeFrom(Geo geo) {
                if (geo == Geo.getDefaultInstance()) {
                    return this;
                }
                if (geo.type_ != 0) {
                    setTypeValue(geo.getTypeValue());
                }
                if (geo.getLat() != 0.0f) {
                    setLat(geo.getLat());
                }
                if (geo.getLon() != 0.0f) {
                    setLon(geo.getLon());
                }
                if (geo.getAccur() != 0) {
                    setAccur(geo.getAccur());
                }
                if (geo.getLastfix() != 0) {
                    setLastfix(geo.getLastfix());
                }
                if (geo.ipserv_ != 0) {
                    setIpservValue(geo.getIpservValue());
                }
                if (!geo.getCountry().isEmpty()) {
                    this.country_ = geo.country_;
                    onChanged();
                }
                if (!geo.getRegion().isEmpty()) {
                    this.region_ = geo.region_;
                    onChanged();
                }
                if (!geo.getMetro().isEmpty()) {
                    this.metro_ = geo.metro_;
                    onChanged();
                }
                if (!geo.getCity().isEmpty()) {
                    this.city_ = geo.city_;
                    onChanged();
                }
                if (!geo.getZip().isEmpty()) {
                    this.zip_ = geo.zip_;
                    onChanged();
                }
                if (geo.getUtcoffset() != 0) {
                    setUtcoffset(geo.getUtcoffset());
                }
                if (geo.hasExt()) {
                    mergeExt(geo.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!geo.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = geo.extProto_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(geo.extProto_);
                        }
                        onChanged();
                    }
                } else if (!geo.extProto_.isEmpty()) {
                    if (!this.extProtoBuilder_.t()) {
                        this.extProtoBuilder_.a(geo.extProto_);
                    } else {
                        this.extProtoBuilder_.h();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = geo.extProto_;
                        this.bitField0_ &= -2;
                        this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) geo).unknownFields);
                onChanged();
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.type_ = 0;
                this.ipserv_ = 0;
                this.country_ = "";
                this.region_ = "";
                this.metro_ = "";
                this.city_ = "";
                this.zip_ = "";
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
            public com.explorestack.protobuf.adcom.Context.Geo.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.Geo.access$19100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.explorestack.protobuf.adcom.Context$Geo r3 = (com.explorestack.protobuf.adcom.Context.Geo) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.explorestack.protobuf.adcom.Context$Geo r4 = (com.explorestack.protobuf.adcom.Context.Geo) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Geo.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$Geo$Builder");
            }
        }

        public static Builder newBuilder(Geo geo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(geo);
        }

        public static Geo parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Geo(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Geo parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Geo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Geo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Geo mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Geo parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Geo() {
            this.memoizedIsInitialized = (byte) -1;
            this.type_ = 0;
            this.ipserv_ = 0;
            this.country_ = "";
            this.region_ = "";
            this.metro_ = "";
            this.city_ = "";
            this.zip_ = "";
            this.extProto_ = Collections.emptyList();
        }

        public static Geo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static Geo parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Geo parseFrom(InputStream inputStream) throws IOException {
            return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Geo parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Geo parseFrom(n nVar) throws IOException {
            return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static Geo parseFrom(n nVar, y yVar) throws IOException {
            return (Geo) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Geo(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            case 21:
                                this.lat_ = nVar.w();
                                continue;
                            case 29:
                                this.lon_ = nVar.w();
                                continue;
                            case 32:
                                this.accur_ = nVar.L();
                                continue;
                            case 40:
                                this.lastfix_ = nVar.M();
                                continue;
                            case 48:
                                this.ipserv_ = nVar.t();
                                continue;
                            case 58:
                                this.country_ = nVar.J();
                                continue;
                            case 66:
                                this.region_ = nVar.J();
                                continue;
                            case 74:
                                this.metro_ = nVar.J();
                                continue;
                            case 82:
                                this.city_ = nVar.J();
                                continue;
                            case 90:
                                this.zip_ = nVar.J();
                                continue;
                            case 96:
                                this.utcoffset_ = nVar.y();
                                continue;
                            case 106:
                                if (!z11) {
                                    this.extProto_ = new ArrayList();
                                    z11 = true;
                                }
                                this.extProto_.add(nVar.A(Any.parser(), yVar));
                                continue;
                            case 114:
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
    }

    /* loaded from: classes3.dex */
    public interface GeoOrBuilder extends MessageOrBuilder {
        int getAccur();

        String getCity();

        ByteString getCityBytes();

        String getCountry();

        ByteString getCountryBytes();

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

        IpLocationService getIpserv();

        int getIpservValue();

        long getLastfix();

        float getLat();

        float getLon();

        String getMetro();

        ByteString getMetroBytes();

        String getRegion();

        ByteString getRegionBytes();

        LocationType getType();

        int getTypeValue();

        int getUtcoffset();

        String getZip();

        ByteString getZipBytes();

        boolean hasExt();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes3.dex */
    public static final class Regs extends GeneratedMessageV3 implements RegsOrBuilder {
        public static final int COPPA_FIELD_NUMBER = 1;
        public static final int EXT_FIELD_NUMBER = 4;
        public static final int EXT_PROTO_FIELD_NUMBER = 3;
        public static final int GDPR_FIELD_NUMBER = 2;
        public static final int GPP_FIELD_NUMBER = 5;
        public static final int GPP_SID_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private boolean coppa_;
        private List<Any> extProto_;
        private Struct ext_;
        private boolean gdpr_;
        private int gppSidMemoizedSerializedSize;
        private i0.g gppSid_;
        private volatile Object gpp_;
        private byte memoizedIsInitialized;
        private static final Regs DEFAULT_INSTANCE = new Regs();
        private static final j1<Regs> PARSER = new com.explorestack.protobuf.b<Regs>() { // from class: com.explorestack.protobuf.adcom.Context.Regs.1
            @Override // com.explorestack.protobuf.j1
            public Regs parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Regs(nVar, yVar);
            }
        };

        static /* synthetic */ i0.g access$27100() {
            return GeneratedMessageV3.emptyIntList();
        }

        static /* synthetic */ i0.g access$28300() {
            return GeneratedMessageV3.emptyIntList();
        }

        static /* synthetic */ i0.g access$28500() {
            return GeneratedMessageV3.emptyIntList();
        }

        public static Regs getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.f14266y;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Regs parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Regs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Regs parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Regs> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Regs)) {
                return super.equals(obj);
            }
            Regs regs = (Regs) obj;
            if (getCoppa() != regs.getCoppa() || getGdpr() != regs.getGdpr() || !getGpp().equals(regs.getGpp()) || !getGppSidList().equals(regs.getGppSidList()) || hasExt() != regs.hasExt()) {
                return false;
            }
            if ((!hasExt() || getExt().equals(regs.getExt())) && getExtProtoList().equals(regs.getExtProtoList()) && this.unknownFields.equals(regs.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public boolean getCoppa() {
            return this.coppa_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public Struct getExt() {
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public x1 getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public Any getExtProto(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public e getExtProtoOrBuilder(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public List<? extends e> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public boolean getGdpr() {
            return this.gdpr_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public String getGpp() {
            Object obj = this.gpp_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gpp_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public ByteString getGppBytes() {
            Object obj = this.gpp_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gpp_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public int getGppSid(int i10) {
            return this.gppSid_.getInt(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public int getGppSidCount() {
            return this.gppSid_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
        public List<Integer> getGppSidList() {
            return this.gppSid_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Regs> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            boolean z10 = this.coppa_;
            if (z10) {
                i10 = CodedOutputStream.e(1, z10);
            } else {
                i10 = 0;
            }
            boolean z11 = this.gdpr_;
            if (z11) {
                i10 += CodedOutputStream.e(2, z11);
            }
            for (int i12 = 0; i12 < this.extProto_.size(); i12++) {
                i10 += CodedOutputStream.G(3, this.extProto_.get(i12));
            }
            if (this.ext_ != null) {
                i10 += CodedOutputStream.G(4, getExt());
            }
            if (!getGppBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(5, this.gpp_);
            }
            int i13 = 0;
            for (int i14 = 0; i14 < this.gppSid_.size(); i14++) {
                i13 += CodedOutputStream.Z(this.gppSid_.getInt(i14));
            }
            int i15 = i10 + i13;
            if (!getGppSidList().isEmpty()) {
                i15 = i15 + 1 + CodedOutputStream.y(i13);
            }
            this.gppSidMemoizedSerializedSize = i13;
            int serializedSize = i15 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
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
            int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + i0.d(getCoppa())) * 37) + 2) * 53) + i0.d(getGdpr())) * 37) + 5) * 53) + getGpp().hashCode();
            if (getGppSidCount() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + getGppSidList().hashCode();
            }
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
            return b.f14268z.d(Regs.class, Builder.class);
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
            return new Regs();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            boolean z10 = this.coppa_;
            if (z10) {
                codedOutputStream.n0(1, z10);
            }
            boolean z11 = this.gdpr_;
            if (z11) {
                codedOutputStream.n0(2, z11);
            }
            for (int i10 = 0; i10 < this.extProto_.size(); i10++) {
                codedOutputStream.L0(3, this.extProto_.get(i10));
            }
            if (this.ext_ != null) {
                codedOutputStream.L0(4, getExt());
            }
            if (!getGppBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.gpp_);
            }
            if (getGppSidList().size() > 0) {
                codedOutputStream.d1(50);
                codedOutputStream.d1(this.gppSidMemoizedSerializedSize);
            }
            for (int i11 = 0; i11 < this.gppSid_.size(); i11++) {
                codedOutputStream.d1(this.gppSid_.getInt(i11));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements RegsOrBuilder {
            private int bitField0_;
            private boolean coppa_;
            private t1<Struct, Struct.Builder, x1> extBuilder_;
            private p1<Any, Any.Builder, e> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private boolean gdpr_;
            private i0.g gppSid_;
            private Object gpp_;

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureGppSidIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.gppSid_ = GeneratedMessageV3.mutableCopy(this.gppSid_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.f14266y;
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

            public Builder addAllGppSid(Iterable<? extends Integer> iterable) {
                ensureGppSidIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.gppSid_);
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

            public Builder addGppSid(int i10) {
                ensureGppSidIsMutable();
                this.gppSid_.addInt(i10);
                onChanged();
                return this;
            }

            public Builder clearCoppa() {
                this.coppa_ = false;
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

            public Builder clearGdpr() {
                this.gdpr_ = false;
                onChanged();
                return this;
            }

            public Builder clearGpp() {
                this.gpp_ = Regs.getDefaultInstance().getGpp();
                onChanged();
                return this;
            }

            public Builder clearGppSid() {
                this.gppSid_ = Regs.access$28500();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public boolean getCoppa() {
                return this.coppa_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return b.f14266y;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public int getExtProtoCount() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public List<Any> getExtProtoList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.extProto_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public boolean getGdpr() {
                return this.gdpr_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public String getGpp() {
                Object obj = this.gpp_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.gpp_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public ByteString getGppBytes() {
                Object obj = this.gpp_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gpp_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public int getGppSid(int i10) {
                return this.gppSid_.getInt(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public int getGppSidCount() {
                return this.gppSid_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public List<Integer> getGppSidList() {
                if ((this.bitField0_ & 1) != 0) {
                    return Collections.unmodifiableList(this.gppSid_);
                }
                return this.gppSid_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RegsOrBuilder
            public boolean hasExt() {
                if (this.extBuilder_ == null && this.ext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.f14268z.d(Regs.class, Builder.class);
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

            public Builder setCoppa(boolean z10) {
                this.coppa_ = z10;
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

            public Builder setGdpr(boolean z10) {
                this.gdpr_ = z10;
                onChanged();
                return this;
            }

            public Builder setGpp(String str) {
                str.getClass();
                this.gpp_ = str;
                onChanged();
                return this;
            }

            public Builder setGppBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.gpp_ = byteString;
                onChanged();
                return this;
            }

            public Builder setGppSid(int i10, int i11) {
                ensureGppSidIsMutable();
                this.gppSid_.setInt(i10, i11);
                onChanged();
                return this;
            }

            private Builder() {
                this.gpp_ = "";
                this.gppSid_ = Regs.access$28300();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Regs build() {
                Regs buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Regs buildPartial() {
                Regs regs = new Regs(this);
                regs.coppa_ = this.coppa_;
                regs.gdpr_ = this.gdpr_;
                regs.gpp_ = this.gpp_;
                if ((this.bitField0_ & 1) != 0) {
                    this.gppSid_.makeImmutable();
                    this.bitField0_ &= -2;
                }
                regs.gppSid_ = this.gppSid_;
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    regs.ext_ = this.ext_;
                } else {
                    regs.ext_ = t1Var.a();
                }
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    regs.extProto_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -3;
                    }
                    regs.extProto_ = this.extProto_;
                }
                onBuilt();
                return regs;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Regs mo4630getDefaultInstanceForType() {
                return Regs.getDefaultInstance();
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
                this.coppa_ = false;
                this.gdpr_ = false;
                this.gpp_ = "";
                this.gppSid_ = Regs.access$27100();
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
                if (message instanceof Regs) {
                    return mergeFrom((Regs) message);
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
                this.gpp_ = "";
                this.gppSid_ = Regs.access$28300();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder mergeFrom(Regs regs) {
                if (regs == Regs.getDefaultInstance()) {
                    return this;
                }
                if (regs.getCoppa()) {
                    setCoppa(regs.getCoppa());
                }
                if (regs.getGdpr()) {
                    setGdpr(regs.getGdpr());
                }
                if (!regs.getGpp().isEmpty()) {
                    this.gpp_ = regs.gpp_;
                    onChanged();
                }
                if (!regs.gppSid_.isEmpty()) {
                    if (this.gppSid_.isEmpty()) {
                        this.gppSid_ = regs.gppSid_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureGppSidIsMutable();
                        this.gppSid_.addAll(regs.gppSid_);
                    }
                    onChanged();
                }
                if (regs.hasExt()) {
                    mergeExt(regs.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!regs.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = regs.extProto_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(regs.extProto_);
                        }
                        onChanged();
                    }
                } else if (!regs.extProto_.isEmpty()) {
                    if (!this.extProtoBuilder_.t()) {
                        this.extProtoBuilder_.a(regs.extProto_);
                    } else {
                        this.extProtoBuilder_.h();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = regs.extProto_;
                        this.bitField0_ &= -3;
                        this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) regs).unknownFields);
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
            public com.explorestack.protobuf.adcom.Context.Regs.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.Regs.access$28100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.explorestack.protobuf.adcom.Context$Regs r3 = (com.explorestack.protobuf.adcom.Context.Regs) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.explorestack.protobuf.adcom.Context$Regs r4 = (com.explorestack.protobuf.adcom.Context.Regs) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Regs.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$Regs$Builder");
            }
        }

        public static Builder newBuilder(Regs regs) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(regs);
        }

        public static Regs parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Regs(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.gppSidMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Regs parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Regs) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Regs parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Regs mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Regs parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Regs parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        private Regs() {
            this.gppSidMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.gpp_ = "";
            this.gppSid_ = GeneratedMessageV3.emptyIntList();
            this.extProto_ = Collections.emptyList();
        }

        public static Regs parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Regs parseFrom(InputStream inputStream) throws IOException {
            return (Regs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Regs parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Regs) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Regs parseFrom(n nVar) throws IOException {
            return (Regs) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Regs(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                this.coppa_ = nVar.q();
                            } else if (K == 16) {
                                this.gdpr_ = nVar.q();
                            } else if (K == 26) {
                                if (!(z11 & true)) {
                                    this.extProto_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.extProto_.add(nVar.A(Any.parser(), yVar));
                            } else if (K == 34) {
                                Struct struct = this.ext_;
                                Struct.Builder builder = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                this.ext_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    this.ext_ = builder.buildPartial();
                                }
                            } else if (K == 42) {
                                this.gpp_ = nVar.J();
                            } else if (K == 48) {
                                if (!(z11 & true)) {
                                    this.gppSid_ = GeneratedMessageV3.newIntList();
                                    z11 |= true;
                                }
                                this.gppSid_.addInt(nVar.L());
                            } else if (K != 50) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                int p10 = nVar.p(nVar.C());
                                if (!(z11 & true) && nVar.d() > 0) {
                                    this.gppSid_ = GeneratedMessageV3.newIntList();
                                    z11 |= true;
                                }
                                while (nVar.d() > 0) {
                                    this.gppSid_.addInt(nVar.L());
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
                    if (z11 & true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    if (z11 & true) {
                        this.gppSid_.makeImmutable();
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            if (z11 & true) {
                this.gppSid_.makeImmutable();
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static Regs parseFrom(n nVar, y yVar) throws IOException {
            return (Regs) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes3.dex */
    public interface RegsOrBuilder extends MessageOrBuilder {
        boolean getCoppa();

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

        boolean getGdpr();

        String getGpp();

        ByteString getGppBytes();

        int getGppSid(int i10);

        int getGppSidCount();

        List<Integer> getGppSidList();

        boolean hasExt();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes3.dex */
    public static final class Restrictions extends GeneratedMessageV3 implements RestrictionsOrBuilder {
        public static final int BADV_FIELD_NUMBER = 3;
        public static final int BAPP_FIELD_NUMBER = 4;
        public static final int BATTR_FIELD_NUMBER = 5;
        public static final int BCAT_FIELD_NUMBER = 1;
        public static final int CATTAX_FIELD_NUMBER = 2;
        public static final int EXT_FIELD_NUMBER = 7;
        public static final int EXT_PROTO_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private n0 badv_;
        private n0 bapp_;
        private int battrMemoizedSerializedSize;
        private List<Integer> battr_;
        private n0 bcat_;
        private int cattax_;
        private List<Any> extProto_;
        private Struct ext_;
        private byte memoizedIsInitialized;
        private static final i0.h.a<Integer, CreativeAttribute> battr_converter_ = new i0.h.a<Integer, CreativeAttribute>() { // from class: com.explorestack.protobuf.adcom.Context.Restrictions.1
            @Override // com.explorestack.protobuf.i0.h.a
            public CreativeAttribute convert(Integer num) {
                CreativeAttribute valueOf = CreativeAttribute.valueOf(num.intValue());
                return valueOf == null ? CreativeAttribute.UNRECOGNIZED : valueOf;
            }
        };
        private static final Restrictions DEFAULT_INSTANCE = new Restrictions();
        private static final j1<Restrictions> PARSER = new com.explorestack.protobuf.b<Restrictions>() { // from class: com.explorestack.protobuf.adcom.Context.Restrictions.2
            @Override // com.explorestack.protobuf.j1
            public Restrictions parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Restrictions(nVar, yVar);
            }
        };

        /* loaded from: classes3.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements RestrictionsOrBuilder {
            private n0 badv_;
            private n0 bapp_;
            private List<Integer> battr_;
            private n0 bcat_;
            private int bitField0_;
            private int cattax_;
            private t1<Struct, Struct.Builder, x1> extBuilder_;
            private p1<Any, Any.Builder, e> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;

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
                if ((this.bitField0_ & 16) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 16;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.A;
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

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public String getBadv(int i10) {
                return this.badv_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public ByteString getBadvBytes(int i10) {
                return this.badv_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public int getBadvCount() {
                return this.badv_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public String getBapp(int i10) {
                return this.bapp_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public ByteString getBappBytes(int i10) {
                return this.bapp_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public int getBappCount() {
                return this.bapp_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public CreativeAttribute getBattr(int i10) {
                return (CreativeAttribute) Restrictions.battr_converter_.convert(this.battr_.get(i10));
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public int getBattrCount() {
                return this.battr_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public List<CreativeAttribute> getBattrList() {
                return new i0.h(this.battr_, Restrictions.battr_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public int getBattrValue(int i10) {
                return this.battr_.get(i10).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public List<Integer> getBattrValueList() {
                return Collections.unmodifiableList(this.battr_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public String getBcat(int i10) {
                return this.bcat_.get(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public ByteString getBcatBytes(int i10) {
                return this.bcat_.getByteString(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public int getBcatCount() {
                return this.bcat_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public CategoryTaxonomy getCattax() {
                CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
                if (valueOf == null) {
                    return CategoryTaxonomy.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public int getCattaxValue() {
                return this.cattax_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return b.A;
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public int getExtProtoCount() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public List<Any> getExtProtoList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.extProto_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public boolean hasExt() {
                if (this.extBuilder_ == null && this.ext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.B.d(Restrictions.class, Builder.class);
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

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public m1 getBadvList() {
                return this.badv_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public m1 getBappList() {
                return this.bapp_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
            public m1 getBcatList() {
                return this.bcat_.getUnmodifiableView();
            }

            private Builder() {
                n0 n0Var = m0.f14459d;
                this.bcat_ = n0Var;
                this.cattax_ = 0;
                this.badv_ = n0Var;
                this.bapp_ = n0Var;
                this.battr_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Restrictions build() {
                Restrictions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Restrictions buildPartial() {
                Restrictions restrictions = new Restrictions(this);
                if ((this.bitField0_ & 1) != 0) {
                    this.bcat_ = this.bcat_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                restrictions.bcat_ = this.bcat_;
                restrictions.cattax_ = this.cattax_;
                if ((this.bitField0_ & 2) != 0) {
                    this.badv_ = this.badv_.getUnmodifiableView();
                    this.bitField0_ &= -3;
                }
                restrictions.badv_ = this.badv_;
                if ((this.bitField0_ & 4) != 0) {
                    this.bapp_ = this.bapp_.getUnmodifiableView();
                    this.bitField0_ &= -5;
                }
                restrictions.bapp_ = this.bapp_;
                if ((this.bitField0_ & 8) != 0) {
                    this.battr_ = Collections.unmodifiableList(this.battr_);
                    this.bitField0_ &= -9;
                }
                restrictions.battr_ = this.battr_;
                t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
                if (t1Var == null) {
                    restrictions.ext_ = this.ext_;
                } else {
                    restrictions.ext_ = t1Var.a();
                }
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    restrictions.extProto_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 16) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -17;
                    }
                    restrictions.extProto_ = this.extProto_;
                }
                onBuilt();
                return restrictions;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Restrictions mo4630getDefaultInstanceForType() {
                return Restrictions.getDefaultInstance();
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
                n0 n0Var = m0.f14459d;
                this.bcat_ = n0Var;
                int i10 = this.bitField0_;
                this.cattax_ = 0;
                this.badv_ = n0Var;
                this.bapp_ = n0Var;
                this.bitField0_ = i10 & (-8);
                this.battr_ = Collections.emptyList();
                this.bitField0_ &= -9;
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
                if (message instanceof Restrictions) {
                    return mergeFrom((Restrictions) message);
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

            public Builder mergeFrom(Restrictions restrictions) {
                if (restrictions == Restrictions.getDefaultInstance()) {
                    return this;
                }
                if (!restrictions.bcat_.isEmpty()) {
                    if (this.bcat_.isEmpty()) {
                        this.bcat_ = restrictions.bcat_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureBcatIsMutable();
                        this.bcat_.addAll(restrictions.bcat_);
                    }
                    onChanged();
                }
                if (restrictions.cattax_ != 0) {
                    setCattaxValue(restrictions.getCattaxValue());
                }
                if (!restrictions.badv_.isEmpty()) {
                    if (this.badv_.isEmpty()) {
                        this.badv_ = restrictions.badv_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureBadvIsMutable();
                        this.badv_.addAll(restrictions.badv_);
                    }
                    onChanged();
                }
                if (!restrictions.bapp_.isEmpty()) {
                    if (this.bapp_.isEmpty()) {
                        this.bapp_ = restrictions.bapp_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureBappIsMutable();
                        this.bapp_.addAll(restrictions.bapp_);
                    }
                    onChanged();
                }
                if (!restrictions.battr_.isEmpty()) {
                    if (this.battr_.isEmpty()) {
                        this.battr_ = restrictions.battr_;
                        this.bitField0_ &= -9;
                    } else {
                        ensureBattrIsMutable();
                        this.battr_.addAll(restrictions.battr_);
                    }
                    onChanged();
                }
                if (restrictions.hasExt()) {
                    mergeExt(restrictions.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!restrictions.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = restrictions.extProto_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(restrictions.extProto_);
                        }
                        onChanged();
                    }
                } else if (!restrictions.extProto_.isEmpty()) {
                    if (!this.extProtoBuilder_.t()) {
                        this.extProtoBuilder_.a(restrictions.extProto_);
                    } else {
                        this.extProtoBuilder_.h();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = restrictions.extProto_;
                        this.bitField0_ &= -17;
                        this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) restrictions).unknownFields);
                onChanged();
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                n0 n0Var = m0.f14459d;
                this.bcat_ = n0Var;
                this.cattax_ = 0;
                this.badv_ = n0Var;
                this.bapp_ = n0Var;
                this.battr_ = Collections.emptyList();
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
            public com.explorestack.protobuf.adcom.Context.Restrictions.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.Restrictions.access$30000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.explorestack.protobuf.adcom.Context$Restrictions r3 = (com.explorestack.protobuf.adcom.Context.Restrictions) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.explorestack.protobuf.adcom.Context$Restrictions r4 = (com.explorestack.protobuf.adcom.Context.Restrictions) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Restrictions.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$Restrictions$Builder");
            }
        }

        public static Restrictions getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.A;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Restrictions parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Restrictions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Restrictions> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Restrictions)) {
                return super.equals(obj);
            }
            Restrictions restrictions = (Restrictions) obj;
            if (!getBcatList().equals(restrictions.getBcatList()) || this.cattax_ != restrictions.cattax_ || !getBadvList().equals(restrictions.getBadvList()) || !getBappList().equals(restrictions.getBappList()) || !this.battr_.equals(restrictions.battr_) || hasExt() != restrictions.hasExt()) {
                return false;
            }
            if ((!hasExt() || getExt().equals(restrictions.getExt())) && getExtProtoList().equals(restrictions.getExtProtoList()) && this.unknownFields.equals(restrictions.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public String getBadv(int i10) {
            return this.badv_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public ByteString getBadvBytes(int i10) {
            return this.badv_.getByteString(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public int getBadvCount() {
            return this.badv_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public String getBapp(int i10) {
            return this.bapp_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public ByteString getBappBytes(int i10) {
            return this.bapp_.getByteString(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public int getBappCount() {
            return this.bapp_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public CreativeAttribute getBattr(int i10) {
            return battr_converter_.convert(this.battr_.get(i10));
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public int getBattrCount() {
            return this.battr_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public List<CreativeAttribute> getBattrList() {
            return new i0.h(this.battr_, battr_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public int getBattrValue(int i10) {
            return this.battr_.get(i10).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public List<Integer> getBattrValueList() {
            return this.battr_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public String getBcat(int i10) {
            return this.bcat_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public ByteString getBcatBytes(int i10) {
            return this.bcat_.getByteString(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public int getBcatCount() {
            return this.bcat_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public CategoryTaxonomy getCattax() {
            CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
            if (valueOf == null) {
                return CategoryTaxonomy.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public int getCattaxValue() {
            return this.cattax_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public Struct getExt() {
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public x1 getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public Any getExtProto(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public e getExtProtoOrBuilder(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public List<? extends e> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Restrictions> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.bcat_.size(); i12++) {
                i11 += GeneratedMessageV3.computeStringSizeNoTag(this.bcat_.getRaw(i12));
            }
            int size = i11 + getBcatList().size();
            if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                size += CodedOutputStream.l(2, this.cattax_);
            }
            int i13 = 0;
            for (int i14 = 0; i14 < this.badv_.size(); i14++) {
                i13 += GeneratedMessageV3.computeStringSizeNoTag(this.badv_.getRaw(i14));
            }
            int size2 = size + i13 + getBadvList().size();
            int i15 = 0;
            for (int i16 = 0; i16 < this.bapp_.size(); i16++) {
                i15 += GeneratedMessageV3.computeStringSizeNoTag(this.bapp_.getRaw(i16));
            }
            int size3 = size2 + i15 + getBappList().size();
            int i17 = 0;
            for (int i18 = 0; i18 < this.battr_.size(); i18++) {
                i17 += CodedOutputStream.m(this.battr_.get(i18).intValue());
            }
            int i19 = size3 + i17;
            if (!getBattrList().isEmpty()) {
                i19 = i19 + 1 + CodedOutputStream.Z(i17);
            }
            this.battrMemoizedSerializedSize = i17;
            for (int i20 = 0; i20 < this.extProto_.size(); i20++) {
                i19 += CodedOutputStream.G(6, this.extProto_.get(i20));
            }
            if (this.ext_ != null) {
                i19 += CodedOutputStream.G(7, getExt());
            }
            int serializedSize = i19 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
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
            if (getBcatCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getBcatList().hashCode();
            }
            int i11 = (((hashCode * 37) + 2) * 53) + this.cattax_;
            if (getBadvCount() > 0) {
                i11 = (((i11 * 37) + 3) * 53) + getBadvList().hashCode();
            }
            if (getBappCount() > 0) {
                i11 = (((i11 * 37) + 4) * 53) + getBappList().hashCode();
            }
            if (getBattrCount() > 0) {
                i11 = (((i11 * 37) + 5) * 53) + this.battr_.hashCode();
            }
            if (hasExt()) {
                i11 = (((i11 * 37) + 7) * 53) + getExt().hashCode();
            }
            if (getExtProtoCount() > 0) {
                i11 = (((i11 * 37) + 6) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (i11 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.B.d(Restrictions.class, Builder.class);
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
            return new Restrictions();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            for (int i10 = 0; i10 < this.bcat_.size(); i10++) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.bcat_.getRaw(i10));
            }
            if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
                codedOutputStream.v0(2, this.cattax_);
            }
            for (int i11 = 0; i11 < this.badv_.size(); i11++) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.badv_.getRaw(i11));
            }
            for (int i12 = 0; i12 < this.bapp_.size(); i12++) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.bapp_.getRaw(i12));
            }
            if (getBattrList().size() > 0) {
                codedOutputStream.d1(42);
                codedOutputStream.d1(this.battrMemoizedSerializedSize);
            }
            for (int i13 = 0; i13 < this.battr_.size(); i13++) {
                codedOutputStream.w0(this.battr_.get(i13).intValue());
            }
            for (int i14 = 0; i14 < this.extProto_.size(); i14++) {
                codedOutputStream.L0(6, this.extProto_.get(i14));
            }
            if (this.ext_ != null) {
                codedOutputStream.L0(7, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static Builder newBuilder(Restrictions restrictions) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(restrictions);
        }

        public static Restrictions parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public m1 getBadvList() {
            return this.badv_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public m1 getBappList() {
            return this.bapp_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.RestrictionsOrBuilder
        public m1 getBcatList() {
            return this.bcat_;
        }

        private Restrictions(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Restrictions parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Restrictions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Restrictions mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Restrictions parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Restrictions() {
            this.memoizedIsInitialized = (byte) -1;
            n0 n0Var = m0.f14459d;
            this.bcat_ = n0Var;
            this.cattax_ = 0;
            this.badv_ = n0Var;
            this.bapp_ = n0Var;
            this.battr_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        public static Restrictions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static Restrictions parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Restrictions parseFrom(InputStream inputStream) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Restrictions parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Restrictions parseFrom(n nVar) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Restrictions(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                String J = nVar.J();
                                if (!(z11 & true)) {
                                    this.bcat_ = new m0();
                                    z11 |= true;
                                }
                                this.bcat_.add(J);
                            } else if (K == 16) {
                                this.cattax_ = nVar.t();
                            } else if (K == 26) {
                                String J2 = nVar.J();
                                if (!(z11 & true)) {
                                    this.badv_ = new m0();
                                    z11 |= true;
                                }
                                this.badv_.add(J2);
                            } else if (K == 34) {
                                String J3 = nVar.J();
                                if (!(z11 & true)) {
                                    this.bapp_ = new m0();
                                    z11 |= true;
                                }
                                this.bapp_.add(J3);
                            } else if (K == 40) {
                                int t10 = nVar.t();
                                if (!(z11 & true)) {
                                    this.battr_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.battr_.add(Integer.valueOf(t10));
                            } else if (K == 42) {
                                int p10 = nVar.p(nVar.C());
                                while (nVar.d() > 0) {
                                    int t11 = nVar.t();
                                    if (!(z11 & true)) {
                                        this.battr_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.battr_.add(Integer.valueOf(t11));
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
                        this.bcat_ = this.bcat_.getUnmodifiableView();
                    }
                    if (z11 & true) {
                        this.badv_ = this.badv_.getUnmodifiableView();
                    }
                    if (z11 & true) {
                        this.bapp_ = this.bapp_.getUnmodifiableView();
                    }
                    if (z11 & true) {
                        this.battr_ = Collections.unmodifiableList(this.battr_);
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
                this.bcat_ = this.bcat_.getUnmodifiableView();
            }
            if (z11 & true) {
                this.badv_ = this.badv_.getUnmodifiableView();
            }
            if (z11 & true) {
                this.bapp_ = this.bapp_.getUnmodifiableView();
            }
            if (z11 & true) {
                this.battr_ = Collections.unmodifiableList(this.battr_);
            }
            if (z11 & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static Restrictions parseFrom(n nVar, y yVar) throws IOException {
            return (Restrictions) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes3.dex */
    public interface RestrictionsOrBuilder extends MessageOrBuilder {
        String getBadv(int i10);

        ByteString getBadvBytes(int i10);

        int getBadvCount();

        List<String> getBadvList();

        String getBapp(int i10);

        ByteString getBappBytes(int i10);

        int getBappCount();

        List<String> getBappList();

        CreativeAttribute getBattr(int i10);

        int getBattrCount();

        List<CreativeAttribute> getBattrList();

        int getBattrValue(int i10);

        List<Integer> getBattrValueList();

        String getBcat(int i10);

        ByteString getBcatBytes(int i10);

        int getBcatCount();

        List<String> getBcatList();

        CategoryTaxonomy getCattax();

        int getCattaxValue();

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

    /* loaded from: classes3.dex */
    public static final class User extends GeneratedMessageV3 implements UserOrBuilder {
        public static final int BUYERUID_FIELD_NUMBER = 2;
        public static final int CONSENT_FIELD_NUMBER = 6;
        public static final int DATA_FIELD_NUMBER = 8;
        public static final int EXT_FIELD_NUMBER = 10;
        public static final int EXT_PROTO_FIELD_NUMBER = 9;
        public static final int GENDER_FIELD_NUMBER = 4;
        public static final int GEO_FIELD_NUMBER = 7;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int KEYWORDS_FIELD_NUMBER = 5;
        public static final int YOB_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object buyeruid_;
        private volatile Object consent_;
        private List<Data> data_;
        private List<Any> extProto_;
        private Struct ext_;
        private volatile Object gender_;
        private Geo geo_;
        private volatile Object id_;
        private volatile Object keywords_;
        private byte memoizedIsInitialized;
        private int yob_;
        private static final User DEFAULT_INSTANCE = new User();
        private static final j1<User> PARSER = new com.explorestack.protobuf.b<User>() { // from class: com.explorestack.protobuf.adcom.Context.User.1
            @Override // com.explorestack.protobuf.j1
            public User parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new User(nVar, yVar);
            }
        };

        public static User getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.C;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static User parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (User) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static User parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<User> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof User)) {
                return super.equals(obj);
            }
            User user = (User) obj;
            if (!getId().equals(user.getId()) || !getBuyeruid().equals(user.getBuyeruid()) || getYob() != user.getYob() || !getGender().equals(user.getGender()) || !getKeywords().equals(user.getKeywords()) || !getConsent().equals(user.getConsent()) || hasGeo() != user.hasGeo()) {
                return false;
            }
            if ((hasGeo() && !getGeo().equals(user.getGeo())) || !getDataList().equals(user.getDataList()) || hasExt() != user.hasExt()) {
                return false;
            }
            if ((!hasExt() || getExt().equals(user.getExt())) && getExtProtoList().equals(user.getExtProtoList()) && this.unknownFields.equals(user.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public String getBuyeruid() {
            Object obj = this.buyeruid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.buyeruid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public ByteString getBuyeruidBytes() {
            Object obj = this.buyeruid_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.buyeruid_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public String getConsent() {
            Object obj = this.consent_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.consent_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public ByteString getConsentBytes() {
            Object obj = this.consent_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.consent_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public Data getData(int i10) {
            return this.data_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public List<Data> getDataList() {
            return this.data_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public DataOrBuilder getDataOrBuilder(int i10) {
            return this.data_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public List<? extends DataOrBuilder> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public Struct getExt() {
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public x1 getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public Any getExtProto(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public e getExtProtoOrBuilder(int i10) {
            return this.extProto_.get(i10);
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public List<? extends e> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public String getGender() {
            Object obj = this.gender_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.gender_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public ByteString getGenderBytes() {
            Object obj = this.gender_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gender_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public Geo getGeo() {
            Geo geo = this.geo_;
            if (geo == null) {
                return Geo.getDefaultInstance();
            }
            return geo;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public GeoOrBuilder getGeoOrBuilder() {
            return getGeo();
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public ByteString getIdBytes() {
            Object obj = this.id_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public String getKeywords() {
            Object obj = this.keywords_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.keywords_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public ByteString getKeywordsBytes() {
            Object obj = this.keywords_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.keywords_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<User> getParserForType() {
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
            if (!getBuyeruidBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(2, this.buyeruid_);
            }
            int i12 = this.yob_;
            if (i12 != 0) {
                i10 += CodedOutputStream.Y(3, i12);
            }
            if (!getGenderBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(4, this.gender_);
            }
            if (!getKeywordsBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(5, this.keywords_);
            }
            if (!getConsentBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(6, this.consent_);
            }
            if (this.geo_ != null) {
                i10 += CodedOutputStream.G(7, getGeo());
            }
            for (int i13 = 0; i13 < this.data_.size(); i13++) {
                i10 += CodedOutputStream.G(8, this.data_.get(i13));
            }
            for (int i14 = 0; i14 < this.extProto_.size(); i14++) {
                i10 += CodedOutputStream.G(9, this.extProto_.get(i14));
            }
            if (this.ext_ != null) {
                i10 += CodedOutputStream.G(10, getExt());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public int getYob() {
            return this.yob_;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public boolean hasExt() {
            if (this.ext_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
        public boolean hasGeo() {
            if (this.geo_ != null) {
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
            int hashCode = ((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getBuyeruid().hashCode()) * 37) + 3) * 53) + getYob()) * 37) + 4) * 53) + getGender().hashCode()) * 37) + 5) * 53) + getKeywords().hashCode()) * 37) + 6) * 53) + getConsent().hashCode();
            if (hasGeo()) {
                hashCode = (((hashCode * 37) + 7) * 53) + getGeo().hashCode();
            }
            if (getDataCount() > 0) {
                hashCode = (((hashCode * 37) + 8) * 53) + getDataList().hashCode();
            }
            if (hasExt()) {
                hashCode = (((hashCode * 37) + 10) * 53) + getExt().hashCode();
            }
            if (getExtProtoCount() > 0) {
                hashCode = (((hashCode * 37) + 9) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.D.d(User.class, Builder.class);
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
            return new User();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getIdBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
            }
            if (!getBuyeruidBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.buyeruid_);
            }
            int i10 = this.yob_;
            if (i10 != 0) {
                codedOutputStream.c1(3, i10);
            }
            if (!getGenderBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.gender_);
            }
            if (!getKeywordsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.keywords_);
            }
            if (!getConsentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.consent_);
            }
            if (this.geo_ != null) {
                codedOutputStream.L0(7, getGeo());
            }
            for (int i11 = 0; i11 < this.data_.size(); i11++) {
                codedOutputStream.L0(8, this.data_.get(i11));
            }
            for (int i12 = 0; i12 < this.extProto_.size(); i12++) {
                codedOutputStream.L0(9, this.extProto_.get(i12));
            }
            if (this.ext_ != null) {
                codedOutputStream.L0(10, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements UserOrBuilder {
            private int bitField0_;
            private Object buyeruid_;
            private Object consent_;
            private p1<Data, Data.Builder, DataOrBuilder> dataBuilder_;
            private List<Data> data_;
            private t1<Struct, Struct.Builder, x1> extBuilder_;
            private p1<Any, Any.Builder, e> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private Object gender_;
            private t1<Geo, Geo.Builder, GeoOrBuilder> geoBuilder_;
            private Geo geo_;
            private Object id_;
            private Object keywords_;
            private int yob_;

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 2;
                }
            }

            private p1<Data, Data.Builder, DataOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    List<Data> list = this.data_;
                    boolean z10 = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z10 = false;
                    }
                    this.dataBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return b.C;
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

            private t1<Geo, Geo.Builder, GeoOrBuilder> getGeoFieldBuilder() {
                if (this.geoBuilder_ == null) {
                    this.geoBuilder_ = new t1<>(getGeo(), getParentForChildren(), isClean());
                    this.geo_ = null;
                }
                return this.geoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                    getExtProtoFieldBuilder();
                }
            }

            public Builder addAllData(Iterable<? extends Data> iterable) {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.data_);
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

            public Builder addData(Data data) {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    data.getClass();
                    ensureDataIsMutable();
                    this.data_.add(data);
                    onChanged();
                } else {
                    p1Var.e(data);
                }
                return this;
            }

            public Data.Builder addDataBuilder() {
                return getDataFieldBuilder().c(Data.getDefaultInstance());
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

            public Builder clearBuyeruid() {
                this.buyeruid_ = User.getDefaultInstance().getBuyeruid();
                onChanged();
                return this;
            }

            public Builder clearConsent() {
                this.consent_ = User.getDefaultInstance().getConsent();
                onChanged();
                return this;
            }

            public Builder clearData() {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    this.data_ = Collections.emptyList();
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

            public Builder clearGender() {
                this.gender_ = User.getDefaultInstance().getGender();
                onChanged();
                return this;
            }

            public Builder clearGeo() {
                if (this.geoBuilder_ == null) {
                    this.geo_ = null;
                    onChanged();
                } else {
                    this.geo_ = null;
                    this.geoBuilder_ = null;
                }
                return this;
            }

            public Builder clearId() {
                this.id_ = User.getDefaultInstance().getId();
                onChanged();
                return this;
            }

            public Builder clearKeywords() {
                this.keywords_ = User.getDefaultInstance().getKeywords();
                onChanged();
                return this;
            }

            public Builder clearYob() {
                this.yob_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public String getBuyeruid() {
                Object obj = this.buyeruid_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.buyeruid_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public ByteString getBuyeruidBytes() {
                Object obj = this.buyeruid_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.buyeruid_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public String getConsent() {
                Object obj = this.consent_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.consent_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public ByteString getConsentBytes() {
                Object obj = this.consent_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.consent_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public Data getData(int i10) {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return this.data_.get(i10);
                }
                return p1Var.n(i10);
            }

            public Data.Builder getDataBuilder(int i10) {
                return getDataFieldBuilder().k(i10);
            }

            public List<Data.Builder> getDataBuilderList() {
                return getDataFieldBuilder().l();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public int getDataCount() {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return this.data_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public List<Data> getDataList() {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.data_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public DataOrBuilder getDataOrBuilder(int i10) {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return this.data_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public List<? extends DataOrBuilder> getDataOrBuilderList() {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.data_);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return b.C;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public int getExtProtoCount() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public List<Any> getExtProtoList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.extProto_);
                }
                return p1Var.p();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public e getExtProtoOrBuilder(int i10) {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var == null) {
                    return this.extProto_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public List<? extends e> getExtProtoOrBuilderList() {
                p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public String getGender() {
                Object obj = this.gender_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.gender_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public ByteString getGenderBytes() {
                Object obj = this.gender_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.gender_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public Geo getGeo() {
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var == null) {
                    Geo geo = this.geo_;
                    if (geo == null) {
                        return Geo.getDefaultInstance();
                    }
                    return geo;
                }
                return t1Var.e();
            }

            public Geo.Builder getGeoBuilder() {
                onChanged();
                return getGeoFieldBuilder().d();
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public GeoOrBuilder getGeoOrBuilder() {
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Geo geo = this.geo_;
                if (geo == null) {
                    return Geo.getDefaultInstance();
                }
                return geo;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public String getId() {
                Object obj = this.id_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public ByteString getIdBytes() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public String getKeywords() {
                Object obj = this.keywords_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.keywords_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public ByteString getKeywordsBytes() {
                Object obj = this.keywords_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.keywords_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public int getYob() {
                return this.yob_;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public boolean hasExt() {
                if (this.extBuilder_ == null && this.ext_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.adcom.Context.UserOrBuilder
            public boolean hasGeo() {
                if (this.geoBuilder_ == null && this.geo_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return b.D.d(User.class, Builder.class);
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

            public Builder mergeGeo(Geo geo) {
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var == null) {
                    Geo geo2 = this.geo_;
                    if (geo2 != null) {
                        this.geo_ = Geo.newBuilder(geo2).mergeFrom(geo).buildPartial();
                    } else {
                        this.geo_ = geo;
                    }
                    onChanged();
                } else {
                    t1Var.g(geo);
                }
                return this;
            }

            public Builder removeData(int i10) {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    this.data_.remove(i10);
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

            public Builder setBuyeruid(String str) {
                str.getClass();
                this.buyeruid_ = str;
                onChanged();
                return this;
            }

            public Builder setBuyeruidBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.buyeruid_ = byteString;
                onChanged();
                return this;
            }

            public Builder setConsent(String str) {
                str.getClass();
                this.consent_ = str;
                onChanged();
                return this;
            }

            public Builder setConsentBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.consent_ = byteString;
                onChanged();
                return this;
            }

            public Builder setData(int i10, Data data) {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    data.getClass();
                    ensureDataIsMutable();
                    this.data_.set(i10, data);
                    onChanged();
                } else {
                    p1Var.w(i10, data);
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

            public Builder setGender(String str) {
                str.getClass();
                this.gender_ = str;
                onChanged();
                return this;
            }

            public Builder setGenderBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.gender_ = byteString;
                onChanged();
                return this;
            }

            public Builder setGeo(Geo geo) {
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var == null) {
                    geo.getClass();
                    this.geo_ = geo;
                    onChanged();
                } else {
                    t1Var.i(geo);
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

            public Builder setKeywords(String str) {
                str.getClass();
                this.keywords_ = str;
                onChanged();
                return this;
            }

            public Builder setKeywordsBytes(ByteString byteString) {
                byteString.getClass();
                com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
                this.keywords_ = byteString;
                onChanged();
                return this;
            }

            public Builder setYob(int i10) {
                this.yob_ = i10;
                onChanged();
                return this;
            }

            private Builder() {
                this.id_ = "";
                this.buyeruid_ = "";
                this.gender_ = "";
                this.keywords_ = "";
                this.consent_ = "";
                this.data_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public User build() {
                User buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public User buildPartial() {
                User user = new User(this);
                user.id_ = this.id_;
                user.buyeruid_ = this.buyeruid_;
                user.yob_ = this.yob_;
                user.gender_ = this.gender_;
                user.keywords_ = this.keywords_;
                user.consent_ = this.consent_;
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var == null) {
                    user.geo_ = this.geo_;
                } else {
                    user.geo_ = t1Var.a();
                }
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var != null) {
                    user.data_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -2;
                    }
                    user.data_ = this.data_;
                }
                t1<Struct, Struct.Builder, x1> t1Var2 = this.extBuilder_;
                if (t1Var2 == null) {
                    user.ext_ = this.ext_;
                } else {
                    user.ext_ = t1Var2.a();
                }
                p1<Any, Any.Builder, e> p1Var2 = this.extProtoBuilder_;
                if (p1Var2 != null) {
                    user.extProto_ = p1Var2.f();
                } else {
                    if ((this.bitField0_ & 2) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -3;
                    }
                    user.extProto_ = this.extProto_;
                }
                onBuilt();
                return user;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public User mo4630getDefaultInstanceForType() {
                return User.getDefaultInstance();
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

            public Data.Builder addDataBuilder(int i10) {
                return getDataFieldBuilder().b(i10, Data.getDefaultInstance());
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
                this.buyeruid_ = "";
                this.yob_ = 0;
                this.gender_ = "";
                this.keywords_ = "";
                this.consent_ = "";
                if (this.geoBuilder_ == null) {
                    this.geo_ = null;
                } else {
                    this.geo_ = null;
                    this.geoBuilder_ = null;
                }
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    this.data_ = Collections.emptyList();
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

            public Builder setGeo(Geo.Builder builder) {
                t1<Geo, Geo.Builder, GeoOrBuilder> t1Var = this.geoBuilder_;
                if (t1Var == null) {
                    this.geo_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder addData(int i10, Data data) {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    data.getClass();
                    ensureDataIsMutable();
                    this.data_.add(i10, data);
                    onChanged();
                } else {
                    p1Var.d(i10, data);
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
                if (message instanceof User) {
                    return mergeFrom((User) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setData(int i10, Data.Builder builder) {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    this.data_.set(i10, builder.build());
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

            public Builder mergeFrom(User user) {
                if (user == User.getDefaultInstance()) {
                    return this;
                }
                if (!user.getId().isEmpty()) {
                    this.id_ = user.id_;
                    onChanged();
                }
                if (!user.getBuyeruid().isEmpty()) {
                    this.buyeruid_ = user.buyeruid_;
                    onChanged();
                }
                if (user.getYob() != 0) {
                    setYob(user.getYob());
                }
                if (!user.getGender().isEmpty()) {
                    this.gender_ = user.gender_;
                    onChanged();
                }
                if (!user.getKeywords().isEmpty()) {
                    this.keywords_ = user.keywords_;
                    onChanged();
                }
                if (!user.getConsent().isEmpty()) {
                    this.consent_ = user.consent_;
                    onChanged();
                }
                if (user.hasGeo()) {
                    mergeGeo(user.getGeo());
                }
                if (this.dataBuilder_ == null) {
                    if (!user.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = user.data_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDataIsMutable();
                            this.data_.addAll(user.data_);
                        }
                        onChanged();
                    }
                } else if (!user.data_.isEmpty()) {
                    if (!this.dataBuilder_.t()) {
                        this.dataBuilder_.a(user.data_);
                    } else {
                        this.dataBuilder_.h();
                        this.dataBuilder_ = null;
                        this.data_ = user.data_;
                        this.bitField0_ &= -2;
                        this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    }
                }
                if (user.hasExt()) {
                    mergeExt(user.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!user.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = user.extProto_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(user.extProto_);
                        }
                        onChanged();
                    }
                } else if (!user.extProto_.isEmpty()) {
                    if (!this.extProtoBuilder_.t()) {
                        this.extProtoBuilder_.a(user.extProto_);
                    } else {
                        this.extProtoBuilder_.h();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = user.extProto_;
                        this.bitField0_ &= -3;
                        this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) user).unknownFields);
                onChanged();
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.id_ = "";
                this.buyeruid_ = "";
                this.gender_ = "";
                this.keywords_ = "";
                this.consent_ = "";
                this.data_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addData(Data.Builder builder) {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    this.data_.add(builder.build());
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

            public Builder addData(int i10, Data.Builder builder) {
                p1<Data, Data.Builder, DataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    this.data_.add(i10, builder.build());
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
            public com.explorestack.protobuf.adcom.Context.User.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.User.access$32300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    com.explorestack.protobuf.adcom.Context$User r3 = (com.explorestack.protobuf.adcom.Context.User) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    com.explorestack.protobuf.adcom.Context$User r4 = (com.explorestack.protobuf.adcom.Context.User) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.User.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$User$Builder");
            }
        }

        public static Builder newBuilder(User user) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(user);
        }

        public static User parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private User(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static User parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (User) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static User parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public User mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static User parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private User() {
            this.memoizedIsInitialized = (byte) -1;
            this.id_ = "";
            this.buyeruid_ = "";
            this.gender_ = "";
            this.keywords_ = "";
            this.consent_ = "";
            this.data_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        public static User parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static User parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static User parseFrom(InputStream inputStream) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static User parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static User parseFrom(n nVar) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static User parseFrom(n nVar, y yVar) throws IOException {
            return (User) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private User(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            case 18:
                                this.buyeruid_ = nVar.J();
                                continue;
                            case 24:
                                this.yob_ = nVar.L();
                                continue;
                            case 34:
                                this.gender_ = nVar.J();
                                continue;
                            case 42:
                                this.keywords_ = nVar.J();
                                continue;
                            case 50:
                                this.consent_ = nVar.J();
                                continue;
                            case 58:
                                Geo geo = this.geo_;
                                Geo.Builder builder = geo != null ? geo.toBuilder() : null;
                                Geo geo2 = (Geo) nVar.A(Geo.parser(), yVar);
                                this.geo_ = geo2;
                                if (builder != null) {
                                    builder.mergeFrom(geo2);
                                    this.geo_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 66:
                                boolean z12 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z12) {
                                    this.data_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.data_.add(nVar.A(Data.parser(), yVar));
                                continue;
                            case 74:
                                boolean z13 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z13) {
                                    this.extProto_ = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.extProto_.add(nVar.A(Any.parser(), yVar));
                                continue;
                            case 82:
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
                        this.data_ = Collections.unmodifiableList(this.data_);
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
                this.data_ = Collections.unmodifiableList(this.data_);
            }
            if ((z11 ? 1 : 0) & true) {
                this.extProto_ = Collections.unmodifiableList(this.extProto_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public interface UserOrBuilder extends MessageOrBuilder {
        String getBuyeruid();

        ByteString getBuyeruidBytes();

        String getConsent();

        ByteString getConsentBytes();

        Data getData(int i10);

        int getDataCount();

        List<Data> getDataList();

        DataOrBuilder getDataOrBuilder(int i10);

        List<? extends DataOrBuilder> getDataOrBuilderList();

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

        String getGender();

        ByteString getGenderBytes();

        Geo getGeo();

        GeoOrBuilder getGeoOrBuilder();

        String getId();

        ByteString getIdBytes();

        String getKeywords();

        ByteString getKeywordsBytes();

        int getYob();

        boolean hasExt();

        boolean hasGeo();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static Context getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return b.f14218a;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Context parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Context) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Context parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Context> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Context)) {
            return super.equals(obj);
        }
        Context context = (Context) obj;
        if (hasApp() != context.hasApp()) {
            return false;
        }
        if ((hasApp() && !getApp().equals(context.getApp())) || hasDevice() != context.hasDevice()) {
            return false;
        }
        if ((hasDevice() && !getDevice().equals(context.getDevice())) || hasRegs() != context.hasRegs()) {
            return false;
        }
        if ((hasRegs() && !getRegs().equals(context.getRegs())) || hasRestrictions() != context.hasRestrictions()) {
            return false;
        }
        if ((hasRestrictions() && !getRestrictions().equals(context.getRestrictions())) || hasUser() != context.hasUser()) {
            return false;
        }
        if ((hasUser() && !getUser().equals(context.getUser())) || hasExt() != context.hasExt()) {
            return false;
        }
        if ((!hasExt() || getExt().equals(context.getExt())) && getExtProtoList().equals(context.getExtProtoList()) && this.unknownFields.equals(context.unknownFields)) {
            return true;
        }
        return false;
    }

    public App getApp() {
        App app = this.app_;
        if (app == null) {
            return App.getDefaultInstance();
        }
        return app;
    }

    public AppOrBuilder getAppOrBuilder() {
        return getApp();
    }

    public Device getDevice() {
        Device device = this.device_;
        if (device == null) {
            return Device.getDefaultInstance();
        }
        return device;
    }

    public DeviceOrBuilder getDeviceOrBuilder() {
        return getDevice();
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
    public j1<Context> getParserForType() {
        return PARSER;
    }

    public Regs getRegs() {
        Regs regs = this.regs_;
        if (regs == null) {
            return Regs.getDefaultInstance();
        }
        return regs;
    }

    public RegsOrBuilder getRegsOrBuilder() {
        return getRegs();
    }

    public Restrictions getRestrictions() {
        Restrictions restrictions = this.restrictions_;
        if (restrictions == null) {
            return Restrictions.getDefaultInstance();
        }
        return restrictions;
    }

    public RestrictionsOrBuilder getRestrictionsOrBuilder() {
        return getRestrictions();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (this.app_ != null) {
            i10 = CodedOutputStream.G(1, getApp());
        } else {
            i10 = 0;
        }
        if (this.device_ != null) {
            i10 += CodedOutputStream.G(2, getDevice());
        }
        if (this.regs_ != null) {
            i10 += CodedOutputStream.G(3, getRegs());
        }
        if (this.restrictions_ != null) {
            i10 += CodedOutputStream.G(4, getRestrictions());
        }
        if (this.user_ != null) {
            i10 += CodedOutputStream.G(5, getUser());
        }
        for (int i12 = 0; i12 < this.extProto_.size(); i12++) {
            i10 += CodedOutputStream.G(6, this.extProto_.get(i12));
        }
        if (this.ext_ != null) {
            i10 += CodedOutputStream.G(7, getExt());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    public User getUser() {
        User user = this.user_;
        if (user == null) {
            return User.getDefaultInstance();
        }
        return user;
    }

    public UserOrBuilder getUserOrBuilder() {
        return getUser();
    }

    public boolean hasApp() {
        if (this.app_ != null) {
            return true;
        }
        return false;
    }

    public boolean hasDevice() {
        if (this.device_ != null) {
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

    public boolean hasRegs() {
        if (this.regs_ != null) {
            return true;
        }
        return false;
    }

    public boolean hasRestrictions() {
        if (this.restrictions_ != null) {
            return true;
        }
        return false;
    }

    public boolean hasUser() {
        if (this.user_ != null) {
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
        if (hasApp()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getApp().hashCode();
        }
        if (hasDevice()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getDevice().hashCode();
        }
        if (hasRegs()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getRegs().hashCode();
        }
        if (hasRestrictions()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getRestrictions().hashCode();
        }
        if (hasUser()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getUser().hashCode();
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
        return b.f14220b.d(Context.class, Builder.class);
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
        return new Context();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.app_ != null) {
            codedOutputStream.L0(1, getApp());
        }
        if (this.device_ != null) {
            codedOutputStream.L0(2, getDevice());
        }
        if (this.regs_ != null) {
            codedOutputStream.L0(3, getRegs());
        }
        if (this.restrictions_ != null) {
            codedOutputStream.L0(4, getRestrictions());
        }
        if (this.user_ != null) {
            codedOutputStream.L0(5, getUser());
        }
        for (int i10 = 0; i10 < this.extProto_.size(); i10++) {
            codedOutputStream.L0(6, this.extProto_.get(i10));
        }
        if (this.ext_ != null) {
            codedOutputStream.L0(7, getExt());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements c {
        private t1<App, App.Builder, AppOrBuilder> appBuilder_;
        private App app_;
        private int bitField0_;
        private t1<Device, Device.Builder, DeviceOrBuilder> deviceBuilder_;
        private Device device_;
        private t1<Struct, Struct.Builder, x1> extBuilder_;
        private p1<Any, Any.Builder, e> extProtoBuilder_;
        private List<Any> extProto_;
        private Struct ext_;
        private t1<Regs, Regs.Builder, RegsOrBuilder> regsBuilder_;
        private Regs regs_;
        private t1<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> restrictionsBuilder_;
        private Restrictions restrictions_;
        private t1<User, User.Builder, UserOrBuilder> userBuilder_;
        private User user_;

        private void ensureExtProtoIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.extProto_ = new ArrayList(this.extProto_);
                this.bitField0_ |= 1;
            }
        }

        private t1<App, App.Builder, AppOrBuilder> getAppFieldBuilder() {
            if (this.appBuilder_ == null) {
                this.appBuilder_ = new t1<>(getApp(), getParentForChildren(), isClean());
                this.app_ = null;
            }
            return this.appBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return b.f14218a;
        }

        private t1<Device, Device.Builder, DeviceOrBuilder> getDeviceFieldBuilder() {
            if (this.deviceBuilder_ == null) {
                this.deviceBuilder_ = new t1<>(getDevice(), getParentForChildren(), isClean());
                this.device_ = null;
            }
            return this.deviceBuilder_;
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

        private t1<Regs, Regs.Builder, RegsOrBuilder> getRegsFieldBuilder() {
            if (this.regsBuilder_ == null) {
                this.regsBuilder_ = new t1<>(getRegs(), getParentForChildren(), isClean());
                this.regs_ = null;
            }
            return this.regsBuilder_;
        }

        private t1<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> getRestrictionsFieldBuilder() {
            if (this.restrictionsBuilder_ == null) {
                this.restrictionsBuilder_ = new t1<>(getRestrictions(), getParentForChildren(), isClean());
                this.restrictions_ = null;
            }
            return this.restrictionsBuilder_;
        }

        private t1<User, User.Builder, UserOrBuilder> getUserFieldBuilder() {
            if (this.userBuilder_ == null) {
                this.userBuilder_ = new t1<>(getUser(), getParentForChildren(), isClean());
                this.user_ = null;
            }
            return this.userBuilder_;
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

        public Builder clearApp() {
            if (this.appBuilder_ == null) {
                this.app_ = null;
                onChanged();
            } else {
                this.app_ = null;
                this.appBuilder_ = null;
            }
            return this;
        }

        public Builder clearDevice() {
            if (this.deviceBuilder_ == null) {
                this.device_ = null;
                onChanged();
            } else {
                this.device_ = null;
                this.deviceBuilder_ = null;
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

        public Builder clearRegs() {
            if (this.regsBuilder_ == null) {
                this.regs_ = null;
                onChanged();
            } else {
                this.regs_ = null;
                this.regsBuilder_ = null;
            }
            return this;
        }

        public Builder clearRestrictions() {
            if (this.restrictionsBuilder_ == null) {
                this.restrictions_ = null;
                onChanged();
            } else {
                this.restrictions_ = null;
                this.restrictionsBuilder_ = null;
            }
            return this;
        }

        public Builder clearUser() {
            if (this.userBuilder_ == null) {
                this.user_ = null;
                onChanged();
            } else {
                this.user_ = null;
                this.userBuilder_ = null;
            }
            return this;
        }

        public App getApp() {
            t1<App, App.Builder, AppOrBuilder> t1Var = this.appBuilder_;
            if (t1Var == null) {
                App app = this.app_;
                if (app == null) {
                    return App.getDefaultInstance();
                }
                return app;
            }
            return t1Var.e();
        }

        public App.Builder getAppBuilder() {
            onChanged();
            return getAppFieldBuilder().d();
        }

        public AppOrBuilder getAppOrBuilder() {
            t1<App, App.Builder, AppOrBuilder> t1Var = this.appBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            App app = this.app_;
            if (app == null) {
                return App.getDefaultInstance();
            }
            return app;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return b.f14218a;
        }

        public Device getDevice() {
            t1<Device, Device.Builder, DeviceOrBuilder> t1Var = this.deviceBuilder_;
            if (t1Var == null) {
                Device device = this.device_;
                if (device == null) {
                    return Device.getDefaultInstance();
                }
                return device;
            }
            return t1Var.e();
        }

        public Device.Builder getDeviceBuilder() {
            onChanged();
            return getDeviceFieldBuilder().d();
        }

        public DeviceOrBuilder getDeviceOrBuilder() {
            t1<Device, Device.Builder, DeviceOrBuilder> t1Var = this.deviceBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Device device = this.device_;
            if (device == null) {
                return Device.getDefaultInstance();
            }
            return device;
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

        public Regs getRegs() {
            t1<Regs, Regs.Builder, RegsOrBuilder> t1Var = this.regsBuilder_;
            if (t1Var == null) {
                Regs regs = this.regs_;
                if (regs == null) {
                    return Regs.getDefaultInstance();
                }
                return regs;
            }
            return t1Var.e();
        }

        public Regs.Builder getRegsBuilder() {
            onChanged();
            return getRegsFieldBuilder().d();
        }

        public RegsOrBuilder getRegsOrBuilder() {
            t1<Regs, Regs.Builder, RegsOrBuilder> t1Var = this.regsBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Regs regs = this.regs_;
            if (regs == null) {
                return Regs.getDefaultInstance();
            }
            return regs;
        }

        public Restrictions getRestrictions() {
            t1<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> t1Var = this.restrictionsBuilder_;
            if (t1Var == null) {
                Restrictions restrictions = this.restrictions_;
                if (restrictions == null) {
                    return Restrictions.getDefaultInstance();
                }
                return restrictions;
            }
            return t1Var.e();
        }

        public Restrictions.Builder getRestrictionsBuilder() {
            onChanged();
            return getRestrictionsFieldBuilder().d();
        }

        public RestrictionsOrBuilder getRestrictionsOrBuilder() {
            t1<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> t1Var = this.restrictionsBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Restrictions restrictions = this.restrictions_;
            if (restrictions == null) {
                return Restrictions.getDefaultInstance();
            }
            return restrictions;
        }

        public User getUser() {
            t1<User, User.Builder, UserOrBuilder> t1Var = this.userBuilder_;
            if (t1Var == null) {
                User user = this.user_;
                if (user == null) {
                    return User.getDefaultInstance();
                }
                return user;
            }
            return t1Var.e();
        }

        public User.Builder getUserBuilder() {
            onChanged();
            return getUserFieldBuilder().d();
        }

        public UserOrBuilder getUserOrBuilder() {
            t1<User, User.Builder, UserOrBuilder> t1Var = this.userBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            User user = this.user_;
            if (user == null) {
                return User.getDefaultInstance();
            }
            return user;
        }

        public boolean hasApp() {
            if (this.appBuilder_ == null && this.app_ == null) {
                return false;
            }
            return true;
        }

        public boolean hasDevice() {
            if (this.deviceBuilder_ == null && this.device_ == null) {
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

        public boolean hasRegs() {
            if (this.regsBuilder_ == null && this.regs_ == null) {
                return false;
            }
            return true;
        }

        public boolean hasRestrictions() {
            if (this.restrictionsBuilder_ == null && this.restrictions_ == null) {
                return false;
            }
            return true;
        }

        public boolean hasUser() {
            if (this.userBuilder_ == null && this.user_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.f14220b.d(Context.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeApp(App app) {
            t1<App, App.Builder, AppOrBuilder> t1Var = this.appBuilder_;
            if (t1Var == null) {
                App app2 = this.app_;
                if (app2 != null) {
                    this.app_ = App.newBuilder(app2).mergeFrom(app).buildPartial();
                } else {
                    this.app_ = app;
                }
                onChanged();
            } else {
                t1Var.g(app);
            }
            return this;
        }

        public Builder mergeDevice(Device device) {
            t1<Device, Device.Builder, DeviceOrBuilder> t1Var = this.deviceBuilder_;
            if (t1Var == null) {
                Device device2 = this.device_;
                if (device2 != null) {
                    this.device_ = Device.newBuilder(device2).mergeFrom(device).buildPartial();
                } else {
                    this.device_ = device;
                }
                onChanged();
            } else {
                t1Var.g(device);
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

        public Builder mergeRegs(Regs regs) {
            t1<Regs, Regs.Builder, RegsOrBuilder> t1Var = this.regsBuilder_;
            if (t1Var == null) {
                Regs regs2 = this.regs_;
                if (regs2 != null) {
                    this.regs_ = Regs.newBuilder(regs2).mergeFrom(regs).buildPartial();
                } else {
                    this.regs_ = regs;
                }
                onChanged();
            } else {
                t1Var.g(regs);
            }
            return this;
        }

        public Builder mergeRestrictions(Restrictions restrictions) {
            t1<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> t1Var = this.restrictionsBuilder_;
            if (t1Var == null) {
                Restrictions restrictions2 = this.restrictions_;
                if (restrictions2 != null) {
                    this.restrictions_ = Restrictions.newBuilder(restrictions2).mergeFrom(restrictions).buildPartial();
                } else {
                    this.restrictions_ = restrictions;
                }
                onChanged();
            } else {
                t1Var.g(restrictions);
            }
            return this;
        }

        public Builder mergeUser(User user) {
            t1<User, User.Builder, UserOrBuilder> t1Var = this.userBuilder_;
            if (t1Var == null) {
                User user2 = this.user_;
                if (user2 != null) {
                    this.user_ = User.newBuilder(user2).mergeFrom(user).buildPartial();
                } else {
                    this.user_ = user;
                }
                onChanged();
            } else {
                t1Var.g(user);
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

        public Builder setApp(App app) {
            t1<App, App.Builder, AppOrBuilder> t1Var = this.appBuilder_;
            if (t1Var == null) {
                app.getClass();
                this.app_ = app;
                onChanged();
            } else {
                t1Var.i(app);
            }
            return this;
        }

        public Builder setDevice(Device device) {
            t1<Device, Device.Builder, DeviceOrBuilder> t1Var = this.deviceBuilder_;
            if (t1Var == null) {
                device.getClass();
                this.device_ = device;
                onChanged();
            } else {
                t1Var.i(device);
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

        public Builder setRegs(Regs regs) {
            t1<Regs, Regs.Builder, RegsOrBuilder> t1Var = this.regsBuilder_;
            if (t1Var == null) {
                regs.getClass();
                this.regs_ = regs;
                onChanged();
            } else {
                t1Var.i(regs);
            }
            return this;
        }

        public Builder setRestrictions(Restrictions restrictions) {
            t1<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> t1Var = this.restrictionsBuilder_;
            if (t1Var == null) {
                restrictions.getClass();
                this.restrictions_ = restrictions;
                onChanged();
            } else {
                t1Var.i(restrictions);
            }
            return this;
        }

        public Builder setUser(User user) {
            t1<User, User.Builder, UserOrBuilder> t1Var = this.userBuilder_;
            if (t1Var == null) {
                user.getClass();
                this.user_ = user;
                onChanged();
            } else {
                t1Var.i(user);
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
        public Context build() {
            Context buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Context buildPartial() {
            Context context = new Context(this);
            t1<App, App.Builder, AppOrBuilder> t1Var = this.appBuilder_;
            if (t1Var == null) {
                context.app_ = this.app_;
            } else {
                context.app_ = t1Var.a();
            }
            t1<Device, Device.Builder, DeviceOrBuilder> t1Var2 = this.deviceBuilder_;
            if (t1Var2 == null) {
                context.device_ = this.device_;
            } else {
                context.device_ = t1Var2.a();
            }
            t1<Regs, Regs.Builder, RegsOrBuilder> t1Var3 = this.regsBuilder_;
            if (t1Var3 == null) {
                context.regs_ = this.regs_;
            } else {
                context.regs_ = t1Var3.a();
            }
            t1<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> t1Var4 = this.restrictionsBuilder_;
            if (t1Var4 == null) {
                context.restrictions_ = this.restrictions_;
            } else {
                context.restrictions_ = t1Var4.a();
            }
            t1<User, User.Builder, UserOrBuilder> t1Var5 = this.userBuilder_;
            if (t1Var5 == null) {
                context.user_ = this.user_;
            } else {
                context.user_ = t1Var5.a();
            }
            t1<Struct, Struct.Builder, x1> t1Var6 = this.extBuilder_;
            if (t1Var6 == null) {
                context.ext_ = this.ext_;
            } else {
                context.ext_ = t1Var6.a();
            }
            p1<Any, Any.Builder, e> p1Var = this.extProtoBuilder_;
            if (p1Var != null) {
                context.extProto_ = p1Var.f();
            } else {
                if ((this.bitField0_ & 1) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    this.bitField0_ &= -2;
                }
                context.extProto_ = this.extProto_;
            }
            onBuilt();
            return context;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Context mo4630getDefaultInstanceForType() {
            return Context.getDefaultInstance();
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
            if (this.appBuilder_ == null) {
                this.app_ = null;
            } else {
                this.app_ = null;
                this.appBuilder_ = null;
            }
            if (this.deviceBuilder_ == null) {
                this.device_ = null;
            } else {
                this.device_ = null;
                this.deviceBuilder_ = null;
            }
            if (this.regsBuilder_ == null) {
                this.regs_ = null;
            } else {
                this.regs_ = null;
                this.regsBuilder_ = null;
            }
            if (this.restrictionsBuilder_ == null) {
                this.restrictions_ = null;
            } else {
                this.restrictions_ = null;
                this.restrictionsBuilder_ = null;
            }
            if (this.userBuilder_ == null) {
                this.user_ = null;
            } else {
                this.user_ = null;
                this.userBuilder_ = null;
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

        public Builder setApp(App.Builder builder) {
            t1<App, App.Builder, AppOrBuilder> t1Var = this.appBuilder_;
            if (t1Var == null) {
                this.app_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setDevice(Device.Builder builder) {
            t1<Device, Device.Builder, DeviceOrBuilder> t1Var = this.deviceBuilder_;
            if (t1Var == null) {
                this.device_ = builder.build();
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

        public Builder setRegs(Regs.Builder builder) {
            t1<Regs, Regs.Builder, RegsOrBuilder> t1Var = this.regsBuilder_;
            if (t1Var == null) {
                this.regs_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setRestrictions(Restrictions.Builder builder) {
            t1<Restrictions, Restrictions.Builder, RestrictionsOrBuilder> t1Var = this.restrictionsBuilder_;
            if (t1Var == null) {
                this.restrictions_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setUser(User.Builder builder) {
            t1<User, User.Builder, UserOrBuilder> t1Var = this.userBuilder_;
            if (t1Var == null) {
                this.user_ = builder.build();
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
            if (message instanceof Context) {
                return mergeFrom((Context) message);
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

        public Builder mergeFrom(Context context) {
            if (context == Context.getDefaultInstance()) {
                return this;
            }
            if (context.hasApp()) {
                mergeApp(context.getApp());
            }
            if (context.hasDevice()) {
                mergeDevice(context.getDevice());
            }
            if (context.hasRegs()) {
                mergeRegs(context.getRegs());
            }
            if (context.hasRestrictions()) {
                mergeRestrictions(context.getRestrictions());
            }
            if (context.hasUser()) {
                mergeUser(context.getUser());
            }
            if (context.hasExt()) {
                mergeExt(context.getExt());
            }
            if (this.extProtoBuilder_ == null) {
                if (!context.extProto_.isEmpty()) {
                    if (this.extProto_.isEmpty()) {
                        this.extProto_ = context.extProto_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureExtProtoIsMutable();
                        this.extProto_.addAll(context.extProto_);
                    }
                    onChanged();
                }
            } else if (!context.extProto_.isEmpty()) {
                if (!this.extProtoBuilder_.t()) {
                    this.extProtoBuilder_.a(context.extProto_);
                } else {
                    this.extProtoBuilder_.h();
                    this.extProtoBuilder_ = null;
                    this.extProto_ = context.extProto_;
                    this.bitField0_ &= -2;
                    this.extProtoBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getExtProtoFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) context).unknownFields);
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
        public com.explorestack.protobuf.adcom.Context.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.adcom.Context.access$34300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.explorestack.protobuf.adcom.Context r3 = (com.explorestack.protobuf.adcom.Context) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.explorestack.protobuf.adcom.Context r4 = (com.explorestack.protobuf.adcom.Context) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Context.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.adcom.Context$Builder");
        }
    }

    public static Builder newBuilder(Context context) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(context);
    }

    public static Context parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private Context(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Context parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Context) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Context parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Context mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Context parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private Context() {
        this.memoizedIsInitialized = (byte) -1;
        this.extProto_ = Collections.emptyList();
    }

    public static Context parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static Context parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static Context parseFrom(InputStream inputStream) throws IOException {
        return (Context) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Context(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            App app = this.app_;
                            App.Builder builder = app != null ? app.toBuilder() : null;
                            App app2 = (App) nVar.A(App.parser(), yVar);
                            this.app_ = app2;
                            if (builder != null) {
                                builder.mergeFrom(app2);
                                this.app_ = builder.buildPartial();
                            }
                        } else if (K == 18) {
                            Device device = this.device_;
                            Device.Builder builder2 = device != null ? device.toBuilder() : null;
                            Device device2 = (Device) nVar.A(Device.parser(), yVar);
                            this.device_ = device2;
                            if (builder2 != null) {
                                builder2.mergeFrom(device2);
                                this.device_ = builder2.buildPartial();
                            }
                        } else if (K == 26) {
                            Regs regs = this.regs_;
                            Regs.Builder builder3 = regs != null ? regs.toBuilder() : null;
                            Regs regs2 = (Regs) nVar.A(Regs.parser(), yVar);
                            this.regs_ = regs2;
                            if (builder3 != null) {
                                builder3.mergeFrom(regs2);
                                this.regs_ = builder3.buildPartial();
                            }
                        } else if (K == 34) {
                            Restrictions restrictions = this.restrictions_;
                            Restrictions.Builder builder4 = restrictions != null ? restrictions.toBuilder() : null;
                            Restrictions restrictions2 = (Restrictions) nVar.A(Restrictions.parser(), yVar);
                            this.restrictions_ = restrictions2;
                            if (builder4 != null) {
                                builder4.mergeFrom(restrictions2);
                                this.restrictions_ = builder4.buildPartial();
                            }
                        } else if (K == 42) {
                            User user = this.user_;
                            User.Builder builder5 = user != null ? user.toBuilder() : null;
                            User user2 = (User) nVar.A(User.parser(), yVar);
                            this.user_ = user2;
                            if (builder5 != null) {
                                builder5.mergeFrom(user2);
                                this.user_ = builder5.buildPartial();
                            }
                        } else if (K == 50) {
                            if (objArr == null) {
                                this.extProto_ = new ArrayList();
                                objArr = 1;
                            }
                            this.extProto_.add(nVar.A(Any.parser(), yVar));
                        } else if (K != 58) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            Struct struct = this.ext_;
                            Struct.Builder builder6 = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                            this.ext_ = struct2;
                            if (builder6 != null) {
                                builder6.mergeFrom(struct2);
                                this.ext_ = builder6.buildPartial();
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

    public static Context parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Context) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Context parseFrom(n nVar) throws IOException {
        return (Context) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static Context parseFrom(n nVar, y yVar) throws IOException {
        return (Context) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
