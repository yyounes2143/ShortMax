package com.ss.ttvideoengine;

import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.HLSChooseStreamInterface;
import com.ss.ttvideoengine.TTVideoEngineMasterPlaylist;
import java.util.LinkedList;
/* loaded from: classes6.dex */
public abstract class TTVideoEnginePlayHLSChooseStreamCallback {
    public static TTVideoEngineMasterPlaylist convert(HLSChooseStreamInterface.Variant[] variantArr) {
        HLSChooseStreamInterface.Rendition[] renditionArr;
        if (variantArr != null && variantArr.length != 0) {
            TTVideoEngineMasterPlaylist tTVideoEngineMasterPlaylist = new TTVideoEngineMasterPlaylist();
            int length = variantArr.length;
            tTVideoEngineMasterPlaylist.variantStreams = new TTVideoEngineMasterPlaylist.TTVideoEngineVariantStream[length];
            LinkedList linkedList = new LinkedList();
            for (int i10 = 0; i10 < length; i10++) {
                HLSChooseStreamInterface.Variant variant = variantArr[i10];
                TTVideoEngineMasterPlaylist.TTVideoEngineVariantStream tTVideoEngineVariantStream = new TTVideoEngineMasterPlaylist.TTVideoEngineVariantStream();
                tTVideoEngineVariantStream.audioGroupId = variant.mAudioGroup;
                tTVideoEngineVariantStream.videoGroupId = variant.mVideoGroup;
                tTVideoEngineVariantStream.bandwidth = variant.mBandWidth;
                tTVideoEngineVariantStream.averageBandwidth = variant.mAverageBandwidth;
                tTVideoEngineVariantStream.codecs = variant.mCodecs;
                tTVideoEngineVariantStream.closedCaptionsGroupId = variant.mClosedCaptions;
                tTVideoEngineVariantStream.frameRate = variant.mFrameRate;
                tTVideoEngineVariantStream.hdcpLevel = variant.mHDCPLevel;
                tTVideoEngineVariantStream.resolution = variant.mWidth + TextureRenderKeys.KEY_IS_X + variant.mHeight;
                tTVideoEngineVariantStream.subtitleGroupId = variant.mSubtitlesGroup;
                tTVideoEngineMasterPlaylist.variantStreams[i10] = tTVideoEngineVariantStream;
                HLSChooseStreamInterface.Playlist[] playlistArr = variant.mPlaylists;
                if (playlistArr != null && playlistArr.length != 0) {
                    int length2 = playlistArr.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        HLSChooseStreamInterface.Playlist playlist = variant.mPlaylists[i11];
                        if (playlist != null && (renditionArr = playlist.mRenditions) != null && renditionArr.length != 0) {
                            int length3 = renditionArr.length;
                            for (int i12 = 0; i12 < length3; i12++) {
                                HLSChooseStreamInterface.Rendition rendition = playlist.mRenditions[i12];
                                TTVideoEngineMasterPlaylist.TTVideoEngineRendition tTVideoEngineRendition = new TTVideoEngineMasterPlaylist.TTVideoEngineRendition();
                                String str = rendition.mLanguage;
                                tTVideoEngineRendition.assocLanguage = str;
                                tTVideoEngineRendition.groupId = rendition.mGroupId;
                                tTVideoEngineRendition.language = str;
                                tTVideoEngineRendition.name = rendition.mName;
                                tTVideoEngineRendition.infoId = rendition.mInfoId;
                                tTVideoEngineRendition.variantIndex = i10;
                                tTVideoEngineRendition.trackType = rendition.mMediaTrackType;
                                linkedList.add(tTVideoEngineRendition);
                            }
                        }
                    }
                }
            }
            if (!linkedList.isEmpty()) {
                tTVideoEngineMasterPlaylist.renditions = (TTVideoEngineMasterPlaylist.TTVideoEngineRendition[]) linkedList.toArray(new TTVideoEngineMasterPlaylist.TTVideoEngineRendition[linkedList.size()]);
            }
            return tTVideoEngineMasterPlaylist;
        }
        return null;
    }

    public abstract int chooseRenditionInfoId(int i10);

    public abstract int chooseVariantBandWidth();

    public abstract void streamInfos(TTVideoEngineMasterPlaylist tTVideoEngineMasterPlaylist);
}
