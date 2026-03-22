package com.mbridge.msdk.dycreator.wrapper;

import com.mbridge.msdk.dycreator.listener.DyCountDownListenerWrapper;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.util.List;
/* loaded from: classes5.dex */
public class DyOption {

    /* renamed from: a  reason: collision with root package name */
    private List<String> f26611a;

    /* renamed from: b  reason: collision with root package name */
    private File f26612b;

    /* renamed from: c  reason: collision with root package name */
    private CampaignEx f26613c;

    /* renamed from: d  reason: collision with root package name */
    private DyAdType f26614d;

    /* renamed from: e  reason: collision with root package name */
    private String f26615e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f26616f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f26617g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f26618h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f26619i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f26620j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f26621k;

    /* renamed from: l  reason: collision with root package name */
    private int f26622l;

    /* renamed from: m  reason: collision with root package name */
    private int f26623m;

    /* renamed from: n  reason: collision with root package name */
    private int f26624n;

    /* renamed from: o  reason: collision with root package name */
    private int f26625o;

    /* renamed from: p  reason: collision with root package name */
    private int f26626p;

    /* renamed from: q  reason: collision with root package name */
    private int f26627q;

    /* renamed from: r  reason: collision with root package name */
    private DyCountDownListenerWrapper f26628r;

    /* loaded from: classes5.dex */
    public static class Builder implements IViewOptionBuilder {

        /* renamed from: a  reason: collision with root package name */
        private List<String> f26629a;

        /* renamed from: b  reason: collision with root package name */
        private File f26630b;

        /* renamed from: c  reason: collision with root package name */
        private CampaignEx f26631c;

        /* renamed from: d  reason: collision with root package name */
        private DyAdType f26632d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f26633e;

        /* renamed from: f  reason: collision with root package name */
        private String f26634f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f26635g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f26636h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f26637i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f26638j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f26639k;

        /* renamed from: l  reason: collision with root package name */
        private int f26640l;

        /* renamed from: m  reason: collision with root package name */
        private int f26641m;

        /* renamed from: n  reason: collision with root package name */
        private int f26642n;

        /* renamed from: o  reason: collision with root package name */
        private int f26643o;

        /* renamed from: p  reason: collision with root package name */
        private int f26644p;

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder adChoiceLink(String str) {
            this.f26634f = str;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public DyOption build() {
            return new DyOption(this);
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder campaignEx(CampaignEx campaignEx) {
            this.f26631c = campaignEx;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder canSkip(boolean z10) {
            this.f26633e = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder countDownTime(int i10) {
            this.f26643o = i10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder dyAdType(DyAdType dyAdType) {
            this.f26632d = dyAdType;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder file(File file) {
            this.f26630b = file;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder fileDirs(List<String> list) {
            this.f26629a = list;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isApkInfoVisible(boolean z10) {
            this.f26638j = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isClickButtonVisible(boolean z10) {
            this.f26636h = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isLogoVisible(boolean z10) {
            this.f26639k = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isScreenClick(boolean z10) {
            this.f26635g = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isShakeVisible(boolean z10) {
            this.f26637i = z10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder orientation(int i10) {
            this.f26642n = i10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder shakeStrenght(int i10) {
            this.f26640l = i10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder shakeTime(int i10) {
            this.f26641m = i10;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder templateType(int i10) {
            this.f26644p = i10;
            return this;
        }
    }

    /* loaded from: classes5.dex */
    public interface IViewOptionBuilder {
        IViewOptionBuilder adChoiceLink(String str);

        DyOption build();

        IViewOptionBuilder campaignEx(CampaignEx campaignEx);

        IViewOptionBuilder canSkip(boolean z10);

        IViewOptionBuilder countDownTime(int i10);

        IViewOptionBuilder dyAdType(DyAdType dyAdType);

        IViewOptionBuilder file(File file);

        IViewOptionBuilder fileDirs(List<String> list);

        IViewOptionBuilder isApkInfoVisible(boolean z10);

        IViewOptionBuilder isClickButtonVisible(boolean z10);

        IViewOptionBuilder isLogoVisible(boolean z10);

        IViewOptionBuilder isScreenClick(boolean z10);

        IViewOptionBuilder isShakeVisible(boolean z10);

        IViewOptionBuilder orientation(int i10);

        IViewOptionBuilder shakeStrenght(int i10);

        IViewOptionBuilder shakeTime(int i10);

        IViewOptionBuilder templateType(int i10);
    }

    public DyOption(Builder builder) {
        this.f26611a = builder.f26629a;
        this.f26612b = builder.f26630b;
        this.f26613c = builder.f26631c;
        this.f26614d = builder.f26632d;
        this.f26617g = builder.f26633e;
        this.f26615e = builder.f26634f;
        this.f26616f = builder.f26635g;
        this.f26618h = builder.f26636h;
        this.f26620j = builder.f26638j;
        this.f26619i = builder.f26637i;
        this.f26621k = builder.f26639k;
        this.f26622l = builder.f26640l;
        this.f26623m = builder.f26641m;
        this.f26624n = builder.f26642n;
        this.f26625o = builder.f26643o;
        this.f26627q = builder.f26644p;
    }

    public String getAdChoiceLink() {
        return this.f26615e;
    }

    public CampaignEx getCampaignEx() {
        return this.f26613c;
    }

    public int getCountDownTime() {
        return this.f26625o;
    }

    public int getCurrentCountDown() {
        return this.f26626p;
    }

    public DyAdType getDyAdType() {
        return this.f26614d;
    }

    public File getFile() {
        return this.f26612b;
    }

    public List<String> getFileDirs() {
        return this.f26611a;
    }

    public int getOrientation() {
        return this.f26624n;
    }

    public int getShakeStrenght() {
        return this.f26622l;
    }

    public int getShakeTime() {
        return this.f26623m;
    }

    public int getTemplateType() {
        return this.f26627q;
    }

    public boolean isApkInfoVisible() {
        return this.f26620j;
    }

    public boolean isCanSkip() {
        return this.f26617g;
    }

    public boolean isClickButtonVisible() {
        return this.f26618h;
    }

    public boolean isClickScreen() {
        return this.f26616f;
    }

    public boolean isLogoVisible() {
        return this.f26621k;
    }

    public boolean isShakeVisible() {
        return this.f26619i;
    }

    public void setDyCountDownListener(int i10) {
        DyCountDownListenerWrapper dyCountDownListenerWrapper = this.f26628r;
        if (dyCountDownListenerWrapper != null) {
            dyCountDownListenerWrapper.getCountDownValue(i10);
        }
        this.f26626p = i10;
    }

    public void setDyCountDownListenerWrapper(DyCountDownListenerWrapper dyCountDownListenerWrapper) {
        this.f26628r = dyCountDownListenerWrapper;
    }
}
